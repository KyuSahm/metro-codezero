package com.codezero.web.dao;

import java.util.List;

import com.codezero.web.entity.Train;

public interface StationDao {
	List<Train> getNextTrainList();
}
