package com.fn.vote.voteplace;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fn.vote.VoteDTO;
import com.fn.vote.VoteService;
@Service
public class VotePlaceServiceImpl implements VoteService{

	@Inject
	private VotePlaceDAOImpl votePlaceDAO;
		
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
