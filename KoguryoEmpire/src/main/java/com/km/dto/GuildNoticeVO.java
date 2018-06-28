package com.km.dto;

import java.util.Date;

public class GuildNoticeVO {
	
	private int noticeNum;
	private String NoticeTitle;
	private String NoticeNickname;
	private Date NoticeWritedate;
	private int NoticeViewcount;
	private String NoticeContent;
	
	
	public int getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}
	public String getNoticeTitle() {
		return NoticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		NoticeTitle = noticeTitle;
	}
	public String getNoticeNickname() {
		return NoticeNickname;
	}
	public void setNoticeNickname(String noticeNickname) {
		NoticeNickname = noticeNickname;
	}
	public Date getNoticeWritedate() {
		return NoticeWritedate;
	}
	public void setNoticeWritedate(Date noticeWritedate) {
		NoticeWritedate = noticeWritedate;
	}
	public int getNoticeViewcount() {
		return NoticeViewcount;
	}
	public void setNoticeViewcount(int noticeViewcount) {
		NoticeViewcount = noticeViewcount;
	}
	public String getNoticeContent() {
		return NoticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		NoticeContent = noticeContent;
	}
	
	
	
}
