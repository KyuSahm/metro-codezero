package com.codezero.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codezero.web.dao.StationDao;
import com.codezero.web.entity.Train;

@Service
public class StationServiceImpl implements StationService {
    @Autowired
	private StationDao stationDao;
	
	@Override
	public List<Train> getNextTrainList() {
		List<Train> trainList = stationDao.getNextTrainList();
		return trainList;
	}
}
