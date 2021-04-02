<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8"); //받아올 데이터의 인코딩
%>
<jsp:useBean id="diary" class="com.koreait.mooda.diary.DiaryDTO" />
<jsp:useBean id="dao" class="com.koreait.mooda.diary.DiaryDAO" />
<jsp:setProperty property="*" name="diary"/>

<% if(dao.edit(diary) == 1){
%>
	<script>
		alert('수정되었습니다');
		location.href="./moodaDiary.jsp";
	</script>
<%
	}else{
%>
	<script>
		alert('수정실패!');
		history.back();
	</script>
<%
	}
%>