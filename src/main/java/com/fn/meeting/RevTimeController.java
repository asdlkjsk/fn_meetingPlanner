package com.fn.meeting;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.company.CompanyDTO;
import com.fn.revtime.RevTimeDTO;
import com.fn.revtime.RevTimeService;

@Controller
public class RevTimeController {

	@Inject
	private RevTimeService revTimeService;
	
	public String revTimeInsert(RevTimeDTO revTimeDTO){
		return "";
	}
	public String revTimeUpdate(RevTimeDTO revTimeDTO, RedirectAttributes rd){
		return "";
	}
	public String revTimeDelete(RevTimeDTO revTimeDTO){
		return "";	
	}
	
	@ResponseBody
	@RequestMapping(value="revTimeRenew", method=RequestMethod.POST)
	public List<CompanyDTO> revTimeRenew(String cname){
		return revTimeService.revTimeRenew(cname);
	}
	
	@ResponseBody
	@RequestMapping(value="revTimeList", method=RequestMethod.POST)
	public List<RevTimeDTO> revTimeList(RevTimeDTO revTimeDTO){
		return revTimeService.revTimeList(revTimeDTO);
	}
	
	@ResponseBody
	@RequestMapping(value="revTimeView", method=RequestMethod.POST)
	public RevTimeDTO revTimeView(RevTimeDTO revTimeDTO){
		return revTimeService.revTimeView(revTimeDTO);
	}
}