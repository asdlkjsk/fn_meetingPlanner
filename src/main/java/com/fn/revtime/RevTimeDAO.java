package com.fn.revtime;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fn.util.ListInfo;

@Repository
public class RevTimeDAO {
	
@Inject
private SqlSession session;
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
public List<RevTimeDTO> revTimeList(String cName,ListInfo listInfo){
	return null;
}

}
