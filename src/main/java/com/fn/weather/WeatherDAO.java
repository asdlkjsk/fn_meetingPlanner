package com.fn.weather;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WeatherDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "WeatherMapper.";
	
	public List<WeatherDTO> weatherList(WeatherDTO weatherDTO){
		return sqlSession.selectList(NAMESPACE+"list", weatherDTO);
	}
	
	public WeatherDTO weatherGrid(WeatherDTO weatherDTO){
		return sqlSession.selectOne(NAMESPACE+"grid", weatherDTO);
	}
}
