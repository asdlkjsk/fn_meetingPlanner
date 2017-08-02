package com.fn.company;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class CompanyService {

	@Inject
	private CompanyDAO companyDAO;
	
	public int companyWrite(CompanyDTO companyDTO){
		return companyDAO.companyWrite(companyDTO);
	}
	
	public CompanyDTO companyView(CompanyDTO companyDTO){
		return companyDAO.companyView(companyDTO);
	}
}