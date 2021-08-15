package com.codezero.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.codezero.web.entity.Station;
import com.codezero.web.entity.Train;

@Mapper
public interface StationDao {
	@Select("SELECT TRUNC((TO_DATE(CONCAT(TO_CHAR(SYSDATE, 'YYYY-MM-DD '), B.ARRIVETIME), 'YYYY-MM-DD HH24:MI:SS') - SYSDATE) * 24 * 60 * 60) ARRIVE_SEC, "
			+ "       B.DIRECTION, B.TRAIN_ID, B.DEST_STATION_ID, nvl(C.UPDATED, 'N') UPDATED, "
			+ "       nvl(C.CROWDEDNESS1, 2) CROWDEDNESS1, nvl(C.CROWDEDNESS2, 2) CROWDEDNESS2, nvl(C.CROWDEDNESS3, 2) CROWDEDNESS3, nvl(C.CROWDEDNESS4, 2) CROWDEDNESS4,"
			+ "       nvl(C.CROWDEDNESS5, 2) CROWDEDNESS5, nvl(C.CROWDEDNESS6, 2) CROWDEDNESS6, nvl(C.CROWDEDNESS7, 2) CROWDEDNESS7, nvl(C.CROWDEDNESS8, 2) CROWDEDNESS8, "
			+ "       nvl(C.CROWDEDNESS9, 2) CROWDEDNESS9, nvl(C.CROWDEDNESS10, 2) CROWDEDNESS10 "
			+ "  FROM (SELECT ROWNUM AS SEQ, A.* "
			+ "          FROM STATION_TIMETABLE A "
			+ "         WHERE LINE = 2 "
			+ "           AND SUBLINE = 0 "
			+ "           AND STATION_ID = '사당' "
			+ "           AND DIRECTION = 'CCW' "
			+ "           AND ARRIVETIME >= TO_CHAR(SYSDATE, 'hh24:mi:ss') "
			+ "           AND ARRIVETIME <= TO_CHAR(SYSDATE + 1 / 24, 'hh24:mi:ss') "
			+ "         ORDER BY ARRIVETIME ASC) B, "
			+ "        TRAIN C "
			+ "  WHERE B.LINE = C.LINE(+) "
			+ "    AND B.SUBLINE = C.SUBLINE(+) "
			+ "    AND B.TRAIN_ID = C.ID(+) "
			+ "    AND B.SEQ <= 2 ")
	@Results({
        @Result(property = "arriveSec", column = "ARRIVE_SEC"),
        @Result(property = "trainId", column = "TRAIN_ID"),
        @Result(property = "destStationId", column = "DEST_STATION_ID")        
    })	
	List<Train> getNextTrainList();
}
