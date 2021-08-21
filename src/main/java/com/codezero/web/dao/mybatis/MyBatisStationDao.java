package com.codezero.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codezero.web.dao.StationDao;
import com.codezero.web.entity.StationTimetable;
import com.codezero.web.entity.Train;

@Repository
public class MyBatisStationDao implements StationDao {
	private StationDao mapper;
	
	@Autowired
	public MyBatisStationDao(SqlSession sqlSession) {
		mapper = sqlSession.getMapper(StationDao.class);
	}
	
	@Override
	public List<Train> getNextTrainList() {
		return mapper.getNextTrainList();
	}

	@Override
	public int insertTimetable(StationTimetable timetable) {
		return mapper.insertTimetable(timetable);
	}	
}
