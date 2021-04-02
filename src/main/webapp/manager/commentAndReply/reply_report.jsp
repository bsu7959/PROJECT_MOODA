<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
request.setCharacterEncoding("UTF-8"); //받아올 데이터의 인코딩
%>
<!DOCTYPE html>
<html lang="en">
<jsp:useBean id="dto" class="com.koreait.mooda.reply.ReplyDTO" />
<jsp:useBean id="dao" class="com.koreait.mooda.reply.ReplyDAO" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="replyList" value="${dao.getReplyReport()}" />


<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자페이지 - 답글 관리</title>
<link href="../../css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div class="container">
		<div class="header">
			<div class="nav_bar clear">
				<img src="../../images/logout-icon.png">
			</div>
		</div>
		<!-- header끝 -->

		<!-- body -->
		<div class="main_box">
			<div class="manager_menu1">
				<div class="menu1_logo">
					<img src="../../images/mooda_img.png">
				</div>
				<div class="menu1_content">
					<h3 class="admin_menu">관리자 페이지</h3>
					<p class="menu1_content_tab"
						onclick="location.href='../member/moodaMem.jsp'">회원정보 관리</p>
					<p class="menu1_content_tab" onclick="location.href='#'">회원정보
						통계</p>
					<p class="menu1_content_tab"
						onclick="location.href='../diary/moodaDiary.jsp'">게시물 관리</p>
					<p class="menu1_content_tab now_page"
						onclick="location.href='../commentAndReply/moodaComment.jsp'">댓글/답글
						관리</p>
					<p class="menu1_content_tab" onclick="location.href='#.jsp'">공지사항</p>
					<p class="menu1_content_tab" onclick="location.href='#.jsp'">기타
						설정</p>
				</div>
			</div>

			<div class="manager_content">
				<div class="content_title">
					<p>신고된 답글(Reply) 관리</p>
				</div>
				<div class="content_mainPage manager_main_div">
					<input type="button" class="input_report_view_btn" value="신고글 보기" onclick="location.href='./reply_report.jsp'" style=" width: 100px; height: 30px; margin: 10px 10px 10px 10px;">
					
					<table>
						<tr>
							<th>답글 index</th>
							<th>작성자 index</th>
							<th>댓글 index</th>
							<th>답글내용</th>
							<th>답글 등록일자</th>
							<th>신고정보</th>
							<th>관리</th>
						</tr>
					

						<c:forEach var="reply" items="${replyList}" varStatus="status">
							<tr>
								<form method="post" name="replyForm">
									<form method="post" name="replyForm">
									<td><input type="text" class="manager_form_input" value="${reply.r_idx}" readonly="readonly" name="r_idx"></td>
									<td><input type="text" class="manager_form_input" value="${reply.r_useridx}" name="r_useridx" readonly="readonly"></td>
									<td><input type="text" class="manager_form_input" value="${reply.r_cidx}" name="r_cidx" readonly="readonly"></td>
									<td><input type="text" class="manager_form_input" value="${reply.r_text}" readonly="readonly" name="r_text"></td>
									<td><input type="text" class="manager_form_input" value="${reply.r_regdate}" name="r_regdate"></td>
									<td><input type="text" class="manager_form_input" value="${reply.r_report}" name="r_report"></td>
									<td><input type="submit" class="manager_form_submit" value="수정" formaction="./reply_update.jsp"><input type="submit" class="manager_form_submit" value="삭제" formaction="./reply_del.jsp"></td>
								</form>
								</form>
							</tr>
							
						</c:forEach>


					</table>

				</div>
			</div>
		</div>
		<!-- body end -->

		<footer>
			<p>copyright</p>
		</footer>

	</div>

</body>

</html>