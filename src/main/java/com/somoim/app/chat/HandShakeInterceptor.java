package com.somoim.app.chat;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.HandshakeInterceptor;

public class HandShakeInterceptor implements HandshakeInterceptor{
	// 소켓이 연결되고 실행됨
	@Override
	public boolean beforeHandshake(
			ServerHttpRequest request, 
			ServerHttpResponse response, 
			WebSocketHandler wsHandler,
			Map<String, Object> attributes) throws Exception {
		if(request instanceof ServletServerHttpRequest) {	// request가 servletserverHttpRequest를 상속받았는지 확인
			ServletServerHttpRequest req = (ServletServerHttpRequest) request;	// httpsession 으로 변환하기 위한 과정
			HttpSession session = req.getServletRequest().getSession();
			attributes.put("session", session);				// map에 session을 담아준다.
		}
		return true;
	}

	@Override
	public void afterHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
			Exception exception) {
	}

	
}
