package com.codezero.web.dao;

import java.util.List;

import com.codezero.web.entity.Station;
import com.codezero.web.entity.SubwayLineDetail;

public interface MapDao {
	List<Station> getStationList(int line, int subline);
	List<SubwayLineDetail> getSubwayLineDetailList();
	int getSubwayCode(int line, int subline);
}
