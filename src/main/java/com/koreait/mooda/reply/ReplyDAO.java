package com.koreait.mooda.reply;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mooda.comment.CommentDTO;
import com.koreait.mooda.db.SqlMapConfig;
import com.koreait.mooda.diary.DiaryDTO;

public class ReplyDAO {
	List<ReplyDTO> replyList = new ArrayList<>();
	SqlSessionFactory ssf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	public ReplyDAO() {
		sqlsession = ssf.openSession(true);
		System.out.println("설정 성공");
	}
	
	//검색
	public List<ReplyDTO> getReplyList(ReplyDTO reply){
		replyList = sqlsession.selectList("Reply.list", reply);
		return replyList;
	}
	
	//신고글만보기
	public List<ReplyDTO> getReplyReport(){
		replyList = sqlsession.selectList("Reply.report");
		return replyList;
	}
	// 받아온 데이터로 update 시키고 결과를 int로 return 해주자
	public int edit(ReplyDTO reply) {
		HashMap<String, String> dataMap = new HashMap<>();
		dataMap.put("r_idx", String.valueOf(reply.getR_idx()));
		dataMap.put("r_useridx", String.valueOf(reply.getR_useridx()));
		dataMap.put("r_cidx", String.valueOf(reply.getR_cidx()));
		dataMap.put("r_text", reply.getR_text());
		dataMap.put("r_regdate", reply.getR_regdate());
		dataMap.put("r_report", String.valueOf(reply.getR_report()));
		return sqlsession.update("Reply.edit", dataMap);
	}
	
	// 데이터를 삭제시켜주자
	public int del(ReplyDTO reply) {
		HashMap<String, String> dataMap = new HashMap<>();
		dataMap.put("r_idx", String.valueOf(reply.getR_idx()));
		
		return sqlsession.delete("Reply.del", dataMap);
	}
	
}
