package com.hm.websocket;

import com.alibaba.fastjson.JSON;
import com.hm.entity.Message;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

@ServerEndpoint("/chat")
@Component
public class ImServer {
	/**
	 * 连接对象集合
	 */
	private static final Set<ImServer> connections = new CopyOnWriteArraySet<ImServer>();
	private Session session;
	private static final String INIT_MESSAGE = "欢迎使用！";

	public ImServer() {
	}

	/**
	 * 打开连接
	 * 
	 * @param session
	 //* @param nickName
	 */
	@OnOpen
	public void onOpen(Session session) {

		this.session = session;
		connections.add(this);
		String message = String.format(INIT_MESSAGE);
		ImServer.broadCast(message);
	}

	/**
	 * 关闭连接
	 */
	@OnClose
	public void onClose() {
		connections.remove(this);
		String message = String.format("下线了哈");
		ImServer.broadCast(message);
	}

	/**
	 * 接收信息
	 * 
	 * @param message
	 //* @param nickName
	 */
	@OnMessage
	public void onMessage(String message, Session session) {
		System.out.println(session.getId() + ":收到消息-" + message);
		Message messageDTO = JSON.parseObject(message, Message.class);
		String response = null;
		//
		try {
			response = TuLingRobot.sendMessage(messageDTO.getContent())  ;
		} catch (Exception e) {
			response = "我说的什么，我理解不了，可能我挂了吧";
			e.printStackTrace();
		}
		ImServer.broadCast(response);
	}

	/**
	 * 发送或广播信息
	 * 
	 * @param message
	 */
	private static void broadCast(String message) {
		for (ImServer chat : connections) {
			try {
				synchronized (chat) {
					chat.session.getBasicRemote().sendText(message);
				}
			} catch (IOException e) {
				connections.remove(chat);
				try {
					chat.session.close();
				} catch (IOException e1) {

				}
				ImServer.broadCast(String.format("系统异常，自动关闭!"));
			}
		}
	}

	/**
	 * 错误信息响应
	 * 
	 * @param throwable
	 */
	@OnError
	public void onError(Throwable throwable) {
		System.out.println(throwable.getMessage());
	}

	public Session getSession() {
		return session;
	}

	public void setSession(Session session) {
		this.session = session;
	}

	public static Set<ImServer> getConnections() {
		return connections;
	}

}
