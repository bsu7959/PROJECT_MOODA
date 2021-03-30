<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="dao" class="com.koreait.mooda.etc.EtcDAO"/>
<%  
	String fontSize = String.valueOf(session.getAttribute("fontSize")); 
	String fontStyle = String.valueOf(session.getAttribute("fontStyle"));
	List<String> fontList = new ArrayList<>();
	fontList = dao.getFontStyle();
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css" type="text/css"/>
    <title>MOODA | SETTING</title>
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
                    <p class="menu1_content_tab "><a href='./base.jsp' class="title_font_size">기본설정</a></p>
                    <p class="menu1_content_tab"><a href='./font.jsp' class='tab_highlighted title_font_size'>글자스타일</a></p>
                    <p class="menu1_content_tab"><a href='./background.jsp' class="title_font_size">배경</a></p>
                    <p class="menu1_content_tab"><a href='./stats.jsp' class="title_font_size">통계</a></p>
                </div>
            </div>

            <div class="content">
                <div class="content_title">

                </div>
                <div class="content_mainPage">
                
                <form name="setting" id="setting" method="get" action="#">
                    <div class="font_size">
                        <h3 class="setting_title title_font_size">글씨크기</h3>
                        <div class="font_size_bar" id="font_size_bar">
                            <span style="font-size: 13px;">A</span>
                            <span style="font-size: 19px;">A</span>
                            <div class="font_size_line"></div>
                            <label for="font_size1_check" onclick="sendRequest(this)"><div id="font_size1" class="font_size_point"></div></label>
                            <input type="radio" id="font_size1_check" name="font_size" value="-3">
                            <label for="font_size2_check" onclick="sendRequest(this)"><div id="font_size2" class="font_size_point"></div></label>
                            <input type="radio" id="font_size2_check" name="font_size" value="-2">
                            <label for="font_size3_check" onclick="sendRequest(this)"><div id="font_size3" class="font_size_point"></div></label>
                            <input type="radio" id="font_size3_check" name="font_size" value="-1">
                            <label for="font_size4_check" onclick="sendRequest(this)"><div id="font_size4" class="font_size_point"></div></label>
                            <input type="radio" id="font_size4_check" name="font_size" value="0" >
                            <label for="font_size5_check" onclick="sendRequest(this)"><div id="font_size5" class="font_size_point"></div></label>
                            <input type="radio" id="font_size5_check" name="font_size" value="1" >
                            <label for="font_size6_check" onclick="sendRequest(this)"><div id="font_size6" class="font_size_point"></div></label>
                            <input type="radio" id="font_size6_check" name="font_size" value="2">
                            <label for="font_size7_check" onclick="sendRequest(this)"><div id="font_size7" class="font_size_point"></div></label>
                            <input type="radio" id="font_size7_check" name="font_size" value="3">
                            <input type="hidden" id="font_size_result" value=<%=fontSize %>>
                            <input type="hidden" id="font_style_result" value=<%=fontStyle %>>
                        </div>
                    </div>
                    <script>
                    // 폰트 사이즈 조절, db연동
						'use strict';
                    let stop = true;
						$(function() {
							$("input:radio[name='font_size']:radio[value="+$('#font_size_result').val()+"]").prop('checked', true); 
							$("input:radio[name='font_size']:radio[value="+$('#font_size_result').val()+"]").prev().children().addClass('font_selected');
							font_sizing($('input:radio[name="font_size"]:checked').val());	
						});
						function sendRequest(e) {
							const font_size = $(e).next().val();
							const xhr = new XMLHttpRequest();
							xhr.open("GET", "font_ok.jsp?font_size="+font_size, true);
							xhr.send();

							xhr.onreadystatechange = function() {
								if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
									const result = xhr.responseText;
									font_sizing(result);
								}
							}
						}
						function font_sizing(font_size) {
							const content = parseInt(16) + parseInt(font_size);
							const semi = 20 + parseInt(font_size);
							const tit = 25 + parseInt(font_size);
							$('.content_font_size').css("font-size",content+"px");
							$('.semi_tit_font_size').css("font-size",semi+"px");
							$('.title_font_size').css("font-size",tit+"px");
						}
						// 폰트 스타일 db연동
						$(function() {
							font_style($('#font_style_result').val());
						});
						function font_style(font_style_result) {
							$('body').css("font-family",font_style_result);
						}
						function sendFontStyle(e) {
							if(stop){
								stop = false;
							setTimeout(function() {
								stop = true;
							}, 2000);
							const font_style_result = $(e).children().val();
							console.log(font_style_result);
							const xhr = new XMLHttpRequest();
							xhr.open("GET", "font_style_ok.jsp?font_style="+font_style_result, true);
							xhr.send();

							xhr.onreadystatechange = function() {
								if(xhr.readyState == XMLHttpRequest.DONE && xhr.status == 200) {
									const result = xhr.responseText;
									font_style(result);
								}
							}
							}
						}
					</script>
                    <div class="font_style">
                        <h3 class="setting_title title_font_size">글씨체</h3>
                        <div class="font_box">
<%
						for(String font : fontList){
%>
                            <div class="font_box_style" style="font-family: <%=font%>" onclick="sendFontStyle(this)">
                            	<input type="hidden" value=<%=font %>>
                                <span class="content_font_size">25 THU</span>
                                <span class="content_font_size"><%=font %></span>
                                <p class="content_font_size">완전 좋아<br>
                                이번주 3회 운동 목표 달성!<br>운동하니 몸도 가볍고 맘도 상쾌하다.</p>
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