$(function() {
    // 프렌즈 글 상세보기
    $('.friends_box_body').on('click', function() {
        $('#show_page').removeClass('turnoff');
        $('#show_page').addClass('turnon');
    });
    // 게시글 상세보기창 닫기버튼
    $('#show_page_closer').on('click', function() {
        $('#show_page').removeClass('turnon');
        $('#show_page').addClass('turnoff');
        $('#reply_page').removeClass('turnon');
        $('#reply_page').addClass('turnoff');
    });
    // 프렌즈 게시글 댓글버튼
    $('.friends_reply').on('click', function() {
        $('#reply_page').removeClass('turnoff');
        $('#reply_page').addClass('turnon');
    });
    // 프렌즈 게시글 댓글창 닫기
    $('#reply_page_closer').on('click', function() {
        $('#reply_page').removeClass('turnon');
        $('#reply_page').addClass('turnoff');
    });
    // 무드페이지 글작성 버튼
    $('#write_button').on('click', function() {
        $('#diary_mood_button').removeClass('turnoff');
        $('#write_button').removeClass('turnon');
        $('#write_button').addClass('turnoff');
        $('#diary_mood_button').addClass('turnon');
    });
    // 무드페이지 글작성 버튼 클릭 후 나오는 감정선택창 닫기
    $('#mood_btn').on('click', function() {
        $('#diary_mood_button').removeClass('turnon');
        $('#diary_mood_button').addClass('turnoff');
        $('#write_button').removeClass('turnoff');
        $('#write_button').addClass('turnon');
    });
    // 무드페이지 글작성버튼 클릭 후 감정선택 -> 글작성 팝업
    $('.add_mood_container').on('click', function() {
        $('#write_page').removeClass('turnoff');
        $('#write_page').addClass('turnon');
    });
    // 글작성페이지 스티커 버튼
    $('#write_page_sticker').on('click', function() {
        $('#sticker_page').removeClass('turnoff');
        $('#sticker_page').addClass('turnon');
    });
    // 글작성페이지 스티커 선택창 닫기
    $('#sticker_page_closer').on('click', function() {
        $('#sticker_page').removeClass('turnon');
        $('#sticker_page').addClass('turnoff');
    });
    // 글장석페이지 닫기 버튼
    $('#write_page_closer').on('click', function() {
        $('#write_page').removeClass('turnon');
        $('#write_page').addClass('turnoff');
    });
    // 무드페이지 작성된 감정 클릭하면 상세보기 창 팝업
    $('#diary_mood_container').on('click', function() {
        $('#show_page').removeClass('turnoff');
        $('#show_page').addClass('turnon');
    });
    // 상세보기창 댓글팝업
    $('#show_page_reply').on('click', function() {
        $('#reply_page').removeClass('turnoff');
        $('#reply_page').addClass('turnon');
    });
    // 무다 base setting 중 무다의한마디 스위치
    $('#mooda_message_switch').on('click', function() {
        if(!$('#mooda_message_check').is(":checked")) {
            $('#mooda_message_switch > img').animate({
                left: 40
            },500);
            $('#mooda_message_switch > div').animate({
                left: 30
            },500);
        }else {
            $('#mooda_message_switch > img').animate({
                left: 0
            },500);
            $('#mooda_message_switch > div').animate({
                left: 0
            },500);
        }
    });
    // 무다 base setting 중 사진필터 스위치
    $('#filter_switch').on('click', function() {
        if(!$('#photo_filter_check').is(":checked")) {
            $('#filter_switch > img').animate({
                left: 40
            },500);
            $('#filter_switch > div').animate({
                left: 30
            },500);
        }else {
            $('#filter_switch > img').animate({
                left: 0
            },500);
            $('#filter_switch > div').animate({
                left: 0
            },500);
        }
    });
    // 무다 base setting중 커스텀감정 추가버튼 클릭시 팝업
    $('#custom_emotion_add').on('click', function() {
        $('#popup_background').removeClass('turnoff');
        $('#popup_background').addClass('turnon');
        $('#custom_add_popUp').removeClass('turnoff');
        $('#custom_add_popUp').addClass('turnon');
    });
    // 무다 base setting중 커스텀감정 삭제버튼 클릭시 팝업
    $('#custom_emotion_del').on('click', function() {
        $('#popup_background').removeClass('turnoff');
        $('#popup_background').addClass('turnon');
        $('#custom_del_popUp').removeClass('turnoff');
        $('#custom_del_popUp').addClass('turnon');
    });
    // 무다 setting 팝업 닫기버튼
    $('#popup_background .closebtn').on('click', function() {
        $('#popup_background').removeClass('turnon');
        $('#popup_background').addClass('turnoff');
        $('#custom_add_popUp').removeClass('turnon');
        $('#custom_add_popUp').addClass('turnoff');
    });
    // 무다 커스텀감점 삭제팝업 중 아니오 누를 시 팝업 종료
    $('#del_no').on('click', function() {
        $('#popup_background').removeClass('turnon');
        $('#popup_background').addClass('turnoff');
        $('#custom_del_popUp').removeClass('turnon');
        $('#custom_del_popUp').addClass('turnoff');
    });
    // 무다 기본설정 폰트사이즈 바
    $('#font_size_bar').on('click', function() {
        let num = 1;
        let num2 = 0;
        while(num < 8) {
            if($(`#font_size${num}_check`).is(':checked')) {
                num2 = num;
                num = 1;
                break;
            }
            num++;
        }
        while(num < 8) {
            $(`#font_size${num}`).removeClass('font_selected');
            num++;
        }
        
        $(`#font_size${num2}`).addClass('font_selected');
    });
    
     //달력 보이기 전환(J쿼리만 사용)

     // //달력 보이기 전환(J쿼리만 사용) - 폐기

    // $('.content_mainPage_mood1box_img1').on('click', function(){
    //     $('.content_mainPage_mood1box').addClass('turnoff')
    
    //     $('.diary_mood_button').removeClass('turnoff')
    //     $('.diary_mood_main').css({visibility: visible})

    // });
    
});