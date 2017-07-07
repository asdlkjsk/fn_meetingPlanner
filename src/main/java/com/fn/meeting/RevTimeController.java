package com.fn.meeting;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.util.ListInfo;
import com.fn.revtime.RevTimeDTO;
import com.fn.revtime.RevTimeService;

@Controller
public class RevTimeController {

	
	@Inject
	private RevTimeService revTimeService;
	
	
	public String revTimeInsert(RevTimeDTO revTimeDTO,RedirectAttributes rd){
		
		return "";
	}
	public String revTimeUpdate(RevTimeDTO revTimeDTO, RedirectAttributes rd){
		return "";
	}
	public String revTimeDelete(RevTimeDTO revTimeDTO, RedirectAttributes rd){
	return "";	
	}
	
	public String revTimeList(String cName, Model model,ListInfo listInfo){
		return "";
	}
	

}
