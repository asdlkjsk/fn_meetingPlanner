package com.fn.vote;

import java.util.List;

public interface VoteDAO {
	//write
	public int voteWrite(VoteDTO voteDTO) throws Exception;
	//list
	public List<String> voteList(String mName) throws Exception;
	//update
	public int voteUpdate(VoteDTO voteDTO) throws Exception;
	
	

		
	
}
