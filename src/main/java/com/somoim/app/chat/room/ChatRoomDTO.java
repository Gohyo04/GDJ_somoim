package com.somoim.app.chat.room;

import java.util.HashSet;
import java.util.Set;

import org.springframework.web.socket.WebSocketSession;

public class ChatRoomDTO {

	private static Long chatRoomNum;
	private String roomName;
	private Set<WebSocketSession> sessions = new HashSet<>();
	
	public Long getChatRoomNum() {
		return chatRoomNum;
	}

	public void setChatRoomNum(Long chatRoomNum) {
		this.chatRoomNum = chatRoomNum;
	}

	public String getUserName() {
		return roomName;
	}

	public void setUserName(String roomName) {
		this.roomName = roomName;
	}

	public static ChatRoomDTO create(String name) {
		ChatRoomDTO room = new ChatRoomDTO();
		
		room.chatRoomNum = chatRoomNum;
		room.roomName = name;
		return room;
	}
}
