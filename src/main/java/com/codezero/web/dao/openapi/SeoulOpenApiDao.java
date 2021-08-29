package com.codezero.web.dao.openapi;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Repository;

import com.codezero.web.dao.OpenApiDao;
import com.codezero.web.entity.StationTimetable;
import com.codezero.web.entity.Train;

@Repository
public class SeoulOpenApiDao implements OpenApiDao {
	private final static String TimeTable_Server = "http://openapi.seoul.go.kr";
	private final static String TimeTable_Port = "8088";
	private final static String TimeTable_Certication_Key = "737875717867757338376567685154";
	private final static String TimeTable_Service = "SearchSTNTimeTableByIDService";

	private final static String RealTime_Train_Server = "http://swopenapi.seoul.go.kr/api/subway";
	private final static String RealTime_Train_Certication_Key = "6a476f4957677573383471666e524f";
	private final static String RealTime_Service = "realtimeStationArrival";

	// Response File Type
	private final static String XML = "xml";   // Not Supported
	private final static String XMLF = "xmlf"; // Not Supported
	private final static String XLS = "xls";   // Not Supported
	private final static String JSON = "json";

	public SeoulOpenApiDao() {
	}
	
	private String getTimetableUrl(int startIndex, int endIndex, String externalCode, int dayType, int direction) {
		StringBuilder sb = new StringBuilder();
		sb.append(TimeTable_Server);
		sb.append(":");
		sb.append(TimeTable_Port);
		sb.append("/");
		sb.append(TimeTable_Certication_Key);
		sb.append("/");
		sb.append(JSON);
		sb.append("/");
		sb.append(TimeTable_Service);
		sb.append("/");
		sb.append(startIndex);
		sb.append("/");
		sb.append(endIndex);
		sb.append("/");
		sb.append(externalCode);
		sb.append("/");
		sb.append(dayType);
		sb.append("/");
		sb.append(direction);
		sb.append("/");

		return sb.toString();
	}
	
	private String getRealTimeTrainUrl(int startIndex, int endIndex, String stationId)
			throws UnsupportedEncodingException {
		byte[] stationIdBytes = stationId.getBytes("utf-8");
		String stationUtf8Codes = "";
		for (byte b: stationIdBytes)
			stationUtf8Codes += "%" + String.format("%02X", b);
		
		StringBuilder sb = new StringBuilder();
		sb.append(RealTime_Train_Server);
		sb.append("/");
		sb.append(RealTime_Train_Certication_Key);
		sb.append("/");
		sb.append(JSON);
		sb.append("/");
		sb.append(RealTime_Service);
		sb.append("/");
		sb.append(startIndex);
		sb.append("/");
		sb.append(endIndex);
		sb.append("/");
		sb.append(stationUtf8Codes);
		
		return sb.toString();
	}
	
	private String readText(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		char[] buffer = new char[1000];

		while (true) {
			int readCnt = rd.read(buffer);

			if (readCnt == -1)
				break;

			sb.append(buffer, 0, readCnt);
		}

		return sb.toString();
	}

	private JSONObject readJsonFile(String url) throws IOException, JSONException {
		InputStream inputStream = null;
		try {
			inputStream = new URL(url).openStream();
			BufferedReader rd = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("UTF-8")));
			String jsonText = readText(rd);
			JSONObject json = new JSONObject(jsonText);
			return json;
		} finally {
			if (inputStream != null)
				inputStream.close();
		}
	}

	// URL Example: 1번 데이터부터 1000번 데이터까지 사당역(0226), 평일(1), 2(CCW or Down)
	// "http://openapi.seoul.go.kr:8088/737875717867757338376567685154/json/SearchSTNTimeTableByIDService/1/1000/0226/1/2/";	
	@Override
	public List<StationTimetable> getTimetable(int line, int subline, int startIndex, int endIndex,
			String externalCode, int dayType, int direction) throws IOException, JSONException {
		String url = getTimetableUrl(startIndex, endIndex, externalCode, dayType, direction);
		
		JSONObject root = readJsonFile(url);
		JSONObject searchTimeTableService = (JSONObject)root.get(TimeTable_Service);																			 
		JSONArray rows = (JSONArray)(searchTimeTableService.get("row"));
		
		List<StationTimetable> timetableList = new ArrayList<StationTimetable>(); 
		for (int i = 0; i < rows.length(); i++) {
			JSONObject row = (JSONObject)rows.get(i);
			StationTimetable timetable = new StationTimetable(line, subline, row.get("STATION_NM").toString(), direction,
					row.get("ARRIVETIME").toString(), row.get("LEFTTIME").toString(),
					row.get("SUBWAYSNAME").toString(), row.get("SUBWAYENAME").toString(),
					row.get("TRAIN_NO").toString(), row.get("EXPRESS_YN").toString(), dayType);
			timetableList.add(timetable);
		}
		
		return timetableList;
	}

	// URL Example: 1번부터 100번 데이터 까지 "사당역" -> utf8 bytes -> "%EC%82%AC%EB%8B%B9", direction: 상행(0), 하행(1)
	// "http://swopenapi.seoul.go.kr/api/subway/6a476f4957677573383471666e524f/json/realtimeStationArrival/1/100/%EC%82%AC%EB%8B%B9"
	@Override
	public List<Train> getRealTimeNextTrainList(int subwayCode, String stationId, int direction)
			throws UnsupportedEncodingException, IOException, JSONException {
		String url = getRealTimeTrainUrl(1, 100, stationId);
		//System.out.println(url);
		JSONObject json = readJsonFile(url);
		String directionStr = "상행";		
		direction -= 1; // 1: 상행, 2: 하행 => 0: 상행, 1: 하행		
		// in case of line number 2
		if (subwayCode == 1002) {
			if (direction == 0)
				directionStr = "내선";
			else
				directionStr = "외선";
		}
		else {
			if (direction == 0)
				directionStr = "상행";
			else
				directionStr = "하행";
		}
		
		int cnt = 0;
		List<Train> trainList = new ArrayList<Train>();
		JSONArray realtimeArrivalList = (JSONArray) json.get("realtimeArrivalList");		
		for (int i = 0; i < realtimeArrivalList.length(); i++) {
			JSONObject row = (JSONObject)realtimeArrivalList.get(i);
			
			int rowSubwayCode = Integer.parseInt(row.get("subwayId").toString());
			
			if (rowSubwayCode == subwayCode &&
				row.get("updnLine").toString().equals(directionStr))
			{
				Train train = new Train();
				train.setTrainId(row.get("btrainNo").toString());
				train.setArriveSec(Integer.parseInt(row.get("barvlDt").toString()));
				train.setDestStationId(row.get("bstatnNm").toString());				
				trainList.add(train);
				
				cnt++;
				
				if (cnt >= 2)
					break;
			}
		}
		
		return trainList;
	}
}