package com.codezero.web.service;

import java.io.IOException;
import java.util.List;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codezero.web.dao.MapDao;
import com.codezero.web.dao.OpenApiDao;
import com.codezero.web.dao.StationDao;
import com.codezero.web.entity.Station;
import com.codezero.web.entity.StationTimetable;
import com.codezero.web.entity.Train;

@Service
public class StationServiceImpl implements StationService {
    @Autowired
	private StationDao stationDao;
	
    @Autowired
	private MapDao mapDao;
	
    @Autowired
	private OpenApiDao openApiDao;
	
	@Override
	public List<Train> getNextTrainList(int line, int subline, String stationId, int dayType, int direction) {
		List<Train> trainList = stationDao.getNextTrainList(line, subline, stationId, dayType, direction);
		return trainList;
	}	
	
	@Override
	public boolean updateTimetable(int line, int subline) throws IOException, JSONException {
		
		List<Station> stationList = mapDao.getStationList(line, subline);
		
		for (Station station: stationList) {
			String stationCode = station.getExternalCode();
			if (stationCode.length() == 3) {
				stationCode = "0" + stationCode;
			}
			
			// 1: 평일, 2: 토요일, 3: 휴일
			for (int dayType = 1; dayType <= 3; dayType++) {
				for (int direction = 1; direction <= 2; direction++) {
					try {
						List<StationTimetable> timetableList = openApiDao.getTimetable(line, subline, 1,
																					   1000, stationCode, dayType, direction);
						
						int count = 0;
						for (StationTimetable timetable: timetableList) {
							count += stationDao.insertTimetable(timetable);
						}
						//System.out.printf("%d Rows are inserted for line: %d, subline: %d, stationCode: %s, dayType: %d, direction: %d\n",
						//		          count, line, subline, stationCode, dayType, direction);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
		
		return true;
	}
}
