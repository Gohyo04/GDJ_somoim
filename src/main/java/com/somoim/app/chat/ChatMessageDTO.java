package com.somoim.app.chat;

import java.sql.Date;

public class ChatMessageDTO {
	
	private Long messageNum;
	private Long chatRoomNum;
	private String userName;
	private String chatText;
	private String chatTimeStamp;
	
	
	public Long getMessageNum() {
		return messageNum;
	}
	public void setMessageNum(Long messageNum) {
		this.messageNum = messageNum;
	}
	public Long getChatRoomNum() {
		return chatRoomNum;
	}
	public void setChatRoomNum(Long chatRoomNum) {
		this.chatRoomNum = chatRoomNum;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getChatText() {
		return chatText;
	}
	public void setChatText(String chatText) {
		this.chatText = chatText;
	}
	public String getChatTimeStamp() {
		return chatTimeStamp;
	}
	public void setChatTimeStamp(String chatTimeStamp) {
		this.chatTimeStamp = chatTimeStamp;
	}
	
}
