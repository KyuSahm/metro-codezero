package com.codezero.web.service;

import java.io.IOException;
import java.util.List;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codezero.web.dao.OpenApiDao;
import com.codezero.web.dao.StationDao;
import com.codezero.web.entity.StationTimetable;
import com.codezero.web.entity.Train;

@Service
public class StationServiceImpl implements StationService {
    @Autowired
	private StationDao stationDao;
	
    @Autowired
	private OpenApiDao openApiDao;
	
	@Override
	public List<Train> getNextTrainList() {
		List<Train> trainList = stationDao.getNextTrainList();
		return trainList;
	}
	
	@Override
	public boolean updateTimetable(int line, int subline) throws IOException, JSONException {
		List<StationTimetable> timetableList = openApiDao.getTimetable(line, subline, 1, 1000, "0226", 1, 2);
		
		int count = 0;
		for (StationTimetable timetable: timetableList) {
			count += stationDao.insertTimetable(timetable);
		}
		
		//List<StationTimetable> = openApiDao.getTimetable(startIndex, endIndex, externalCode, dayType, dirType);	
		
		return true;
	}
}
