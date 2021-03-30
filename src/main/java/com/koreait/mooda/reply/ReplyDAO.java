package com.koreait.mooda.reply;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mooda.db.SqlMapConfig;
import com.koreait.mooda.diary.DiaryDTO;

public class ReplyDAO {
	List<DiaryDTO> replyList = new ArrayList<>();
	SqlSessionFactory ssf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	public ReplyDAO() {
		sqlsession = ssf.openSession(true);
		System.out.println("설정 성공");
	}
	
	public List<DiaryDTO> getReplyList(){
		replyList = sqlsession.selectList("Reply.list");
		return replyList;
	}
}
