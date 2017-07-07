package com.fn.company;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CompanyDAO {
		@Inject
		private SqlSession session;
		private final static String NAMESPACE = "CompanyMapper.";
		
		
		public int companyWrite(CompanyDTO companyDTO) throws Exception{			
			
			return 0;
		}
		
	
}
