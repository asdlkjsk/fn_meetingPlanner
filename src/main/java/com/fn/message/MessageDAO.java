package com.fn.message;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fn.util.ListInfo;

@Repository
public class MessageDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "MessageMapper.";
	
	//insert
	public int megWrite(MessageDTO MessageDTO) throws Exception {
		return 0;
	}
	
	//delete
	public int megDelete(int megNum) throws Exception {
		return 0;
	}
	
	//view
	public MessageDTO megView(int megNum) throws Exception {
		MessageDTO MessageDTO = new MessageDTO();
		return MessageDTO;
	}
	
	//list
	public List<MessageDTO> megList(ListInfo listInfo) throws Exception {
		return sqlSession.selectList(namespace+"list", listInfo);
	}
	
	//getCount
	public int megCount(ListInfo listInfo) throws Exception {
		return sqlSession.selectOne(namespace+"count", listInfo);
	}
	
}
