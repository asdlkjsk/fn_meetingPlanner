package com.fn.member.manager;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.member.MemberDAO;
import com.fn.member.MemberDTO;
import com.fn.util.ListInfo;

@Repository
public class ManagerDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSession sqlSession;
	private final String namespace="ManagerMapper.";
	private final String namespace2="MemberMapper.";
	
	
	public MemberDTO memberReload(MemberDTO memberDTO) throws Exception {
		System.out.println("dao getId : "+memberDTO.getId());
		int result = 0;
		if(sqlSession.selectOne(namespace2+"mgCheck", memberDTO.getId())!=null){
		result = sqlSession.selectOne(namespace2+"mgCheck", memberDTO.getId());
		}
		memberDTO.setMgCheck(result);
		System.out.println("mgcheck dao : "+result);
		return memberDTO;
	}
	
	@Override
	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception {
		return sqlSession.selectOne(namespace+"managerLogin", memberDTO);
	}

	@Override
	public int memberJoin(MemberDTO memberDTO) throws Exception {
		sqlSession.insert(namespace2+"Join", memberDTO);		
		int result = sqlSession.insert(namespace+"managerJoin", memberDTO);
		return result;
	}

	@Override
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int memberDelete(String id) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDTO memberView(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberDTO> memberList(ListInfo listInfo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int idCheck(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
}
