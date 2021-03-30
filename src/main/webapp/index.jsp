<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("userid") != null && !session.getAttribute("userid").equals("")) {
		%>
			<script>
				location.href="./setting/font.jsp";
			</script>
		<%
	}
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./css/login_style.css" rel="stylesheet" type="text/css">
    <title>무다 로그인</title>
</head>

<body>
    <div class="container">
        <!-- body -->
        <div class="main_box">
            <div class="menu1">
                <div class="menu1_logo">
                    <!-- <img src="./구상중 img/mooda.png"> -->
                </div>
                <div class="menu1_content">
                    <p class="menu1_content_tab">MOOD</p>
                    <p class="menu1_content_tab">CALENDER</p>
                    <p class="menu1_content_tab">FRIENDS</p>
                </div>
            </div>

            <div class="content">    
                <div class="content_mainPage">

                    <div class="main_leftWrap">
                        <div class="main_left">
                            <ul>
                                <li class="frontLogo">
                                    <img src="./images/mooda_img.png">
                                </li>
                                <li class="frontTop">MOODA</li>
                                <li class="frontMiddle">내안의 나와 마주하는 시간</li>
                                <li class="frontBot">Mooddiary</li>

                            </ul>
                        </div>
                    </div>
                    
                    <div class="main_rightWrap">
                        <form name="regform" id="" method="post" action="./Member/login_ok.jsp" onsubmit="return sendit()">
                            <div class="mainRwrap">
                                <div class="mainLogin">
                                    <li class="logId">
                                        <input type="text" name="m_userid" class="idText" placeholder=" 아이디나 전화번호를 입력해주세요">
                                    </li>
                                    <li class="logPw">
                                        <input type="text" name="m_userpw" class="pwText" placeholder=" 비밀번호를 입력해주세요">
                                    </li>
                                </div>
                                <div class="logBtn">
    
                                    <input type="submit" value="로그인" class="lBtn">
    
                                </div>
                                <div class="snsBtn">
                                    <input type="button" value="페이스북 로그인" class="faceBtn">
                                    <input type="button" value="카카오톡 로그인" class="kktlBtn">
                                </div>
                                <div class="findBtn">
                                    <input type="button" value="아이디/비밀번호 찾기" class="idFind">
                                </div>
    
                                <div class="mainRBot">
                                <a href='./Member/regist.jsp'><input type="button" value="회원 가입"></a>
                                </div>
                            </div>                            
                        </form>
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