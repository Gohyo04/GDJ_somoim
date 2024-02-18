package com.somoim.app.chat;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.somoim.app.member.MemberDAO;
import com.somoim.app.member.MemberDTO;

@Service
public class ChatMessageService {
	
	@Autowired
	private ChatMessageDAO chatMessageDAO;
	
	@Autowired
	private MemberDAO memberDAO;
	
	public int addChat(ChatMessageDTO chatMessageDTO) {
		Map<String, Object> map = new HashMap<>();
		
		// 채팅
		return chatMessageDAO.addChat(chatMessageDTO);
	}
	
	public List<ChatMessageDTO> chatList(ChatMessageDTO chatMessageDTO) throws Exception{
		List<Long> roomList = chatMessageDAO.chatRoomCh();
		
		// 방이 없다면 (방번호로 찾기)
		if(!roomList.contains(1L)){
			// 방 생성
			chatMessageDAO.addChatRoom();
			return null;
		}
		// 원래 존재하던 방이라면
		chatMessageDTO.setChatRoomNum(1L);
		
		List<ChatMessageDTO> list = chatMessageDAO.chatHistory(chatMessageDTO);
		
		return list;
	}
	
	public List<ChatMessageDTO> chatRoomList(MemberDTO memberDTO){
		return chatMessageDAO.chatRoomList(memberDTO);
	}
}
