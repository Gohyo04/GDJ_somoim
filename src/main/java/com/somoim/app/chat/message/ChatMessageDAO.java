package com.somoim.app.chat.message;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ChatMessageDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.somoim.app.chat.ChatMessageDAO.";
	
	// chating 칠때 마다 insert
	public int addChat(Map<String,Object> map) {
		return sqlSession.insert(NAMESPACE+"addChat",map);
	}

}
