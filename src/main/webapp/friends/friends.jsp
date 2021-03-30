<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MOODA | FRIENDS</title>
    <link href="../css/style.css" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="../js/friends.js"></script>
</head>

<body>
    <div class="container">
        <div class="header">
            <div class="nav_bar clear">
                <input type="search" class="search" placeholder="검색">
                <a href='../member/modify.html'><img src="../images/mypage-icon.png" alt="mypage"></a>
                <a href='../setting/base.html'><img src="../images/setting-icon.png" alt="setting"></a>
                <a href='../member/login.html'><img src="../images/logout-icon.png" alt="logout"></a>
            </div>
        </div>
        <!-- header끝 -->

        <!-- body -->
        <div class="main_box">
            <div class="menu1">
                <div class="menu1_logo">
                    <a href='../mainmood/mood1.html'><img src="../images/mooda_img.png"></a>
                </div>
                <div class="menu1_content">
                    <p class="menu1_content_tab"><a href='../mainmood/mood1.html' class="title_font_size">MOOD</a></p>
                    <p class="menu1_content_tab"><a href='../maincal/cal.html' class="title_font_size">CALENDAR</a></p>
                    <p class="menu1_content_tab "><a href='./friends.html' class="tab_highlighted title_font_size">FRIENDS</a></p>
                    <p><a href='#' class="tab_highlighted sub_menu">친구들</a></p>
                    <p class="sub_menu"><a href='#' class=" sub_menu">추천</a></p>
                </div>
            </div>

            <div class="content">
                <div class="content_title">

                </div>
                <div class="content_mainPage friends_mainPage">

                    <div class="friends_box">
                        <div class="friends_box_header clear">
                            <p class="friends_id semi_tit_font_size">또리 (won0012)</p>
                            <input class="friends_follow" type="button" value="팔로우">
                            <div class="closeBtn">
                                <img src="../images/x-icon.png" class="closeBtnImg">
                            </div>
                        </div>

                        <div class="friends_box_body" id="friends_box_body">
                            <div class="friends_date_and_day">
                                <span class="friends_date title_font_size">4</span>&nbsp;
                                <span class="friends_day semi_tit_font_size">WED</span>
                            </div>
                            <div class="friends_content">
                                <div class="friends_emo">
                                    <img src="../images/mood/mood-2.png" class="friends_emo_img">
                                </div>
                                <p class="friends_feel semi_tit_font_size">평온해</p>
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
                                <p class="friends_board_text content_font_size">오늘의 일기!</p>
                            </div>
                        </div>

                        <div class="icon_bottom clear">
                            <div class="friends_reply">
                                <img src="../images/reply.png" class="replyBtn">
                            </div>
                            <div class="friends_report">
                                <img src="../images/report-icon.png" class="reportBtn">
                            </div>
                        </div>
                    </div>
                    
                    <!-- 반복문 처리 -->

                </div>
            </div>

            <div class="menu2 clear">
                <div class="menu2_content">

                </div>

            </div>
        </div>
        <!-- body end -->
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
                    <div class="show_page_reply"></div>
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
        <footer>
            <p>copyright</p>
        </footer>

    </div>

</body>

</html>