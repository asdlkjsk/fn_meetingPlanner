package com.fn.revtime;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fn.util.ListInfo;

@Service
public class RevTimeService {

	
		@Inject
		private RevTimeDAO revTimeDAO;
		
		
		public int revTimeInsert(RevTimeDTO revTimeDTO){
			return 0;
		}
		public int revTimeUpdate(RevTimeDTO revTimeDTO){
			return 0;
		}
		public int revTimeDelete(RevTimeDTO revTimeDTO){
			return 0;
		}
		public List<RevTimeDTO> revTimeList(String cName,ListInfo listInfo){
			return null;
		}
}
