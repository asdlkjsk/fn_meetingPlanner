package com.fn.reservation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fn.util.ListInfo;

@Repository
public class ReservationDAO {

	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE = "ReservationMapper.";
		
	public int reservationWrite(ReservationDTO reservationDTO){
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("revDTO", reservationDTO);
	    sqlSession.insert(NAMESPACE+"write", map);
		return (Integer)map.get("result");
	}
	public List<ReservationDTO> reservationList(ListInfo listInfo){
		return null;
	}
	public int reservationDelete(String id){
		return 0;
	}
}