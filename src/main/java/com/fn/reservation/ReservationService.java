package com.fn.reservation;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fn.util.ListInfo;

@Service
public class ReservationService {
		@Inject
		private ReservationDAO reservationDAO;
	
	public int reservationWrite(ReservationDTO reservationDTO){
		
		return 0;
	}
	public List<ReservationDTO> reservationList(ListInfo listInfo){
		return null;
		
	}
	
	public int reservationDelete(String id){
		
		return 0;
	}
}
