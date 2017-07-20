package com.fn.chatting;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

@Configuration
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer {
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		registry.addHandler(new EchoHandler(), "/echo-ws").addInterceptors(new HandShakeInterceptor()).withSockJS();
		registry.addHandler(new EchoHandler(), "/echo-ws2").addInterceptors(new HandShakeInterceptor()).withSockJS();
		/*for(int i=2; i<=100000; i++){
			registry.addHandler(new EchoHandler(), "/echo-ws"+i).addInterceptors(new HandShakeInterceptor()).withSockJS();
		}*/
	}
}