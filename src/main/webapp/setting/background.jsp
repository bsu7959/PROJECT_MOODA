<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="dao" class="com.koreait.mooda.etc.EtcDAO"/>
<%
	List<String> backgroundList = new ArrayList<>();
	backgroundList = dao.getBackground();
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MOODA | SETTING</title>
    <link rel="stylesheet" href="../css/style.css" type="text/css"/>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="../js/friends.js"></script>
</head>

<body>
    <div class="container">
        <div class="header">
            <div class="nav_bar clear set_nav">
                <a href='../member/modify.jsp'><img src="../images/mypage-icon.png" alt="mypage"></a>
                <a href='./base.jsp'><img src="../images/setting-icon.png" alt="setting"></a>
                <a href='../member/login.jsp'><img src="../images/logout-icon.png" alt="logout"></a>
            </div>
        </div>
        <!-- header끝 -->
        <!-- body -->
        <div class="main_box">
            <div class="menu1">
                <div class="menu1_logo">
                    <a href='../mainmood/mood1.jsp'><img src="../images/mooda_img.png"></a>
                </div>
                <div class="menu1_content">
                    <p class="menu1_content_tab "><a href='./base.jsp'>기본설정</a></p>
                    <p class="menu1_content_tab"><a href='./font.jsp'>글자스타일</a></p>
                    <p class="menu1_content_tab"><a href='./background.jsp' class='tab_highlighted'>배경</a></p>
                    <p class="menu1_content_tab"><a href='./stats.jsp'>통계</a></p>
                </div>
            </div>

            <div class="content">
                <div class="content_title">

                </div>
                <div class="content_mainPage">
                <form name="setting" id="setting" method="get" action="#">
                    <div class="background_style">
                        <h3 class="setting_title">배경</h3>
                        <div class="background_box">
                        <script>
                        	function sendBackground(e) {
                        		const background = $(e).children().val();
    							const xhr = new XMLHttpRequest();
    							xhr.open("GET", "background_ok.jsp?background="+background, true);
    							xhr.send();

    							xhr.onreadystatechange = function() {
    								if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
    									const result = xhr.responseText;
    								}
    							}
                        	}
                        </script>
<%

	for(String background : backgroundList){
		
%>
                            <div class="background_box_style" style="background-color: <%=background%>;" onclick="sendBackground(this)">
                            	<input type="hidden" value=<%=background %>>
                                <span style="background-color: <%=background%>;"><ins style="background-color: <%=background%>;">25</ins> THU</span>
                                <div class="bg_img" style="background-color: <%=background%>;">
                                    <img src="../images/mood/mood-3.png" alt="이미지" style="background-color: <%=background%>;">
                                </div>
                                <p style="background-color: <%=background%>;">기분 최고!</p>
                            </div>
<%
	}
%>                     
                        </div>
                    </div>
                     <input type="submit" class="settingBtn" value="저장" /> 
                 </form>

                </div>
            </div>

            <div class="menu2 clear">
                <div class="menu2_content">

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