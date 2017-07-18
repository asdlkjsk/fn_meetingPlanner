package com.fn.meeting;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.util.ListInfo;
import com.fn.reservation.ReservationDTO;
import com.fn.reservation.ReservationService;

@Controller
public class ReservationController {

	private ReservationService reservationService;
	
	public String reservationWrite(ReservationDTO reservationDTO, RedirectAttributes rs){
		return null;
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
