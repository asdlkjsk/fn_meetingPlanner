package com.fn.meeting;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fn.weather.WeatherDTO;
import com.fn.weather.WeatherService;

@Controller
public class WeatherController {
	
	@Autowired
	private WeatherService weatherService;
	
	@RequestMapping(value="weatherList", method=RequestMethod.GET)
	public String list(){
		return "weather/weather";
	}
	
	@ResponseBody
	@RequestMapping(value="weatherList", method=RequestMethod.POST)
	public List<WeatherDTO> list(WeatherDTO weatherDTO){
		List<WeatherDTO> ar = weatherService.weatherList(weatherDTO);
		return ar;
	}
	
	@ResponseBody
	@RequestMapping(value="weatherGrid", method=RequestMethod.POST)
	public WeatherDTO grid(WeatherDTO weatherDTO){
		return weatherService.weatherGrid(weatherDTO);
	}
	
	@RequestMapping(value="weatherData", method=RequestMethod.POST)
	public String data(Model model, String url, String stationName){
		if(url != null)
			model.addAttribute("url", url);
		if(stationName != null)
			model.addAttribute("stationName", stationName);
		return "temp/proxy";
	}
	
	@RequestMapping(value="calendar", method=RequestMethod.GET)
	public String calendar(){
		return "calendar/calendar";
	}
}
