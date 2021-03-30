<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="com.koreait.mooda.member.MemberDAO"/>
<%
	request.setCharacterEncoding("UTF-8");
	System.out.println(request.getParameter("font_style"));
	String fontStyle = request.getParameter("font_style");
	fontStyle = dao.fontStyle(fontStyle);
	session.setAttribute("fontStyle", fontStyle);
	out.println(fontStyle);
%>