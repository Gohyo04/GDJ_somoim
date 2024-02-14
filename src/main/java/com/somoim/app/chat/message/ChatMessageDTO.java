package com.somoim.app.chat.message;

import java.sql.Date;

import com.somoim.app.chat.room.ChatRoomDTO;

public class ChatMessageDTO extends ChatRoomDTO{
	
	private Long messageNum;
	private String chatText;
	private Date chatMessageStamp;
	
	
	public Long getMessageNum() {
		return messageNum;
	}
	public void setMessageNum(Long messageNum) {
		this.messageNum = messageNum;
	}
	
	public String getChatText() {
		return chatText;
	}
	public void setChatText(String chatText) {
		this.chatText = chatText;
	}
	public Date getChatMessageStamp() {
		return chatMessageStamp;
	}
	public void setChatMessageStamp(Date chatMessageStamp) {
		this.chatMessageStamp = chatMessageStamp;
	}
	
	
}
