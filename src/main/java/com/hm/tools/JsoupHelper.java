package com.hm.tools;

import java.io.IOException;
import java.util.*;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import com.google.gson.Gson;
import com.hm.entity.MyJsoup;
import com.hm.entity.Tbldeallog;
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
            html = connect.get().body().html();//获得body里的全部标签
//            System.out.println(html);
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
            int key = 1;
            String title="";
            String href = "";
            String article="";
            for (int i = 0; i < nodeList.getLength(); i++) {
                Node node = nodeList.item(i);
                if (node == null) {
                    continue;
                }

                if (key == 1) {
                    title=node.getTextContent();
                    href = node.getAttributes().getNamedItem("href") != null ?  node.getAttributes().getNamedItem("href").getTextContent() : "";
                    key++;
                }else
                if(key==2){
                    article=node.getTextContent();
                    list.add(new MyJsoup(title,href,article));
                    key--;
                }
            }
        }

        return list;
    }

    /**
     * 获得文章信息
     * /
     **/
    public static Map<String,Object> fecthArticle(String url, String xpath) throws Exception {
        Map<String,Object>map=new HashMap();
        List<String> list = new LinkedList<>();

        Object result = fecthNode(url, xpath);

        if (result instanceof NodeList) {
            NodeList nodeList = (NodeList) result;
            int key = 1;
            String title="";
            String article="";
            for (int i = 0; i < nodeList.getLength(); i++) {
                Node node = nodeList.item(i);
                if (node == null) {
                    continue;
                }
                if (key == 1) {
                    title=node.getTextContent();
                    map.put("title",title);
                    key++;
                }else
                if(key!=1){
                    article="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+node.getTextContent();
                    list.add(article);
                }
                if(i == nodeList.getLength()-3){
                    break;
                }
            }
            map.put("article",list);
        }
        return map;
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