package com.fn.company;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyDAO {
	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "CompanyMapper.";
	
	public int companyWrite(CompanyDTO companyDTO){			
		return sqlSession.insert(NAMESPACE+"write", companyDTO);
	}
	
	public CompanyDTO companyView(CompanyDTO companyDTO){
		return sqlSession.selectOne(NAMESPACE+"view", companyDTO);
	}
}