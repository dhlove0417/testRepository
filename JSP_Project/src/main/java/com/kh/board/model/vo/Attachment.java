package com.kh.board.model.vo;

import java.sql.Date;

public class Attachment {
	private int fileNo;
	private int refBno;
	private String originName;
	private String changeName;
	private String filepath;
	private Date uploadDate;
	private int fileLevel;
	private String ststus;
	public Attachment() {
		super();
		
	}
	
	
	public Attachment(int fileNo, String originName, String changeName, String filepath) {
		super();
		this.fileNo = fileNo;
		this.originName = originName;
		this.changeName = changeName;
		this.filepath = filepath;
	}


	public Attachment(int fileNo, int refBno, String originName, String changeName, String filepath, Date uploadDate,
			int fileLevel, String ststus) {
		super();
		this.fileNo = fileNo;
		this.refBno = refBno;
		this.originName = originName;
		this.changeName = changeName;
		this.filepath = filepath;
		this.uploadDate = uploadDate;
		this.fileLevel = fileLevel;
		this.ststus = ststus;
	}
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public int getRefBno() {
		return refBno;
	}
	public void setRefBno(int refBno) {
		this.refBno = refBno;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getChangeName() {
		return changeName;
	}
	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public Date getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	public int getFileLevel() {
		return fileLevel;
	}
	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}
	public String getStstus() {
		return ststus;
	}
	public void setStstus(String ststus) {
		this.ststus = ststus;
	}
	@Override
	public String toString() {
		return "attachment [fileNo=" + fileNo + ", refBno=" + refBno + ", originName=" + originName + ", changeName="
				+ changeName + ", filepath=" + filepath + ", uploadDate=" + uploadDate + ", fileLevel=" + fileLevel
				+ ", ststus=" + ststus + "]";
	}
	
	
}
