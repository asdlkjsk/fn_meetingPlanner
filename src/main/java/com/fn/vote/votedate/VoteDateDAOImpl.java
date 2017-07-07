package com.fn.vote.votedate;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fn.vote.VoteDAO;
import com.fn.vote.VoteDTO;
@Repository
public class VoteDateDAOImpl implements VoteDAO{

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="VoteDateMapper.";
	
	@Override
	public int voteWrite(VoteDTO voteDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<String> voteList(String mName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int voteUpdate(VoteDTO voteDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	
		
}
