package com.koreait.mooda.comment;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.mooda.db.SqlMapConfig;


public class CommentDAO {

	List<CommentDTO> commentList = new ArrayList<>();
	SqlSessionFactory ssf = SqlMapConfig.getSqlMapInstance();
	SqlSession sqlsession;
	
	public CommentDAO() {
		sqlsession = ssf.openSession(true);
		System.out.println("설정 성공");
	}	
	
	public List<CommentDTO> getCommentList(){
		commentList = sqlsession.selectList("Comment.list");
		return commentList;
	}
}