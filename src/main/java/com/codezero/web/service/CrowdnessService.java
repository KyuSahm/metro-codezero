package com.codezero.web.service;

import java.io.IOException;

import org.json.JSONException;

public interface CrowdnessService {	
	void requestCalculation(int line, int subline, String trainId) throws IOException, JSONException;	
}
