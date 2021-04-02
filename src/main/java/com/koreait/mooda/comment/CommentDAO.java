package com.koreait.mooda.comment;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mooda.db.SqlMapConfig;
import com.koreait.mooda.diary.DiaryDTO;
import com.koreait.mooda.diary.DiarySearch;
import com.koreait.mooda.member.MemberDTO;
import com.koreait.mooda.reply.ReplyDTO;


public class CommentDAO {

	List<CommentDTO> commentList = new ArrayList<>();
	SqlSessionFactory ssf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	public CommentDAO() {
		sqlsession = ssf.openSession(true);
		System.out.println("설정 성공");
	}	
	//전체
	public List<CommentDTO> getCommentList(){
		commentList = sqlsession.selectList("Comment.list");
		return commentList;
	}
	
	//검색
	public List<CommentDTO> getSearchList(CommentSearch search){
		commentList = sqlsession.selectList("Comment.search", search);
		return commentList;
	}
	
	//신고글만보기
	public List<CommentDTO> getCommentReport(){
		commentList = sqlsession.selectList("Comment.report");
		return commentList;
	}
	

	
	// 받아온 데이터로 update 시키고 결과를 int로 return 해주자
	public int edit(CommentDTO comment) {
		HashMap<String, String> dataMap = new HashMap<>();
		dataMap.put("c_idx", String.valueOf(comment.getC_idx()));
		dataMap.put("c_useridx", String.valueOf(comment.getC_useridx()));
		dataMap.put("c_didx", String.valueOf(comment.getC_didx()));
		dataMap.put("c_text", comment.getC_text());
		dataMap.put("c_regdate", comment.getC_regdate());
		dataMap.put("c_report", String.valueOf(comment.getC_report()));
		return sqlsession.update("Comment.edit", dataMap);
	}
	
	// 데이터를 삭제시켜주자
	public int del(CommentDTO comment) {
		HashMap<String, String> dataMap = new HashMap<>();
		dataMap.put("c_idx", String.valueOf(comment.getC_idx()));
		
		return sqlsession.delete("Comment.del", dataMap);
	}
	
}
