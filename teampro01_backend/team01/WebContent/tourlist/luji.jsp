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
		                            <a href="">HOME</a><a href="farmersmarket.jsp">강화여행</a><a href="reports.jsp">레포츠 여행</a><span style="color:deeppink">루지체험</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">루지 체험</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/ruji01.jpg" id="intro_img1">
		                            <img src="./img/ruji03.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                일상을 넘어 새로움이 시작되는 곳, 강화씨사이드리조트 강화루지!
		                                스릴과 스피드를 즐길 수 있는 루지와 강화도의 특별한 풍경을 볼 수 있는 케이블카, 360도 회전하며 서해안의 상쾌함을 느낄 수 있는 전망대까지!<br>
		                                당신이 원하는 그 모든 것이 강화씨사이드리조트에 있습니다. 다양한 편의시설과 푸드코트, 그리고 캠핑형BBQ와 베이커리까지! 4가지 매력이 가득한 강화씨사이드리조트에 당신의 하루를 맡겨보세요.<br><br>
		
		                                【위치】 : 인천광역시 강화군 길상면 장흥로 217, 강화씨사이드리조트<br>
		                                【주요시설】 : 루지, 케이블카(곤돌라), 회전전망대, 캠핑형BBQ장, 베이커리카페(달스베이커리&탐앤탐스), 각종 편의시설<br>
		                                【이용시간】 : 09:30 ~ 18:30(평일 17:30)<br>
		                                【이용요금】 : 해당 시설 홈페이지 확인<br>
		                                【문의전화】 :  032-930-9000/9030<br>
		
		
		                                <br> [참고] 강화 씨사이드리조트 <br><br>
	                                <ul>
	                                    <li><a href="https://www.ganghwa-resort.co.kr/" target="_blank">
	                                        https://www.ganghwa-resort.co.kr/<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EA%B0%95%ED%99%94%EC%94%A8%EC%82%AC%EC%9D%B4%EB%93%9C%EB%A6%AC%EC%A1%B0%ED%8A%B8/data=!4m15!1m8!3m7!1s0x357b8761b44aadbd:0x2613494ddf85fa06!2z7J247LKc6rSR7Jet7IucIOqwle2ZlOq1sCDquLjsg4HrqbQg7J6l7Z2l66GcIDIxNw!3b1!8m2!3d37.6180014!4d126.498387!16s%2Fg%2F11tjfgldqd!3m5!1s0x357b871d594620c1:0xd870611ba66ca9a4!8m2!3d37.6172749!4d126.4992046!16s%2Fg%2F11f6xz4yk7?hl=ko&entry=ttu'">
	                                <img src="./img/map.png" id="map_img"> 
	                                <span>지도보기</span>
	                            </button>
	                            <button>
	                                <img src="./img/heart.png" id="btn_img"> 
	                                <span>좋아요</span>
	                            </button>
	                            <button onclick="window.location.href='reports.jsp'">
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