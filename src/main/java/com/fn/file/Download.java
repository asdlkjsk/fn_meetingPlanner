package com.fn.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class Download extends AbstractView {
	
	public Download() {
		setContentType("application/download;charset=UTF-8");	//우리가 요청할대 뭔가 헤더에 묶여서 간다한다
	}
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		File f = (File) model.get("downloadFile");
		String oriName = (String) model.get("oriName");
		
		response.setCharacterEncoding(getContentType());
		response.setContentLength((int) f.length());
		
		//String fileName = URLEncoder.encode(f.getName(), "UTF-8");
		String fileName = URLEncoder.encode(f.getName(), "UTF-8");
		fileName = fileName.substring(fileName.lastIndexOf("_")+1);	//파일명에서 _ 뒤로 나오게해버리기
		
		response.setHeader("Content-Disposition", "attachment;filename=\""+fileName+"\"");	//+oriName하면 파일명, fileName하면 랜덤이름 다운+
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		OutputStream out = response.getOutputStream();
		
		FileInputStream fi = null;
		
		fi = new FileInputStream(f);
		
		FileCopyUtils.copy(fi, out);
		
		fi.close();
		out.close();
	}
	
}
