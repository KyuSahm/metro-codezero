package com.codezero.web.service;

import java.io.IOException;
import java.util.List;

import org.json.JSONException;

import com.codezero.web.entity.Train;

public interface StationService {

	List<Train> getNextTrainList(int line, int subline, String stationId, int dayType, int direction);

	boolean updateTimetable(int line, int subline) throws IOException, JSONException;
}
