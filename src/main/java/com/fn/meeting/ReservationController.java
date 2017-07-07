package com.fn.meeting;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
}
