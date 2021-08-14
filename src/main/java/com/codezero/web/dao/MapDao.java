package com.codezero.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.codezero.web.entity.Station;

@Mapper
public interface MapDao {
	@Select("SELECT A.LINE LINE, A.SUBLINE SUBLINE, LEVEL SEQ, A.STATION_ID ID, A.PREV_STATION_ID PREV_ID, "
			+     " A.NEXT_STATION_ID NEXT_ID, A.EXTERNAL_CODE EXTERNAL_CODE, B.ENAME ENAME, B.PHONE PHONE, B.ADDRESS ADDRESS "
		    + " FROM SUBWAY_LINE A, STATION B "
			+ " WHERE A.LINE = 2 "
			+ "   AND A.SUBLINE = 0 "
			+ "   AND A.STATION_ID = B.ID "
			+ "START WITH A.STATION_ID = '사당' "
			+ "CONNECT BY NOCYCLE PRIOR A.NEXT_STATION_ID = A.STATION_ID")
	@Results({
        @Result(property = "prevId", column = "PREV_ID"),
        @Result(property = "nextId", column = "NEXT_ID"),
        @Result(property = "externalCode", column = "EXTERNAL_CODE")
    })
	List<Station> getStationList();
}
