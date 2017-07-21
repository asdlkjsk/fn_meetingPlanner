package com.fn.message;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.util.ListInfo;

@Repository
public class SendMessageDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "SendMessageMapper.";
	
/*	//insert
	public int sendWrite(SendMessageDTO sendMessageDTO) throws Exception {
		return 0;
	}*/
	
	//delete
	public int sendDelete(int megNum) throws Exception {
		return sqlSession.delete(namespace+"delete", megNum);
	}
	
	//view
	public SendMessageDTO sendView(int megNum) throws Exception {
		return sqlSession.selectOne(namespace+"view", megNum);
	}
	
	//list
	public List<SendMessageDTO> megList(ListInfo listInfo) throws Exception {
		return sqlSession.selectList(namespace+"list", listInfo);
	}
	
	//getCount
	public int sendCount(ListInfo listInfo) throws Exception {
		return sqlSession.selectOne(namespace+"count", listInfo);
	}
}
