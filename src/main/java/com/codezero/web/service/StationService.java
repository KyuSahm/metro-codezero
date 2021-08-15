package com.codezero.web.service;

import java.util.List;

import com.codezero.web.entity.Train;

public interface StationService {

	List<Train> getNextTrainList();
}
