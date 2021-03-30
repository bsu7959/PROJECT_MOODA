<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.koreait.mooda.member.MemberDTO" %>
<jsp:useBean id="member" class="com.koreait.mooda.member.MemberDTO"/>
<jsp:useBean id="dao" class="com.koreait.mooda.member.MemberDAO"/>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:setProperty property="*" name="member"/>
<%	
	member = dao.login(member);
	if(member != null) {
		session.setAttribute("idx", member.getM_idx());
		session.setAttribute("userid", member.getM_userid());
		session.setAttribute("name", member.getM_name());
		session.setAttribute("fontSize", member.getM_fontSize());
		session.setAttribute("fontStyle", member.getM_fontStyle());
		%>
			<script>
				alert('로그인 성공');
				location.href="../setting/font.jsp";
			</script>
		<%
	}else {
		%>
			<script>
				alert('로그인 실패');
				history.back();
			</script>
		<%
	}
%>
