package com.hm.websocket;

import com.alibaba.fastjson.JSON;
import com.hm.entity.TuLingDTO;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

@Component
public class TuLingRobot {
	//e2decbba7aac4532a2e239e6e030bf08
	//7d14fa4bc295404a9fced576c37453e5
	//private final static String APIKEY = "81843ccccbb643319af5c7821fcf3332";
	//private final static String APIKEY = "7f00a489f3019ad3a5b642c95b0cf733";
	private final static String APIKEY = "8c6dbf8fa3884947a9fa7339206974d1";
	//private final static String APIKEY = "e2decbba7aac4532a2e239e6e030bf08";
	//private final static String APIKEY = "7d14fa4bc295404a9fced576c37453e5";


	public static String sendMessage(String message) throws Exception {
		String INFO = URLEncoder.encode(message, "utf-8");
		String getURL = "http://www.tuling123.com/openapi/api?key=" + APIKEY
				+ "&info=" + INFO;
		URL getUrl = new URL(getURL);
		HttpURLConnection connection = (HttpURLConnection) getUrl
				.openConnection();
		connection.connect();

		// 取得输入流，并使用Reader读取
		BufferedReader reader = new BufferedReader(
				new InputStreamReader(connection.getInputStream(), "utf-8"));
		StringBuffer sb = new StringBuffer();
		String line = "";
		while ((line = reader.readLine()) != null) {
			sb.append(line);
		}
		reader.close();
		// 断开连接
		connection.disconnect();
		System.out.println(sb);
		TuLingDTO tuLing = JSON.parseObject(sb.toString(), TuLingDTO.class);
		System.out.println(tuLing.getText());
		System.out.println(tuLing.getUrl());
		//a(http://www.layui.com)[layui]
		String s = null;
		if (tuLing.getUrl()!=null){
		s = "a("+tuLing.getUrl()+")["+tuLing.getText()+"(请点击文字跳转链接)]";
		}else{
			s = tuLing.getText();
		}
		return s;
	}

	public static void main(String[] args) throws Exception {
		TuLingRobot.sendMessage("今晚吃什么");
	}
}
