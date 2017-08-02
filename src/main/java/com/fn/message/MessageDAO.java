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
/*		System.out.println("DAO");
		
		int result1 = sqlSession.insert(namespace+"write1", MessageDTO);
		System.out.println("result1 : "+result1);
		int result2 = sqlSession.update(namespace+"update", MessageDTO);
		System.out.println("result2 : "+result2);
		MessageDTO = sqlSession.selectOne(namespace+"view2");*/
/*		System.out.println("recvid : "+MessageDTO.getRecvId());
		System.out.println("sendid : "+MessageDTO.getSendId());
		System.out.println("megnum : "+MessageDTO.getMegNum());
		System.out.println("contents : "+MessageDTO.getContents());
		System.out.println("mgcheck : "+MessageDTO.getMgCheck());
		System.out.println("senddate : "+MessageDTO.getSendDate());*/
		
		sqlSession.insert(namespace+"write1", MessageDTO);
		MessageDTO = sqlSession.selectOne(namespace+"view2");
/*		System.out.println("recvid : "+MessageDTO.getRecvId());
		System.out.println("sendid : "+MessageDTO.getSendId());
		System.out.println("megnum : "+MessageDTO.getMegNum());
		System.out.println("contents : "+MessageDTO.getContents());
		System.out.println("mgcheck : "+MessageDTO.getMgCheck());
		System.out.println("senddate : "+MessageDTO.getSendDate());*/
		sqlSession.update(namespace+"update", MessageDTO);
		return sqlSession.insert(namespace+"write2", MessageDTO);
	}
	
	//delete
	public int megDelete(int megNum) throws Exception {
		return sqlSession.delete(namespace+"delete", megNum);
	}
		
	//view
	public MessageDTO megView(int megNum) throws Exception {
		MessageDTO messageDTO = sqlSession.selectOne(namespace + "view", megNum);
		if (messageDTO.getRcheck() == 1) {
			sqlSession.update(namespace + "mgUpdate", messageDTO);
			sqlSession.update(namespace + "mgUpdate2", messageDTO);
		}
		return messageDTO;
	}
	
	//list
	public List<MessageDTO> megList(ListInfo listInfo) throws Exception {
		List<MessageDTO> ar = sqlSession.selectList(namespace+"list", listInfo);
		/*System.out.println(ar.get(0).getRcheck());*/
		return ar;
	}
	
	//getCount
	public int megCount(ListInfo listInfo) throws Exception {
		return sqlSession.selectOne(namespace+"count", listInfo);
	}
	
}
