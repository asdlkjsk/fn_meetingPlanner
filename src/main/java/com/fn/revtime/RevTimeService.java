package com.fn.revtime;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fn.company.CompanyDTO;

@Service
public class RevTimeService {
	
	@Inject
	private RevTimeDAO revTimeDAO;
	
	public int revTimeInsert(RevTimeDTO revTimeDTO){
		return 0;
	}
	public int revTimeUpdate(RevTimeDTO revTimeDTO){
		return 0;
	}
	public int revTimeDelete(RevTimeDTO revTimeDTO){
		return 0;
	}
	public List<CompanyDTO> revTimeRenew(String cname){
		return revTimeDAO.revTimeRenew(cname);
	}
	public List<RevTimeDTO> revTimeList(RevTimeDTO revTimeDTO){
		return revTimeDAO.revTimeList(revTimeDTO);
	}
	public RevTimeDTO revTimeView(RevTimeDTO revTimeDTO){
		return revTimeDAO.revTimeView(revTimeDTO);
	}
}