package com.km.dto;

import java.util.Date;

public class JoinVO {
	
	private String joinName;
	private String joinNickname;
	private String joinAge;
	private String joinSex;
	private String joinRecommend;
	private String joinLastguild;
	private String joinIp;
	private String joinStatus;
	private int joinNum;
	private Date joinDate;
	private String joinRetestday;
	
	
	
	public String getJoinRetestday() {
		return joinRetestday;
	}
	public void setJoinRetestday(String joinRetestday) {
		this.joinRetestday = joinRetestday;
	}
	public String getJoinStatus() {
		return joinStatus;
	}
	public void setJoinStatus(String joinStatus) {
		this.joinStatus = joinStatus;
	}
	public int getJoinNum() {
		return joinNum;
	}
	public void setJoinNum(int joinNum) {
		this.joinNum = joinNum;
	}
	public String getJoinName() {
		return joinName;
	}
	public void setJoinName(String joinName) {
		this.joinName = joinName;
	}
	public String getJoinNickname() {
		return joinNickname;
	}
	public void setJoinNickname(String joinNickname) {
		this.joinNickname = joinNickname;
	}
	public String getJoinAge() {
		return joinAge;
	}
	public void setJoinAge(String joinAge) {
		this.joinAge = joinAge;
	}
	public String getJoinSex() {
		return joinSex;
	}
	public void setJoinSex(String joinSex) {
		this.joinSex = joinSex;
	}
	public String getJoinRecommend() {
		return joinRecommend;
	}
	public void setJoinRecommend(String joinRecommend) {
		this.joinRecommend = joinRecommend;
	}
	public String getJoinLastguild() {
		return joinLastguild;
	}
	public void setJoinLastguild(String joinLastguild) {
		this.joinLastguild = joinLastguild;
	}
	public String getJoinIp() {
		return joinIp;
	}
	public void setJoinIp(String joinIp) {
		this.joinIp = joinIp;
	}
	public Date getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
}
