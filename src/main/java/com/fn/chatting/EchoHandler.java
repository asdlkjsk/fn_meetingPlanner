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
	 * 접속관련 Event Method
	 * @param WebSocketSession 접속한 사용자
	 */
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// TODO Auto-generated method stub
		/*super.afterConnectionEstablished(session);*/
		logger.info(session.getId() + "님 접속");
		logger.info("연결 IP : " + session.getRemoteAddress().getHostName());
		for(String kickip : kickIP){
			if(session.getRemoteAddress().getAddress().getHostAddress().equals(kickip)){
				session.sendMessage(new TextMessage("강퇴당하여 채팅방에 다시 입장할 수 없습니다."));
				return;
			}
		}
		connectedUsers.add(session);
		Map<String, Object> map = session.getAttributes();
		String id = (String)map.get("userId");
		for(WebSocketSession webSocketSession : connectedUsers){
			// 보낸 사용자는 받지 않기 위한 조건문
			if(!session.getId().equals(webSocketSession.getId()))
				webSocketSession.sendMessage(new TextMessage(session.getId() + "님이 접속했습니다."));
		}
		session.sendMessage(new TextMessage("아이디 " + session.getId()));
		StringBuilder sb = new StringBuilder("리스트 ");
		for(int i=0; i<connectedUsers.size(); i++){
			sb.append(connectedUsers.get(i).getId());
			if(i != connectedUsers.size()-1)
				sb.append(" ");
		}
		for(WebSocketSession webSocketSession : connectedUsers){
			webSocketSession.sendMessage(new TextMessage("접속자 수 " + connectedUsers.size()));
			webSocketSession.sendMessage(new TextMessage(sb.toString()));
		}
		session.sendMessage(new TextMessage("아이피 " + session.getRemoteAddress().getAddress().getHostAddress()));
		//System.out.println("연결 IP : " + session.getRemoteAddress().getHostName());
	}
	
	/**
	 * 2가지 이벤트 처리
	 * 1. Send : 클라이언트가 서버에게 메시지 보냄
	 * 2. Emit : 서버에 연결되어 있는 클라이언트들에게 메시지 보냄
	 * 
	 * @param WebSocketSession 메시지를 보낸 클라이언트
	 * @param TextMessage 메시지의 내용
	 */
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// TODO Auto-generated method stub
		/*super.handleTextMessage(session, message);*/
		
		// Payload = 사용자가 보낸 메시지
		logger.info(session.getId() + "님이 메시지 전송" + message.getPayload());
		
		String regexp = "^([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$";
		
		if(message.getPayload().matches(regexp))
			kickIP.add(message.getPayload());
		else{
			for(WebSocketSession webSocketSession : connectedUsers){
				// 보낸 사용자는 받지 않기 위한 조건문
				if(!session.getId().equals(webSocketSession.getId()))
					webSocketSession.sendMessage(new TextMessage(message.getPayload()));
			}
		}
	}
	
	/**
	 * 클라이언트가 서버와 연결 종료
	 * 
	 * @param WebSocketSession 연결을 끊은 클라이언트
	 * @param CloseStatus 연결 상태 (확인 필요)
	 */
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// TODO Auto-generated method stub
		/*super.afterConnectionClosed(session, status);*/
		logger.info(session.getId() + "님 접속 종료");
		connectedUsers.remove(session);
		Map<String, Object> map = session.getAttributes();
		String id = (String)map.get("userId");
		for(WebSocketSession webSocketSession : connectedUsers){
			// 보낸 사용자는 받지 않기 위한 조건문
			if(!session.getId().equals(webSocketSession.getId()))
				webSocketSession.sendMessage(new TextMessage(session.getId() + "님이 접속 종료했습니다."));
		}
		StringBuilder sb = new StringBuilder("리스트 ");
		for(int i=0; i<connectedUsers.size(); i++){
			sb.append(connectedUsers.get(i).getId());
			if(i != connectedUsers.size()-1)
				sb.append(" ");
		}
		for(WebSocketSession webSocketSession : connectedUsers){
			webSocketSession.sendMessage(new TextMessage("접속자 수 " + connectedUsers.size()));
			webSocketSession.sendMessage(new TextMessage(sb.toString()));
		}
		//System.out.println("연결 IP : " + session.getRemoteAddress().getHostName());
	}
}