package com.codezero.web.entity;

public class SubwayLineDetail {
    private int line;
    private int subline;
    private String lineName;
    
    public SubwayLineDetail()
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

	public String getLineName() {
		return lineName;
	}

	public void setLineName(String lineName) {
		this.lineName = lineName;
	}

	@Override
	public String toString() {
		return "SubwayLineDetail [line=" + line + ", subline=" + subline + ", lineName=" + lineName + "]";
	}	
}
