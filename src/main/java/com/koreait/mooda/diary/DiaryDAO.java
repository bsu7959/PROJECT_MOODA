package com.koreait.mooda.diary;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mooda.db.SqlMapConfig;
import com.koreait.mooda.member.MemberDTO;
import com.koreait.mooda.reply.ReplyDTO;

public class DiaryDAO {

	List<DiaryDTO> diaryList = new ArrayList<>();
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
	
	public List<DiaryDTO> getSearchList(DiarySearch search){
		diaryList = sqlsession.selectList("Diary.search", search);
		return diaryList;
	}
	
	//신고글만보기
		public List<DiaryDTO> getDiaryReport(){
			diaryList = sqlsession.selectList("Diary.report");
			return diaryList;
		}
			
	// 받아온 데이터로 update 시키고 결과를 int로 return 해주자
	public int edit(DiaryDTO diary) {
		HashMap<String, String> dataMap = new HashMap<>();
		dataMap.put("d_useridx", String.valueOf(diary.getD_useridx()));
		dataMap.put("d_mood", String.valueOf(diary.getD_mood()));
		dataMap.put("d_regdate", diary.getD_regdate());
		dataMap.put("d_content", diary.getD_content());
		dataMap.put("d_open", String.valueOf(diary.getD_open()));
		dataMap.put("d_sticker", String.valueOf(diary.getD_sticker()));
		dataMap.put("d_img", diary.getD_img());
		dataMap.put("d_latitude", String.valueOf(diary.getD_latitude()));
		dataMap.put("d_longitude", String.valueOf(diary.getD_longitude()));
		dataMap.put("d_report", String.valueOf(diary.getD_report()));
		dataMap.put("d_idx", String.valueOf(diary.getD_idx()));
		return sqlsession.update("Diary.edit", dataMap);
	}
	
	
	// 데이터를 삭제시켜주자
	public int del(DiaryDTO diary) {
		HashMap<String, String> dataMap = new HashMap<>();
		dataMap.put("d_idx", String.valueOf(diary.getD_idx()));
		
		return sqlsession.delete("Diary.del", dataMap);
	}
	
}
