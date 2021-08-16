package com.codezero.web.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.codezero.web.entity.Station;

@Mapper
public interface MapDao {
	@Select("  select a.seq, a.line line, a.subline subline, a.station_id id, a.prev_station_id prev_id,"
			+ "	      a.next_station_id next_id, a.external_code external_code, b.ename ename, b.phone phone, b.address address "
			+ "  from subway_line a, station b "
			+ " where a.line = 2"
			+ "	  and a.subline = 0 \r\n"
			+ "	  and a.station_id = b.id\r\n"
			+ " order by a.line, a.subline, a.seq")
	@Results({
        @Result(property = "prevId", column = "prev_id"),
        @Result(property = "nextId", column = "next_id"),
        @Result(property = "externalCode", column = "external_code")
    })
	List<Station> getStationList();
}
