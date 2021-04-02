<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
request.setCharacterEncoding("UTF-8"); //받아올 데이터의 인코딩
%>
<!DOCTYPE html>
<html lang="en">
<jsp:useBean id="dto" class="com.koreait.mooda.comment.CommentDTO" />
<jsp:useBean id="dao" class="com.koreait.mooda.comment.CommentDAO" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="commentList" value="${dao.getCommentList()}" />

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자페이지 - 댓글관리</title>
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
					<p>댓글(Comment) 관리</p>
				</div>
				<div class="content_mainPage manager_main_div">

					<div class="searchTap">
						<form action="./comment_search.jsp">
							<select name="searchKey" class="manager_main_select">
								<option value="c_idx">댓글 index</option>
								<option value="c_useridx">작성자 index</option>
								<option value="c_didx">게시물 index</option>
								<option value="c_text">댓글내용</option>
								<option value="c_regdate">댓글 등록일자</option>
							</select> <input type="text" class="input_search" name="searchValue">
							<input type="submit" class="input_submit" value="검색"> <input
								type="button" class="input_report_view_btn" value="신고글 보기"
								onclick="location.href='./comment_report.jsp'">
						</form>
					</div>

					<table>
						<tr>
							<th>댓글 index</th>
							<th>작성자 index</th>
							<th>게시물 index</th>
							<th>댓글내용</th>
							<th>댓글 등록일자</th>
							<th>신고정보</th>
							<th>답글 보기</th>
							<th>관리</th>
						</tr>

						<c:forEach var="comment" items="${commentList}" varStatus="status">
							<tr>
								<form method="post" name="commentForm">
									<td><input type="text" class="manager_form_input"
										value="${comment.c_idx}" readonly="readonly" name="c_idx"></td>
									<td><input type="text" class="manager_form_input"
										value="${comment.c_useridx}" name="c_useridx"
										readonly="readonly"></td>
									<td><input type="text" class="manager_form_input"
										value="${comment.c_didx}" name="c_didx" readonly="readonly"></td>
									<td><input type="text" class="manager_form_input"
										value="${comment.c_text}" name="c_text"></td>
									<td><input type="text" class="manager_form_input"
										value="${comment.c_regdate}" name="c_regdate"
										readonly="readonly"></td>
									<td><input type="text" class="manager_form_input"
										value="${comment.c_report}" name="c_report"
										readonly="readonly"></td>
									<td><input type="submit" class="manager_form_rep" value="답글 보기"
										formaction="./moodaReply.jsp"></td>
									<td><input type="submit" class="manager_form_submit"
										value="수정" formaction="./comment_update.jsp"><input
										type="submit" class="manager_form_submit" value="삭제"
										formaction="./comment_del.jsp"></td>
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