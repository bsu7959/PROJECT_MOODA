<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8"); //받아올 데이터의 인코딩
%>
<jsp:useBean id="member" class="com.koreait.mooda.member.MemberDTO"/>
<jsp:useBean id="dao" class="com.koreait.mooda.member.MemberDAO"/>
<jsp:setProperty property="*" name="member"/>

<% if(dao.del(member)==1){
%>
	<script>
		alert('삭제되었습니다');
		location.href="./moodaMem.jsp";
	</script>
<%
	}else{
%>
	<script>
		alert('삭제실패!');
		history.back();
	</script>
<%
	}
%>