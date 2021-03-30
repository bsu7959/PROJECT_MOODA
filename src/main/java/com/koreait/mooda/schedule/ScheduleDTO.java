package com.koreait.mooda.schedule;

public class ScheduleDTO {
	
	private int s_idx;
	private int s_useridx;
	private int s_alarm;
	private String s_date;
	private String s_time;
	private String s_content;
	private double s_latitude;
	private double s_longitude;
	
	
	public int getS_idx() {
		return s_idx;
	}
	public void setS_idx(int s_idx) {
		this.s_idx = s_idx;
	}
	public int getS_useridx() {
		return s_useridx;
	}
	public void setS_useridx(int s_useridx) {
		this.s_useridx = s_useridx;
	}
	public int getS_alarm() {
		return s_alarm;
	}
	public void setS_alarm(int s_alarm) {
		this.s_alarm = s_alarm;
	}
	public String getS_date() {
		return s_date;
	}
	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	public String getS_time() {
		return s_time;
	}
	public void setS_time(String s_time) {
		this.s_time = s_time;
	}
	public String getS_content() {
		return s_content;
	}
	public void setS_content(String s_content) {
		this.s_content = s_content;
	}
	public double getS_latitude() {
		return s_latitude;
	}
	public void setS_latitude(double s_latitude) {
		this.s_latitude = s_latitude;
	}
	public double getS_longitude() {
		return s_longitude;
	}
	public void setS_longitude(double s_longitude) {
		this.s_longitude = s_longitude;
	}
	@Override
	public String toString() {
		return "ScheduleDTO [s_idx=" + s_idx + ", s_useridx=" + s_useridx + ", s_alarm=" + s_alarm + ", s_date="
				+ s_date + ", s_time=" + s_time + ", s_content=" + s_content + ", s_latitude=" + s_latitude
				+ ", s_longitude=" + s_longitude + "]";
	}
	
	
}
