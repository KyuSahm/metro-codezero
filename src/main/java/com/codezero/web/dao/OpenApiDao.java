package com.codezero.web.dao;

import java.util.List;

import com.codezero.web.entity.StationTimetable;

public interface OpenApiDao {
	public enum ReponseFileType {
		XML,    // Not implemented
		XMLF,   // Not implemented
		XLS,    // Not implemented
		JSON	// Only implemented
	}
	
	public enum DayType {
		NORMAL,     // 평일
		SATURDAY,   // 토요일
		HOLIDAY     // 휴일
	}
	
	public enum DirectionType {
		UP,     // 상행
		DOWN    // 하행
	}
	
	void setFileType(ReponseFileType reponseFileType);
	void setCertificateKey(String certificateKey);
	void setServiceName(String serviceName);
	List<StationTimetable> getTimetable(int startIndex, int endIndex, int externalCode, DayType dayType, DirectionType dirType);
}
