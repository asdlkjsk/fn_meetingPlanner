package com.fn.weather;

public class WeatherDTO {
	private String si, dong, gu;
	private double gridX, gridY;
	
	public String getSi() {
		return si;
	}
	public void setSi(String si) {
		this.si = si;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getGu() {
		return gu;
	}
	public void setGu(String gu) {
		this.gu = gu;
	}
	public double getGridX() {
		return gridX;
	}
	public void setGridX(double gridX) {
		this.gridX = gridX;
	}
	public double getGridY() {
		return gridY;
	}
	public void setGridY(double gridY) {
		this.gridY = gridY;
	}
}