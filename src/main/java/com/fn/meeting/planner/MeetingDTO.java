package com.fn.meeting.planner;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class MeetingDTO {

		private String mName;
		private String chiefId;
		private int maxNum;
		private Date mDate;
		private Date reg_date;
		private String mPlace;
		private String mTime;
		private String comments;
		private int check;
		
		private String fileName;
		private String oriName;
		
		
		public String getFileName() {
			return fileName;
		}
		public void setFileName(String fileName) {
			this.fileName = fileName;
		}
		public String getOriName() {
			return oriName;
		}
		public void setOriName(String oriName) {
			this.oriName = oriName;
		}
		public String getmName() {
			return mName;
		}
		public void setmName(String mName) {
			this.mName = mName;
		}
		public String getChiefId() {
			return chiefId;
		}
		public void setChiefId(String chiefId) {
			this.chiefId = chiefId;
		}
		public int getMaxNum() {
			return maxNum;
		}
		public void setMaxNum(int maxNum) {
			this.maxNum = maxNum;
		}
		public Date getmDate() {
			return mDate;
		}
		public void setmDate(Date mDate) {
			this.mDate = mDate;
		}
		public Date getReg_date() {
			return reg_date;
		}
		public void setReg_date(Date reg_date) {
			this.reg_date = reg_date;
		}
		public String getmPlace() {
			return mPlace;
		}
		public void setmPlace(String mPlace) {
			this.mPlace = mPlace;
		}
		public String getmTime() {
			return mTime;
		}
		public void setmTime(String mTime) {
			this.mTime = mTime;
		}
		public String getComments() {
			return comments;
		}
		public void setComments(String comments) {
			this.comments = comments;
		}

		public int getCheck() {
			return check;
		}
		public void setCheck(int check) {
			this.check = check;
		}
	
		
		
	
}
