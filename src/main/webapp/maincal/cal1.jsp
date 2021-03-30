<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700;900&display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <script src="../js/calendar.js"></script>
    <%
    	if(request.getParameter("year_to_month1") != null && !request.getParameter("year_to_month1").equals("")) {
    %>
    <script>
    	today = new Date(<%=request.getParameter("year_to_month1")%>, <%=request.getParameter("year_to_month2")%>, today.getDate());
    	miniToday = new Date(<%=request.getParameter("year_to_month1")%>, <%=request.getParameter("year_to_month2")%>, today.getDate());
    </script>
    <%	
    	}
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
                        <div class="wen">WEN</div>
                        <div class="tur">TUR</div>
                        <div class="fri">FRI</div>
                        <div class="sat">SAT</div>
                        <div class="sun">SUN</div>
                    </div>
                    <div class="w1 week">
                        <div class="mon right_border">
                            <div id="date1" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date2" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date3" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date4" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date5" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date6" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date7" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                    </div>
                    <div class="w2 week">
                        <div class="mon right_border">
                            <div id="date8" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date9" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date10" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date11" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date12" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date13" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date14" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                    </div>
                    <div class="w3 week">
                        <div class="mon right_border">
                            <div id="date15" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date16" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date17" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date18" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date19" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date20" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date21" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                    </div>
                    <div class="w4 week">
                        <div class="mon right_border">
                            <div id="date22" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date23" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date24" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date25" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date26" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date27" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date28" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                    </div>
                    <div class="w5 week">
                        <div class="mon right_border">
                            <div id="date29" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date30" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date31" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date32" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date33" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date34" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date35" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                    </div>
                    <div class="w6 week">
                        <div class="mon right_border">
                            <div id="date36" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tue right_border">
                            <div id="date37" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="wen right_border">
                            <div id="date38" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="tur right_border">
                            <div id="date39" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="fri right_border">
                            <div id="date40" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sat right_border">
                            <div id="date41" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                        <div class="sun">
                            <div id="date42" class="date"></div>
                            <div class="emotion"></div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="menu2 clear">
                <div class="menu2_content">
                    <div class="prev_month" onclick="prevMiniCalendar()"></div>
                    <div class="mini_title"></div>
                    <div class="mini_calendar" onclick="moveMainCalendar()">
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
                    <div class="next_month" onclick="nextMiniCalendar()"></div>
                </div>

            </div>
        </div>
        <!-- body end -->
        <!-- 팝업 -->
        <!-- 작성창 -->
        <div class="write_page turnoff">
            <div class="write_page_closer"></div>
            <div class="write_page_box">
                <div class="write_date_and_day">
                    <span class="write_date">4</span>&nbsp;
                    <span class="write_day">WED</span>
                </div>
                <div class="main_mood_img">
                    <img src="../images/mood/mood-8.png" class="mood_img">
                </div>
                <div class="write_content_all">
                    <p class="write_title">기분 좋아</p>
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
                    <p class="write_content">내용</p>
                </div>
            </div>
            <div class="write_page_img"></div>
            <div class="write_page_font"></div>
            <div class="write_page_sticker"></div>
            <div class="write_page_done"></div>
        </div>
        <!-- 열람창 -->
        <div class="show_page turnoff">
            <div class="show_page_closer"></div>
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
            <div class="show_page_reply"></div>
        </div>
        <!-- 댓글창 -->
        <div class="reply_page turnoff">
            <div class="reply_page_closer"></div>
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
        <div class="sticker_page turnoff">
            <div class="sticker_page_nav">

            </div>
            <div class="sticker_page_closer"></div>
            <div class="sticker_page_box"></div>

        </div>
        <footer>
            <p>copyright</p>
        </footer>
    </div>

	<form id="send_year" action="cal2.jsp" method="post">
   		<input type="hidden" id="month_to_year" name="month_to_year" value="6783">                 	
    </form>
    <script language="javascript" type="text/javascript">
        printCalendar();
        printMiniCalendar();
    </script>
</body>

</html>