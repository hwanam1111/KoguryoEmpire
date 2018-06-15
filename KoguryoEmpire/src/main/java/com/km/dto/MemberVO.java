package com.km.dto;

import java.util.Date;

public class MemberVO {
	
	private String memEmail;
	private String memPassword;
	private String memName;
	private String memNickname;
	private String memBirthday;
	private String memIp;
	private String memClass;
	private Date memDate;
	
	
	
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemPassword() {
		return memPassword;
	}
	public void setMemPassword(String memPassword) {
		this.memPassword = memPassword;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemNickname() {
		return memNickname;
	}
	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}
	public String getMemBirthday() {
		return memBirthday;
	}
	public void setMemBirthday(String memBirthday) {
		this.memBirthday = memBirthday;
	}
	public String getMemIp() {
		return memIp;
	}
	public void setMemIp(String memIp) {
		this.memIp = memIp;
	}
	public String getMemClass() {
		return memClass;
	}
	public void setMemClass(String memClass) {
		this.memClass = memClass;
	}
	public Date getMemDate() {
		return memDate;
	}
	public void setMemDate(Date memDate) {
		this.memDate = memDate;
	}
}
