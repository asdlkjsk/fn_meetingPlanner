package com.fn.meeting;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.fn.file.FileService;
import com.fn.company.CompanyDTO;
import com.fn.company.CompanyService;

@Controller
public class CompanyController {

	@Inject
	private CompanyService companyService;
	
	@RequestMapping(value="address", method=RequestMethod.GET)
	public String companyAddress(){
		return "company/address";
	}
	
	@RequestMapping(value="companyJoin", method=RequestMethod.GET)
	public String companyJoin(){
		return "company/company";
	}
	
	@RequestMapping(value="companyAddInfo", method=RequestMethod.GET)
	public String companyAddInfo(){
		return "company/addinfo";
	}
	
	@ResponseBody
	@RequestMapping(value="companyWrite", method=RequestMethod.POST)
	public int companyWrite(MultipartFile m, CompanyDTO companyDTO, HttpSession session) throws Exception{
		FileService f = new FileService();
		String fileName=f.fileSave(m, session);
		companyDTO.setFileName(fileName);
		return companyService.companyWrite(companyDTO);
	}
	
	@ResponseBody
	@RequestMapping(value="companyView", method=RequestMethod.POST)
	public CompanyDTO companyView(CompanyDTO companyDTO){
		return companyService.companyView(companyDTO);
	}
}