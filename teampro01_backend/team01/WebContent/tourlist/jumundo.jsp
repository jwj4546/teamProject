<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="fonts.css">
    <link rel="stylesheet" href="normalize2.css">

    <style>
    /* 사이드메뉴 트랜지션*/
    #lnb li .sub2  { height:0; overflow:hidden; transition:0.8s; }
    #lnb li .sub2 { padding-left:28px; }
    #lnb li a.dp3 { color:#555; font-size:16px; font-weight: 600; }
    #lnb li:hover .sub2 { height: 290px; }
    


    #contents { height: 1300px; }
    .wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 300px; height: 300px; 
    border: 1px solid #000; position: relative; }
    .wrap .box li:hover #cover { display: block; cursor: pointer; }

    .box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
    font-weight: bold; font-size: 17px; background-color: #eccfe9; }

    #img { width: 300px; height: 300px; position: absolute; z-index: 10; }
    #cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
    </style>
</head>
   
<body>
<div id="hd">
	<%@ include file="/header.jsp" %>
</div>	
    <main id="contents" class="clr-fix">
        <div class="wrap clr-fix">
            <div class="contents_wrap">
                <aside id="left1">
                    <nav id="lnb">
                        <ul class="menu">
                            <li>
                                <a class="dp1">강화여행</a>
                                <ul class="sub">
                                 <li><a href="history.jsp" class="dp2">명소</a></li>
                                     <ul class="sub2">
                                        <li><a href="history.jsp" class="dp3">유적지</a> </li>
                                        <li><a href="temple.jsp" class="dp3">사찰</a> </li>
                                        <li><a href="beach.jsp" class="dp3">해변</a> </li>
                                        <li><a href="island.jsp" class="dp3">섬</a> </li>
                                    </ul>
                               	 <li><a href="jindallae.jsp" class="dp2" style="background-color: #f3b8da;">축제</a></li>
                                    <ul class="sub2">
                                        <li><a href="jindallae.jsp" class="dp3">고려산 진달래 축제</a> </li>
                                        <li><a href="samrang.jsp" class="dp3">삼랑성 역사문화 축제</a> </li>
                                        <li><a href="saewoo.jsp" class="dp3">강화새우젓 축제</a> </li>
                                        </ul>
                                 <li><a href="farmersmarket.jsp" class="dp2">체험여행</a></li>
                                    <ul class="sub2">
                                        <li><a href="farmersmarket.jsp" class="dp3">시장여행</a> </li>
                                        <li><a href="nadeulgil.jsp" class="dp3">강화 나들길</a> </li>
                                        <li><a href="reports.jsp" class="dp3">레포츠 여행</a> </li>
                                    </ul>
	                              </ul>
	                            </li>
		                      </ul>
		                    </nav>
		                </aside>
		                <div class="contents">
		                    <div class="breadcrumb">
		                        <p>
		                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="island.jsp">섬</a><span style="color:deeppink">주문도 여행</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">주문도 여행</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/jumundo01.jpg" id="intro_img1">
		                            <img src="./img/jumundo02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                *뒷장술해변 : 5월엔 해당화, 10월엔 기러기와 야생오리관찰 가능, 상합 등 조개캐기 체험<br>
		                                (민박집 경운기 사전신청 후 이용)<br>
		                                *서도중앙교회 : 한국 전통의 목조 건물 형식으로 지어진 특별한 건물<br>
		                                *영뜰해변 : 볼음도에서 가장 큰 해변으로 전망대 앞 망원경으로 저어새 관찰 가능<br>
		                                *볼음도 은행나무 : 800여년 이상 전해지는 나무로 가을에 노랗게 물든 나무 앞에서 사진찍기<br>
		                                *볼음저수지 : 계절별로 다른 꽃이 피어있으며, 조류관찰소에서 다양한 새 구경하기<br>
		                                *볼음도 저어새생태마을 : 볼음도 중심에 위치한 게스트하우스로 숙박과 체험 제공<br>
		                                *주문도길 : 11.3km, 3시간 소요<br>
		                                (주문도 선착장-배너머고개-주문저수지-서도초, 중, 고입구-주문진-서도중앙교회-해당화군락지-살꾸지-뒷장술-고마이-대빈창-주문도 선착장)
		                                *불음도길 : 13.6km, 3시간 30분 소요<br>
		                                (볼음도 선착장-물엄곶-조개골해변-영뜰해변-서도은행나무-봉화산-당아래 마을-볼음도 선착장)<br><br>
		
		
		                                【가는 방법】<br>
		                                *버스 : 강화버스터미널-18번 군내버스 이용 <br>
		                                *자가운전 : 강화대교-48국도 인화리에서 교동대교 이용(40분 소요)<br><br>
		                             
		                                【관련업체 문의전화】<br>
		                                삼보해운(주문도) : 032-932-6619 http://www.kangwha-sambo.co.kr/<br>
		                                민박 : 강화군 홈페이지 숙박정보 참고<br>
		
		                                자세한 사항은 관련 페이지 참조 부탁드립니다<br><br>
                                <ul>
                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/around/jumundo.jsp" target="_blank">
                                        https://www.ganghwa.go.kr/open_content/tour/around/jumundo.jsp<br></a></li>
                                </ul>
                        <div class="btn1">
                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%A3%BC%EB%AC%B8%EB%8F%84+%EC%84%A0%EC%B0%A9%EC%9E%A5/data=!3m1!4b1!4m6!3m5!1s0x357bf49386a78363:0x2d4729caf369dc7e!8m2!3d37.654618!4d126.235626!16s%2Fg%2F11c6d_q4qv?hl=ko&entry=ttu'">
                                <img src="./img/map.png" id="map_img"> 
                                <span>지도보기</span>
                            </button>
                            <button>
                                <img src="./img/heart.png" id="btn_img"> 
                                <span>좋아요</span>
                            </button>
                            <button onclick="window.location.href='island.jsp'">
                                <img src="./img/list.png" id="btn_img"> 
                                <span>목록으로</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
<div id="ft">
	<%@ include file="/footer.jsp" %>
</div>

</body>
</html>