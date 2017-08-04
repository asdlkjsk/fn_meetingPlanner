package com.fn.message;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fn.member.MemberDTO;
import com.fn.util.ListInfo;

@Repository
public class MessageDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "MessageMapper.";

	// insert
	public int megWrite(MessageDTO MessageDTO) throws Exception {
		
		int acheck = MessageDTO.getMgCheck();
		
		if(MessageDTO.getRecvId().equals(MessageDTO.getSendId())){
			sqlSession.update(namespace + "update1", MessageDTO);
			acheck = sqlSession.selectOne(namespace + "view3",MessageDTO);
			MessageDTO.setMgCheck(acheck);
		}else{
			acheck = sqlSession.selectOne(namespace + "view3",MessageDTO);
			sqlSession.update(namespace + "update", MessageDTO);
			acheck = sqlSession.selectOne(namespace + "view3",MessageDTO);
			MessageDTO.setMgCheck(acheck);
		}
		
		
		sqlSession.insert(namespace + "write1", MessageDTO);
		
		MessageDTO = sqlSession.selectOne(namespace + "view2");
		
		return sqlSession.insert(namespace + "write2", MessageDTO);
	}

	// delete
	public int megDelete(int megNum) throws Exception {
		return sqlSession.delete(namespace + "delete", megNum);
	}

	// view
	public MessageDTO megView(int megNum) throws Exception {
		MessageDTO messageDTO = sqlSession.selectOne(namespace + "view", megNum);
		if (messageDTO.getRcheck() == 1) {
			sqlSession.update(namespace + "mgUpdate", messageDTO);
			sqlSession.update(namespace + "mgUpdate2", messageDTO);
		}
		return messageDTO;
	}

	// list
	public List<MessageDTO> megList(ListInfo listInfo) throws Exception {
		List<MessageDTO> ar = sqlSession.selectList(namespace + "list", listInfo);
		return ar;
	}

	// getCount
	public int megCount(ListInfo listInfo) throws Exception {
		return sqlSession.selectOne(namespace + "count", listInfo);
	}

	// listDel
	public MessageDTO megListDel(String id, int decrenum) throws Exception {
		
		
		MessageDTO messageDTO = new MessageDTO();
		messageDTO.setRecvId(id);
		messageDTO.setDecrenum(decrenum);
		
		

		sqlSession.update(namespace + "listDel3", messageDTO);

		int mgcheck = 0;
		if (sqlSession.selectOne(namespace + "listDel4", messageDTO) != null) {
			mgcheck = sqlSession.selectOne(namespace + "listDel4", messageDTO);
		}
		System.out.println("DAO mgCheck : " + mgcheck);
		messageDTO.setMgCheck(mgcheck);
		return messageDTO;
	}
	
	//rcheck
	public int megRcheck(int megNum) throws Exception {
		int result = 0;
		int count = 0;
		
		result = sqlSession.selectOne(namespace + "listDel1", megNum);
		if(result == 1){
			count++;
		}

		return count;
	}
	

}
