package com.fn.weather;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WeatherService {
	
	@Autowired
	private WeatherDAO weatherDAO;

	public List<WeatherDTO> weatherList(WeatherDTO weatherDTO){
		return weatherDAO.weatherList(weatherDTO);
	}
	
	public WeatherDTO weatherGrid(WeatherDTO weatherDTO){
		return weatherDAO.weatherGrid(weatherDTO);
	}
}
