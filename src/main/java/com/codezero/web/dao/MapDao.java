package com.codezero.web.dao;

import java.util.List;

import com.codezero.web.entity.Station;
import com.codezero.web.entity.SubwayLineDetail;

public interface MapDao {
	List<Station> getStationList();
	List<SubwayLineDetail> getSubwayLineDetailList();
}
