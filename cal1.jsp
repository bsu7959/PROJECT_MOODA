<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.util.List" %>
<%@ page import="com.koreait.mooda.diary.*" %>
<jsp:useBean id="diaryDTO" class="com.koreait.mooda.diary.DiaryDTO"/>
<jsp:useBean id="diaryDAO" class="com.koreait.mooda.diary.DiaryDAO"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="../js/diary.js"></script>
    <%
		LocalDateTime today1 = LocalDateTime.now();
    	System.out.println(String.valueOf(today1));
    	String nowYear = String.valueOf(today1).substring(0,4);
    	String nowMonth = String.valueOf(today1).substring(5,7);
    	int nowDay=0;// = String.valueOf(request.getParameter("nowday"));
    	if(request.getParameter("mini_d_main1") != null && !request.getParameter("mini_d_main1").equals("")) {
    		nowYear = String.valueOf(request.getParameter("mini_d_main1"));
    		if(Integer.parseInt(String.valueOf(request.getParameter("mini_d_main2"))) + 1 < 10) {
    			nowMonth = "0" + String.valueOf(Integer.parseInt(String.valueOf(request.getParameter("mini_d_main2"))) + 1);
    		} else {
    			nowMonth = String.valueOf(Integer.parseInt(String.valueOf(request.getParameter("mini_d_main2"))) + 1);
    		}
    		nowDay = Integer.parseInt(String.valueOf(request.getParameter("mini_d_main3"))) - 1;
    		System.out.println(nowYear + "-" + nowMonth);
    		
    %>
    <script>
    	today = new Date(<%=request.getParameter("mini_d_main1")%>, <%=request.getParameter("mini_d_main2")%>, 1);
    	miniToday = new Date(<%=request.getParameter("mini_d_main1")%>, <%=request.getParameter("mini_d_main2")%>, 1);
    </script>
    <%
    	} else if(request.getParameter("year_to_month1") != null && !request.getParameter("year_to_month1").equals("")) {
    %>
    <script>
    	today = new Date(<%=request.getParameter("year_to_month1")%>, <%=request.getParameter("year_to_month2")%>, today.getDate());
    	miniToday = new Date(<%=request.getParameter("year_to_month1")%>, <%=request.getParameter("year_to_month2")%>, today.getDate());
    </script>
    <%	
    	}
    	System.out.println(nowYear + nowMonth);
    	List<DiaryDTO> diaryList = diaryDAO.list(nowYear, nowMonth, "3");
    %>
    <title>틀</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div class="container">
        <div class="header">
            <div class="nav_bar clear">
                <input type="search" class="search" placeholder="검색">
                <a href='../member/modify.jsp'><img src="../images/mypage-icon.png" alt="mypage"></a>
                <a href='../setting/base.jsp'><img src="../images/setting-icon.png" alt="setting"></a>
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
                    <p class="menu1_content_tab"><a href='../mainmood/mood1.jsp'>MOOD</a></p>
                    <p class="menu1_content_tab"><a href='./cal1.jsp' class="tab_highlighted">CALENDAR</a></p>
                    <p class="menu1_content_tab2"><a href='./cal1.jsp' class="tab_highlighted">DIARY</a></p>
                    <p class="menu1_content_tab2"><a href='./schedule.jsp'>SCHEDULE</a></p>
                    <p class="menu1_content_tab "><a href='../friends/friends.jsp'>FRIENDS</a></p>
                </div>
            </div>

            <div class="content">
                <div class="content_title">                 
                    <p class="title_year" onclick="submit()">2021</p>
                    <p class="title_month">April</p>
                    <div class="content_title_highlighting"></div>
                </div>
                <div class="content_mainPage">
                    <div class="day">
                        <div class="mon">MON</div>
                        <div class="tue">TUE</div>
                        <div class="wen">WED</div>
                        <div class="tur">TUR</div>
                        <div class="fri">FRI</div>
                        <div class="sat">SAT</div>
                        <div class="sun">SUN</div>
                    </div>
                    <div class="w1 week">
                        <div class="mon right_border">
                            <div id="date1" class="date"></div>
                            <div id="emotion1" class="emotion">1</div>
                        </div>
                        <div class="tue right_border">
                            <div id="date2" class="date"></div>
                            <div id="emotion2" class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date3" class="date"></div>
                            <div id="emotion3" class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date4" class="date"></div>
                            <div id="emotion4" class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date5" class="date"></div>
                            <div id="emotion5" class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date6" class="date"></div>
                            <div id="emotion6" class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date7" class="date"></div>
                            <div id="emotion7" class="emotion"></div>
                        </div>
                    </div>
                    <div class="w2 week">
                        <div class="mon right_border">
                            <div id="date8" class="date"></div>
                            <div id="emotion8" class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date9" class="date"></div>
                            <div id="emotion9" class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date10" class="date"></div>
                            <div id="emotion10" class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date11" class="date"></div>
                            <div id="emotion11" class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date12" class="date"></div>
                            <div id="emotion12" class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date13" class="date"></div>
                            <div id="emotion13" class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date14" class="date"></div>
                            <div id="emotion14" class="emotion"></div>
                        </div>
                    </div>
                    <div class="w3 week">
                        <div class="mon right_border">
                            <div id="date15" class="date"></div>
                            <div id="emotion15" class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date16" class="date"></div>
                            <div id="emotion16" class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date17" class="date"></div>
                            <div id="emotion17" class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date18" class="date"></div>
                            <div id="emotion18" class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date19" class="date"></div>
                            <div id="emotion19" class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date20" class="date"></div>
                            <div id="emotion20" class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date21" class="date"></div>
                            <div id="emotion21" class="emotion"></div>
                        </div>
                    </div>
                    <div class="w4 week">
                        <div class="mon right_border">
                            <div id="date22" class="date"></div>
                            <div id="emotion22" class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date23" class="date"></div>
                            <div id="emotion23" class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date24" class="date"></div>
                            <div id="emotion24" class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date25" class="date"></div>
                            <div id="emotion25" class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date26" class="date"></div>
                            <div id="emotion26" class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date27" class="date"></div>
                            <div id="emotion27" class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date28" class="date"></div>
                            <div id="emotion28" class="emotion">
                            <%
                            	for(DiaryDTO s : diaryList) {
                            		if(Integer.parseInt(s.getD_regdate().substring(8, 10)) == 28-nowDay) {
                            %>
                            <%=s.getD_mood()%>
                            <%
                            		}
                            	}
                            %>
                            </div>
                        </div>
                    </div>
                    <div class="w5 week">
                        <div class="mon right_border">
                            <div id="date29" class="date"></div>
                            <div id="emotion29" class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date30" class="date"></div>
                            <div id="emotion30" class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date31" class="date"></div>
                            <div id="emotion31" class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date32" class="date"></div>
                            <div id="emotion32" class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date33" class="date"></div>
                            <div id="emotion33" class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date34" class="date"></div>
                            <div id="emotion34" class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date35" class="date"></div>
                            <div id="emotion35" class="emotion"></div>
                        </div>
                    </div>
                    <div class="w6 week">
                        <div class="mon right_border">
                            <div id="date36" class="date"></div>
                            <div id="emotion36" class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date37" class="date"></div>
                            <div id="emotion37" class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date38" class="date"></div>
                            <div id="emotion38" class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date39" class="date"></div>
                            <div id="emotion39" class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date40" class="date"></div>
                            <div id="emotion40" class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date41" class="date"></div>
                            <div id="emotion41" class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date42" class="date"></div>
                            <div id="emotion42" class="emotion"></div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="menu2 clear">
                <div class="menu2_content">
                    <div class="prev_month" onclick="prevMiniDiary()"></div>
                    <div class="mini_title"></div>
                    <div class="mini_calendar" onclick="submitMiniDiary()">
                        <table width="100%" height="100%" border="0">
                            <tr>
                                <td id="miniDate1"></td>
                                <td id="miniDate2"></td>
                                <td id="miniDate3"></td>
                                <td id="miniDate4"></td>
                                <td id="miniDate5"></td>
                                <td id="miniDate6" class="miniSat"></td>
                                <td id="miniDate7" class="miniSun"></td>
                            </tr>
                            <tr>
                                <td id="miniDate8"></td>
                                <td id="miniDate9"></td>
                                <td id="miniDate10"></td>
                                <td id="miniDate11"></td>
                                <td id="miniDate12"></td>
                                <td id="miniDate13" class="miniSat"></td>
                                <td id="miniDate14" class="miniSun"></td>
                            </tr>
                            <tr>
                                <td id="miniDate15"></td>
                                <td id="miniDate16"></td>
                                <td id="miniDate17"></td>
                                <td id="miniDate18"></td>
                                <td id="miniDate19"></td>
                                <td id="miniDate20" class="miniSat"></td>
                                <td id="miniDate21" class="miniSun"></td>
                            </tr>
                            <tr>
                                <td id="miniDate22"></td>
                                <td id="miniDate23"></td>
                                <td id="miniDate24"></td>
                                <td id="miniDate25"></td>
                                <td id="miniDate26"></td>
                                <td id="miniDate27" class="miniSat"></td>
                                <td id="miniDate28" class="miniSun"></td>
                            </tr>
                            <tr>
                                <td id="miniDate29"></td>
                                <td id="miniDate30"></td>
                                <td id="miniDate31"></td>
                                <td id="miniDate32"></td>
                                <td id="miniDate33"></td>
                                <td id="miniDate34" class="miniSat"></td>
                                <td id="miniDate35" class="miniSun"></td>
                            </tr>
                            <tr>
                                <td id="miniDate36"></td>
                                <td id="miniDate37"></td>
                                <td id="miniDate38"></td>
                                <td id="miniDate39"></td>
                                <td id="miniDate40"></td>
                                <td id="miniDate41" class="miniSat"></td>
                                <td id="miniDate42" class="miniSun"></td>
                            </tr>
                        </table>
                    </div>
                    <div class="next_month" onclick="nextMiniDiary()"></div>
                </div>

            </div>
        </div>
        <!-- body end -->
        <!-- 팝업 -->
        <!-- 작성창 -->
        <div class="write_page turnoff" id="write_page">
        	<form id="diary_write" method="post" action="diary_write_ok.jsp">
	            <div class="write_page_closer" id="write_page_closer"></div>
	            <div class="write_page_box">
	                <div class="write_date_and_day">
	                    <span class="write_date" id="write_date">4</span>&nbsp;
	                    <span class="write_day" id="write_day">WED</span>
	                </div>
	                <div class="main_mood_img">
	                    <img src="../images/mood/mood-1.png" class="mood_img" id="mood_img">
	                    <input type="hidden" name="diary_mood" id="diary_mood" value="1">
	                </div>
	                <div class="write_content_all">
	                    <p class="write_title"><input type="text" name="diary_title" value="기분 좋아"></p>
	                    <div class="marker clear">
	                        <div class="marker_start">
	                            <img src="../images/marker/marker_start_0001_핑크.png" class="marker_start_img">
	                        </div>
	                        <div class="marker_middle">
	                            <img src="../images/marker/marker_middle_0001_핑크.png" class="marker_middle_img">
	                        </div>
	                        <div class="marker_end">
	                            <img src="../images/marker/marker_end_0001_핑크.png" class="marker_end_img">
	                        </div>
	                    </div>
	                    <p class="write_content"><textarea cols="35" rows="7" class="textarea" name="diary_content"></textarea></p>
	                    <p class="write_open">공개설정&nbsp; : 
	                    	<label><input type="radio" name="diary_open" value="0">&nbsp;전체공개&nbsp;</label>&nbsp;
	                    	<label><input type="radio" name="diary_open" value="1">&nbsp;친구공개&nbsp;</label>&nbsp;
	                    	<label><input type="radio" name="diary_open" value="2">&nbsp;나만보기&nbsp;</label>&nbsp;
	                    </p>
	                    <input type="hidden" name="diary_sticker" value="201">
	                </div>
	            </div>
	            <div class="write_page_img"><input type="file" name="diary_image" accept="image/*"></div>
	            <div class="write_page_font"></div>
	            <div class="write_page_sticker" id="write_page_sticker"></div>
	            <div class="write_page_done"><input type="image" class="write_page_done_btn" src="../images/check-icon.png" alt="작성완료버튼"></div>
            </form>
        </div>
        <!-- 열람창 -->
        <div class="show_page turnoff" id="show_page">
            <div class="show_page_closer" id="show_page_closer"></div>
            <div class="show_page_box">
                <div class="spb1">
                    <li class="spb1_Nday">1</li>
                    <li class="spb1_day">mon</li>
                </div>
                <div class="spb_img">
                    <img src="../images/mood/mood-8.png">
                </div>
                <div class="spb_title">완전 좋아!</div>
                <div class="spb_content">
                    <li>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Error laudantium sint, similique
                        temporibus aperiam quas sunt eos, dolore soluta rem nemo culpa vel est velit! Facilis labore id
                        quaerat numquam.</li>
                </div>
                <div class="spb_photo">
                    사진 공간
                </div>
                <div class="spb_loc"><img src="../images/map-icon.png" id="map_ic">건대봉자 마라탕</div>
            </div>
            <div class="show_page_edit"></div>
            <div class="show_page_delete"></div>
            <div class="show_page_share"></div>
            <div class="show_page_reply" id="show_page_reply"></div>
        </div>
        <!-- 댓글창 -->
        <div class="reply_page turnoff" id="reply_page">
            <div class="reply_page_closer" id="reply_page_closer"></div>
            <div class="reply_page_box">
                <div class="reply_content reply_idx1"></div>
                <div class="reply_content reply_idx2"></div>
                <div class="reply_content reply_idx3"></div>
                <div class="reply_content reply_idx4"></div>
                <div class="reply_content reply_idx5"></div>
            </div>
            <div class="reply_page_write">
                <form>
                    <textarea name="reply_write"></textarea>
                    <input type="submit" name="reply_submit" value="작성">
                </form>
            </div>
        </div>
        <!-- 스티커 -->
        <div class="sticker_page turnoff" id="sticker_page">
            <div class="sticker_page_nav">
            <%
            	for(int i=2; i<7; i++) {
          	%>
          		<img src="../images/sticker<%=i%>/sticker-<%=i%>-1.png" class="sticker_nav" id="sticker_nav<%=i%>" style="width : 40px; maring-left : 10px;">
            <%	
            	}
            %>
            </div>
            <div class="sticker_page_closer" id="sticker_page_closer"></div>
            <div class="sticker_page_box" style="overflow : scroll">
            <%
            	for(int i=1; i<21; i++) {
            		if(i<10) {
			%>
				<img src="../images/sticker2/sticker-2-<%=i%>.png" class="sticker_content" id="sticker_content2" style="width : 75px; height : 75px; margin : 12px;" value="20<%=i%>">
			<%           			
            		} else {
            %>
            	<img src="../images/sticker2/sticker-2-<%=i%>.png" class="sticker_content" id="sticker_content2" style="width : 75px; height : 75px; margin : 12px;" value="2<%=i%>">
            <%
            		}
            	}
            %>
            </div>

        </div>
        <footer>
            <p>copyright</p>
        </footer>
    </div>

	<form id="send_year" action="cal2.jsp" method="post">
   		<input type="hidden" id="month_to_year" name="month_to_year" value="6783">                 	
    </form>
    <form id="send_diary" action="cal1.jsp" method="post">
    	<input type="hidden" id="mini_d_main1" name="mini_d_main1" value="1111">
    	<input type="hidden" id="mini_d_main2" name="mini_d_main2" value="1">
    	<input type="hidden" id="mini_d_main3" name="mini_d_main3" value="1">
    </form>
    <script language="javascript" type="text/javascript">
        printCalendar();
        printMiniDiary();
        moodDefault(1);
    </script>
</body>

</html>