package com.codezero.web.service;

import java.util.List;

import com.codezero.web.entity.Station;
import com.codezero.web.entity.SubwayLineDetail;

public interface MapService {
	List<Station> getStationList();
	List<SubwayLineDetail> getSubwayLineDetailList();
}
