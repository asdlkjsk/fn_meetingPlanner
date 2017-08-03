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
		/*
		 * System.out.println("DAO");
		 * 
		 * int result1 = sqlSession.insert(namespace+"write1", MessageDTO);
		 * System.out.println("result1 : "+result1); int result2 =
		 * sqlSession.update(namespace+"update", MessageDTO);
		 * System.out.println("result2 : "+result2); MessageDTO =
		 * sqlSession.selectOne(namespace+"view2");
		 */
		/*
		 * System.out.println("recvid : "+MessageDTO.getRecvId());
		 * System.out.println("sendid : "+MessageDTO.getSendId());
		 * System.out.println("megnum : "+MessageDTO.getMegNum());
		 * System.out.println("contents : "+MessageDTO.getContents());
		 * System.out.println("mgcheck : "+MessageDTO.getMgCheck());
		 * System.out.println("senddate : "+MessageDTO.getSendDate());
		 */
		
		
		
		System.out.println("recvid : "+MessageDTO.getRecvId());
		System.out.println("sendid : "+MessageDTO.getSendId());
		System.out.println("megnum : "+MessageDTO.getMegNum());
		System.out.println("contents : "+MessageDTO.getContents());
		System.out.println("mgcheck : "+MessageDTO.getMgCheck());
		System.out.println("senddate : "+MessageDTO.getSendDate());
		
		int acheck = MessageDTO.getMgCheck();
		
		if(MessageDTO.getRecvId().equals(MessageDTO.getSendId())){
			
			acheck = sqlSession.update(namespace + "update1", MessageDTO);
			MessageDTO.setMgCheck(acheck);
			System.out.println("받는사람과 보낸사람이 같을 때"+acheck);
		}else{
			acheck = sqlSession.selectOne(namespace + "view3",MessageDTO);
			System.out.println("acheck 너 안되냐?   "+acheck);
			sqlSession.update(namespace + "update", MessageDTO);
			acheck = sqlSession.selectOne(namespace + "view3",MessageDTO);
			MessageDTO.setMgCheck(acheck);
			System.out.println("받는 사람과 보낸사람이 다를 때   "+acheck);
		}
		
		
		//여기서부터 뭔가 꼬임
		sqlSession.insert(namespace + "write1", MessageDTO);
		
		
		System.out.println("늘어났나 최종확인     !!!"+MessageDTO.getMgCheck());
		MessageDTO = sqlSession.selectOne(namespace + "view2");
		System.out.println("view2 확인 : "+MessageDTO.getMgCheck());
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
		System.out.println("Listmgcheck 확인 "+ar.get(0).getMgCheck());
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
		System.out.println("감소할 숫자를 배열의 크기로 받음 : " + decrenum);

		sqlSession.update(namespace + "listDel2", messageDTO);

		// 만약 null이 일어나면 처리해야함
		int mgcheck = 0;
		if (sqlSession.selectOne(namespace + "listDel3", messageDTO) != null) {
			mgcheck = sqlSession.selectOne(namespace + "listDel3", messageDTO);
		}
		System.out.println("DAO mgCheck : " + mgcheck);
		messageDTO.setMgCheck(mgcheck);
		return messageDTO;
	}

}
