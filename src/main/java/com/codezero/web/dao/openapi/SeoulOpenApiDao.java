package com.codezero.web.dao.openapi;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.codezero.web.dao.OpenApiDao;
import com.codezero.web.entity.StationTimetable;

@Repository
public class SeoulOpenApiDao implements OpenApiDao {
	private final static String CERTIFICATE_KEY = "737875717867757338376567685154";
	
	private ReponseFileType reponseFileType;
	private String certificateKey;
	private String serviceName;
	
	public SeoulOpenApiDao() {
		setFileType(ReponseFileType.JSON);
		setCertificateKey(CERTIFICATE_KEY);		
	}
	
	@Override
	public void setFileType(ReponseFileType reponseFileType) {
		this.reponseFileType = reponseFileType;		
	}

	@Override
	public void setCertificateKey(String certificateKey) {
		this.certificateKey = certificateKey;		
	}

	@Override
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	@Override
	public List<StationTimetable> getTimetable(int startIndex, int endIndex, int externalCode, DayType dayType,
			DirectionType dirType) {
		// TODO Auto-generated method stub
		return null;
	}	
}
