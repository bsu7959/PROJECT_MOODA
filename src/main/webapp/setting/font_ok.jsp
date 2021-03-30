<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="com.koreait.mooda.member.MemberDAO"/>
<%
	String fontSize = request.getParameter("font_size");
	fontSize = dao.fontSizing(fontSize);
	session.setAttribute("fontSize", fontSize);
	out.println(fontSize);
%>