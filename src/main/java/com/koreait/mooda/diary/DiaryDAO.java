package com.koreait.mooda.diary;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mooda.db.SqlMapConfig;

public class DiaryDAO {

	List<DiaryDTO> diaryList = new ArrayList<>();
	List<Integer> mcList = new ArrayList<>();
	SqlSessionFactory ssf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	public DiaryDAO() {
		sqlsession = ssf.openSession(true);
		System.out.println("설정 성공");
	}
	
	public List<DiaryDTO> getDiaryList(){
		diaryList = sqlsession.selectList("Diary.list");
		return diaryList;
	}
	
	public List<Integer> moodCount(String d_useridx){
		mcList = sqlsession.selectList("Diary.moodcount");
		
		return mcList;
	}
}
