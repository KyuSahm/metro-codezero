package com.codezero.web.entity;

public class Station {
    private int line;
    private int subline;
    private int seq;
    private String id;
    private String prevId;
    private String nextId;
    private String externalCode;
    private String eName;
    private String phone;
    private String address;
    
    public Station()
    {    	
    }
    
	public int getLine() {
		return line;
	}
	public void setLine(int line) {
		this.line = line;
	}
	public int getSubline() {
		return subline;
	}
	public void setSubline(int subline) {
		this.subline = subline;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPrevId() {
		return prevId;
	}
	public void setPrevId(String prevId) {
		this.prevId = prevId;
	}
	public String getNextId() {
		return nextId;
	}
	public void setNextId(String nextId) {
		this.nextId = nextId;
	}
	public String getExternalCode() {
		return externalCode;
	}
	public void setExternalCode(String externalCode) {
		this.externalCode = externalCode;
	}
	public String geteName() {
		return eName;
	}
	public void seteName(String eName) {
		this.eName = eName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Station [line=" + line + ", subline=" + subline + ", seq=" + seq + ", id=" + id + ", prevId=" + prevId
				+ ", nextId=" + nextId + ", externalCode=" + externalCode + ", eName=" + eName + ", phone=" + phone
				+ ", address=" + address + "]";
	}   
}
