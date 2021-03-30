package com.koreait.mooda.schedule;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mooda.db.SqlMapConfig;
import com.koreait.mooda.diary.DiaryDTO;

public class ScheduleDAO {


	List<DiaryDTO> scheduleList = new ArrayList<>();
	SqlSessionFactory ssf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	public List<DiaryDTO> getScheduleList(){
		scheduleList = sqlsession.selectList("Schedule.list");
		return scheduleList;
	}
	
}
