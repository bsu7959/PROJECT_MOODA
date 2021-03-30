<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>틀</title>
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
                    <p class="menu1_content_tab"><a href='./background.jsp'>배경</a></p>
                    <p class="menu1_content_tab"><a href='./stats.jsp' class='tab_highlighted'>통계</a></p>
                </div>
            </div>

            <div class="content">
                <div class="content_title">
                    
                </div>
                <div class="content_mainPage">
                    <div class="stats_container">
                        <h2>감정 통계 보기</h2>
                        <p>월간 통계</p>
                        <div class="scroll_box">
                        <!-- 보여주는 칸 넣기 -->
                        <div>
                        <!-- 사용한 감정 이미지-->
                        
                        </div>
                        <div>
                        <!-- 스테이터스 바 -->
                        
                        </div>
                        <div>
                        <!-- 통계 숫자 표시구간 -->
                        
                        </div>
                        
                    	</div>
                    </div>
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