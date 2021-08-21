package com.codezero.web.dao;

import java.io.IOException;
import java.util.List;

import org.json.JSONException;

import com.codezero.web.entity.StationTimetable;

public interface OpenApiDao {
	void setServer(String server);

	void setPort(String port);

	void setCertificateKey(String certificateKey);

	void setFileType(String reponseFileType);

	void setServiceName(String serviceName);

	List<StationTimetable> getTimetable(int line, int subline, int startIndex, int endIndex,
			String externalCode, int dayType, int direction) throws IOException, JSONException;
}
