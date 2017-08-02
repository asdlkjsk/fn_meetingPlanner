package com.fn.revtime;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fn.company.CompanyDTO;

@Repository
public class RevTimeDAO {
	
	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "RevTimeMapper.";
	
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
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cName", cname);
		sqlSession.selectOne(NAMESPACE+"renew", map);
		List<CompanyDTO> list = (List<CompanyDTO>)map.get("company");
		return list;
	}
	public List<RevTimeDTO> revTimeList(RevTimeDTO revTimeDTO){
		return sqlSession.selectList(NAMESPACE+"list", revTimeDTO);
	}
	public RevTimeDTO revTimeView(RevTimeDTO revTimeDTO){
		return sqlSession.selectOne(NAMESPACE+"view", revTimeDTO);
	}
}