package com.fn.chatting;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;

import org.springframework.web.socket.WebSocketSession;

import org.springframework.web.socket.handler.TextWebSocketHandler;

public class EchoHandler extends TextWebSocketHandler {
	
	private Logger logger = LoggerFactory.getLogger(EchoHandler.class);
	private List<WebSocketSession> connectedUsers;
	private List<String> kickIP;
	
	public EchoHandler() {
		connectedUsers = new ArrayList<WebSocketSession>();
		kickIP = new ArrayList<String>();
	}
	
	/**
	 * ���Ӱ��� Event Method
	 * @param WebSocketSession ������ �����
	 */
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// TODO Auto-generated method stub
		/*super.afterConnectionEstablished(session);*/
		logger.info(session.getId() + "�� ����");
		logger.info("���� IP : " + session.getRemoteAddress().getHostName());
		for(String kickip : kickIP){
			if(session.getRemoteAddress().getAddress().getHostAddress().equals(kickip)){
				session.sendMessage(new TextMessage("������Ͽ� ä�ù濡 �ٽ� ������ �� �����ϴ�."));
				return;
			}
		}
		connectedUsers.add(session);
		Map<String, Object> map = session.getAttributes();
		String id = (String)map.get("userId");
		for(WebSocketSession webSocketSession : connectedUsers){
			// ���� ����ڴ� ���� �ʱ� ���� ���ǹ�
			if(!session.getId().equals(webSocketSession.getId()))
				webSocketSession.sendMessage(new TextMessage(session.getId() + "���� �����߽��ϴ�."));
		}
		session.sendMessage(new TextMessage("���̵� " + session.getId()));
		StringBuilder sb = new StringBuilder("����Ʈ ");
		for(int i=0; i<connectedUsers.size(); i++){
			sb.append(connectedUsers.get(i).getId());
			if(i != connectedUsers.size()-1)
				sb.append(" ");
		}
		for(WebSocketSession webSocketSession : connectedUsers){
			webSocketSession.sendMessage(new TextMessage("������ �� " + connectedUsers.size()));
			webSocketSession.sendMessage(new TextMessage(sb.toString()));
		}
		session.sendMessage(new TextMessage("������ " + session.getRemoteAddress().getAddress().getHostAddress()));
		//System.out.println("���� IP : " + session.getRemoteAddress().getHostName());
	}
	
	/**
	 * 2���� �̺�Ʈ ó��
	 * 1. Send : Ŭ���̾�Ʈ�� �������� �޽��� ����
	 * 2. Emit : ������ ����Ǿ� �ִ� Ŭ���̾�Ʈ�鿡�� �޽��� ����
	 * 
	 * @param WebSocketSession �޽����� ���� Ŭ���̾�Ʈ
	 * @param TextMessage �޽����� ����
	 */
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// TODO Auto-generated method stub
		/*super.handleTextMessage(session, message);*/
		
		// Payload = ����ڰ� ���� �޽���
		logger.info(session.getId() + "���� �޽��� ����" + message.getPayload());
		
		String regexp = "^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$";
		
		if(message.getPayload().matches(regexp))
			kickIP.add(message.getPayload());
		else{
			for(WebSocketSession webSocketSession : connectedUsers){
				// ���� ����ڴ� ���� �ʱ� ���� ���ǹ�
				if(!session.getId().equals(webSocketSession.getId()))
					webSocketSession.sendMessage(new TextMessage(message.getPayload()));
			}
		}
	}
	
	/**
	 * Ŭ���̾�Ʈ�� ������ ���� ����
	 * 
	 * @param WebSocketSession ������ ���� Ŭ���̾�Ʈ
	 * @param CloseStatus ���� ���� (Ȯ�� �ʿ�)
	 */
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// TODO Auto-generated method stub
		/*super.afterConnectionClosed(session, status);*/
		logger.info(session.getId() + "�� ���� ����");
		connectedUsers.remove(session);
		Map<String, Object> map = session.getAttributes();
		String id = (String)map.get("userId");
		for(WebSocketSession webSocketSession : connectedUsers){
			// ���� ����ڴ� ���� �ʱ� ���� ���ǹ�
			if(!session.getId().equals(webSocketSession.getId()))
				webSocketSession.sendMessage(new TextMessage(session.getId() + "���� ���� �����߽��ϴ�."));
		}
		StringBuilder sb = new StringBuilder("����Ʈ ");
		for(int i=0; i<connectedUsers.size(); i++){
			sb.append(connectedUsers.get(i).getId());
			if(i != connectedUsers.size()-1)
				sb.append(" ");
		}
		for(WebSocketSession webSocketSession : connectedUsers){
			webSocketSession.sendMessage(new TextMessage("������ �� " + connectedUsers.size()));
			webSocketSession.sendMessage(new TextMessage(sb.toString()));
		}
		//System.out.println("���� IP : " + session.getRemoteAddress().getHostName());
	}
}