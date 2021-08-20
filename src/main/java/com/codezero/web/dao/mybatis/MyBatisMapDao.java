package com.codezero.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.codezero.web.dao.MapDao;
import com.codezero.web.entity.Station;
import com.codezero.web.entity.SubwayLineDetail;

@Repository
public class MyBatisMapDao implements MapDao {
	private MapDao mapper;
	
	@Autowired
	public MyBatisMapDao(SqlSession sqlSession) {
		mapper = sqlSession.getMapper(MapDao.class);
	}

	@Override
	public List<Station> getStationList() {
		return mapper.getStationList();
	}

	@Override
	public List<SubwayLineDetail> getSubwayLineDetailList() {
		return mapper.getSubwayLineDetailList();
	}

}
