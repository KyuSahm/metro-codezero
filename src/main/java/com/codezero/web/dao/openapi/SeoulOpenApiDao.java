package com.codezero.web.dao.openapi;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
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

@Repository
public class SeoulOpenApiDao implements OpenApiDao {
	private final static String Server = "http://openapi.seoul.go.kr";
	private final static String Port = "8088";
	private final static String Certication_Key = "737875717867757338376567685154";
	private final static String SearchTimeTable = "SearchSTNTimeTableByIDService";

	// Response File Type
	private final static String XML = "xml";
	private final static String XMLF = "xmlf";
	private final static String XLS = "xls";
	private final static String JSON = "json";

	private String server;
	private String port;
	private String reponseFileType;
	private String certificateKey;
	private String serviceName;

	public SeoulOpenApiDao() {
		setServer(Server);
		setPort(Port);
		setFileType(JSON);
		setCertificateKey(Certication_Key);
		setServiceName(SearchTimeTable);
	}

	private String getUrl(int startIndex, int endIndex, String externalCode, int dayType, int direction) {
		StringBuilder sb = new StringBuilder();
		sb.append(this.server);
		sb.append(":");
		sb.append(this.port);
		sb.append("/");
		sb.append(this.certificateKey);
		sb.append("/");
		sb.append(this.reponseFileType);
		sb.append("/");
		sb.append(this.serviceName);
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

	@Override
	public void setServer(String server) {
		this.server = server;
	}

	@Override
	public void setPort(String port) {
		this.port = port;
	}

	@Override
	public void setCertificateKey(String certificateKey) {
		this.certificateKey = certificateKey;
	}

	@Override
	public void setFileType(String reponseFileType) {
		this.reponseFileType = reponseFileType;
	}

	@Override
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	// URL Example: 1번 데이터부터 1000번 데이터까지 사당역(0226), 평일(1), 2(CCW or Down)
	// "http://openapi.seoul.go.kr:8088/737875717867757338376567685154/json/SearchSTNTimeTableByIDService/1/1000/0226/1/2/"; 
	
	@Override
	public List<StationTimetable> getTimetable(int line, int subline, int startIndex, int endIndex,
			String externalCode, int dayType, int direction) throws IOException, JSONException {
		String url = getUrl(startIndex, endIndex, externalCode, dayType, direction);
		
		System.out.println("URL:"+ url);
		JSONObject root = readJsonFile(url);
		JSONObject searchTimeTableService = (JSONObject)root.get(SearchTimeTable);																			 
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
}
