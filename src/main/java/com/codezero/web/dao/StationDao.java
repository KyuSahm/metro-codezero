package com.codezero.web.dao;

import java.util.List;

import com.codezero.web.entity.StationTimetable;
import com.codezero.web.entity.Train;

public interface StationDao {
	List<Train> getNextTrainList(int line, int subline, String stationId, int dayType, int direction);
	List<Train> getRealTimeNextTrainList(List<Train> realTimeTrainList);
	int insertTimetable(StationTimetable timetable);
}
