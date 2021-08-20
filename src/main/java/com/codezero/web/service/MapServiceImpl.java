package com.codezero.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codezero.web.dao.MapDao;
import com.codezero.web.entity.Station;
import com.codezero.web.entity.SubwayLineDetail;

@Service
public class MapServiceImpl implements MapService {
    @Autowired
	private MapDao mapDao;
	
	@Override
	public List<Station> getStationList() {
		List<Station> stationList = mapDao.getStationList();
		return stationList;
	}
	
	@Override
	public List<SubwayLineDetail> getSubwayLineDetailList() {
		List<SubwayLineDetail> subwayLineDetailList = mapDao.getSubwayLineDetailList();
		return subwayLineDetailList;
	}
}
