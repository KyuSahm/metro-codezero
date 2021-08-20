package com.codezero.web.entity;

public class StationTimetable {
	private int line;
	private int subline;
	private String stationId;
	private String direction;
	private String arriveTime;
	private String leftTime;
	private String origStationId;
	private String destStationId;
	private int trainId;
	private String expressYn;
	private String dayType;

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

	public String getStationId() {
		return stationId;
	}

	public void setStationId(String stationId) {
		this.stationId = stationId;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getArriveTime() {
		return arriveTime;
	}

	public void setArriveTime(String arriveTime) {
		this.arriveTime = arriveTime;
	}

	public String getLeftTime() {
		return leftTime;
	}

	public void setLeftTime(String leftTime) {
		this.leftTime = leftTime;
	}

	public String getOrigStationId() {
		return origStationId;
	}

	public void setOrigStationId(String origStationId) {
		this.origStationId = origStationId;
	}

	public String getDestStationId() {
		return destStationId;
	}

	public void setDestStationId(String destStationId) {
		this.destStationId = destStationId;
	}

	public int getTrainId() {
		return trainId;
	}

	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}

	public String getExpressYn() {
		return expressYn;
	}

	public void setExpressYn(String expressYn) {
		this.expressYn = expressYn;
	}

	public String getDayType() {
		return dayType;
	}

	public void setDayType(String dayType) {
		this.dayType = dayType;
	}

	@Override
	public String toString() {
		return "StationTimetable [line=" + line + ", subline=" + subline + ", stationId=" + stationId + ", direction="
				+ direction + ", arriveTime=" + arriveTime + ", leftTime=" + leftTime + ", origStationId="
				+ origStationId + ", destStationId=" + destStationId + ", trainId=" + trainId + ", expressYn="
				+ expressYn + ", dayType=" + dayType + "]";
	}
}
