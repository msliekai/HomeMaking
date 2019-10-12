package com.hm.tools;

import java.io.IOException;
import java.util.*;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import com.hm.entity.MyJsoup;
import org.htmlcleaner.CleanerProperties;
import org.htmlcleaner.DomSerializer;
import org.htmlcleaner.HtmlCleaner;
import org.htmlcleaner.TagNode;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class JsoupHelper {


    public static Object fecthNode(String url, String xpath) throws Exception {
        String html = null;
        try {
            Connection connect = Jsoup.connect(url);
            html = connect.get().body().html();
            System.out.println(html);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }

        HtmlCleaner hc = new HtmlCleaner();
        TagNode tn = hc.clean(html);
        Document dom = new DomSerializer(new CleanerProperties()).createDOM(tn);
        XPath xPath = XPathFactory.newInstance().newXPath();

        Object result = xPath.evaluate(xpath, dom, XPathConstants.NODESET);

        return result;
    }

    /**
     * 获取xpath下的a标签的文本值及href属性值
     * /
     **/
    public static List<MyJsoup> fecthByMap(String url, String xpath) throws Exception {
        List<MyJsoup> list = new LinkedList<>();

        Object result = fecthNode(url, xpath);

        if (result instanceof NodeList) {
            NodeList nodeList = (NodeList) result;

            for (int i = 0; i < nodeList.getLength(); i++) {
                Node node = nodeList.item(i);
                if (node == null) {
                    continue;
                }
                String href = node.getAttributes().getNamedItem("href") != null ? node.getAttributes().getNamedItem("href").getTextContent() : "";

                list.add(new MyJsoup(node.getTextContent(), "http://health.people.com.cn"+href));

                System.out.println(
                        node.getTextContent() + " : " + "http://health.people.com.cn"+href);
            }
        }

        return list;
    }

    /**
     * 获取xpath下的某个属性值
     * /
     **/
    public static List<String> fecthAttr(String url, String xpath, String attr) throws Exception {
        List<String> list = new ArrayList<>();

        Object result = fecthNode(url, xpath);

        if (result instanceof NodeList) {
            NodeList nodeList = (NodeList) result;

            for (int i = 0; i < nodeList.getLength(); i++) {
                Node node = nodeList.item(i);
                if (node == null) {
                    continue;
                }
                list.add(node.getAttributes().getNamedItem(attr).getTextContent());

                //System.out.println(node.getTextContent() + " : " + node.getAttributes().getNamedItem("href"));
            }
        }

        return list;
    }
}