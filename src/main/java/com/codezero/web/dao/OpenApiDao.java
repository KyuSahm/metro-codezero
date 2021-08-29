package com.codezero.web.dao;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import org.json.JSONException;

import com.codezero.web.entity.StationTimetable;
import com.codezero.web.entity.Train;

public interface OpenApiDao {
	List<StationTimetable> getTimetable(int line, int subline, int startIndex, int endIndex,
			String externalCode, int dayType, int direction) throws IOException, JSONException;

	List<Train> getRealTimeNextTrainList(int subwayCode, String stationId, int direction)
			throws UnsupportedEncodingException, IOException, JSONException;
}
