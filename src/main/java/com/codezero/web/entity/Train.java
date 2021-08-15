package com.codezero.web.entity;

public class Train {
	private int arriveSec;
	private String direction;
	private String trainId;
	private String destStationId;
	private String updated;
	private int crowdedness1;
	private int crowdedness2;
	private int crowdedness3;
	private int crowdedness4;
	private int crowdedness5;
	private int crowdedness6;
	private int crowdedness7;
	private int crowdedness8;
	private int crowdedness9;
	private int crowdedness10;
	
	public int getArriveSec() {
		return arriveSec;
	}
	public void setArriveSec(int arriveSec) {
		this.arriveSec = arriveSec;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	public String getTrainId() {
		return trainId;
	}
	public void setTrainId(String trainId) {
		this.trainId = trainId;
	}
	public String getDestStationId() {
		return destStationId;
	}
	public void setDestStationId(String destStationId) {
		this.destStationId = destStationId;
	}
	public String getUpdated() {
		return updated;
	}
	public void setUpdated(String updated) {
		this.updated = updated;
	}
	public int getCrowdedness1() {
		return crowdedness1;
	}
	public void setCrowdedness1(int crowdedness1) {
		this.crowdedness1 = crowdedness1;
	}
	public int getCrowdedness2() {
		return crowdedness2;
	}
	public void setCrowdedness2(int crowdedness2) {
		this.crowdedness2 = crowdedness2;
	}
	public int getCrowdedness3() {
		return crowdedness3;
	}
	public void setCrowdedness3(int crowdedness3) {
		this.crowdedness3 = crowdedness3;
	}
	public int getCrowdedness4() {
		return crowdedness4;
	}
	public void setCrowdedness4(int crowdedness4) {
		this.crowdedness4 = crowdedness4;
	}
	public int getCrowdedness5() {
		return crowdedness5;
	}
	public void setCrowdedness5(int crowdedness5) {
		this.crowdedness5 = crowdedness5;
	}
	public int getCrowdedness6() {
		return crowdedness6;
	}
	public void setCrowdedness6(int crowdedness6) {
		this.crowdedness6 = crowdedness6;
	}
	public int getCrowdedness7() {
		return crowdedness7;
	}
	public void setCrowdedness7(int crowdedness7) {
		this.crowdedness7 = crowdedness7;
	}
	public int getCrowdedness8() {
		return crowdedness8;
	}
	public void setCrowdedness8(int crowdedness8) {
		this.crowdedness8 = crowdedness8;
	}
	public int getCrowdedness9() {
		return crowdedness9;
	}
	public void setCrowdedness9(int crowdedness9) {
		this.crowdedness9 = crowdedness9;
	}
	public int getCrowdedness10() {
		return crowdedness10;
	}
	public void setCrowdedness10(int crowdedness10) {
		this.crowdedness10 = crowdedness10;
	}
	
	@Override
	public String toString() {
		return "Train [arriveSec=" + arriveSec + ", direction=" + direction + ", trainId=" + trainId
				+ ", destStationId=" + destStationId + ", updated=" + updated + ", crowdedness1=" + crowdedness1
				+ ", crowdedness2=" + crowdedness2 + ", crowdedness3=" + crowdedness3 + ", crowdedness4=" + crowdedness4
				+ ", crowdedness5=" + crowdedness5 + ", crowdedness6=" + crowdedness6 + ", crowdedness7=" + crowdedness7
				+ ", crowdedness8=" + crowdedness8 + ", crowdedness9=" + crowdedness9 + ", crowdedness10="
				+ crowdedness10 + "]";
	}	
}
