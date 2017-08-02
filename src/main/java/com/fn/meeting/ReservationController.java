package com.fn.meeting;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.util.ListInfo;
import com.fn.reservation.ReservationDTO;
import com.fn.reservation.ReservationService;

@Controller
public class ReservationController {
	
	@Inject
	private ReservationService reservationService;
	
	@ResponseBody
	@RequestMapping(value="reservationWrite", method=RequestMethod.POST)
	public int reservationWrite(ReservationDTO reservationDTO, HttpServletResponse response){
		/*response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		PrintWriter printWriter = response.getWriter();
		printWriter.write("테스트");
		printWriter.flush();
		printWriter.close();*/
		System.out.println("왔다");
		return reservationService.reservationWrite(reservationDTO);
	}
	public String reservationList(Model model,ListInfo listInfo){
		return null;
	}
	public String reservationDelete(String id,RedirectAttributes rs){		
		return null;
	}
	@RequestMapping(value="reservation", method=RequestMethod.GET)
	public String page(){
		return "reservation/reservation";
	}
}