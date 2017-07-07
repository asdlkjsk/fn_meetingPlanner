package com.fn.reservation;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fn.util.ListInfo;

@Repository
public class ReservationDAO {

	
		@Inject
		private SqlSession session;
		private final static String NAMESPACE = "ReservationMapper.";
		
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
