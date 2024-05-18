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
		                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="history.jsp">유적지</a><span style="color:deeppink">연미정</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">연미정</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/yeonmijeong01.jpg" id="intro_img1">
		                            <img src="./img/yeonmijun02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                【문화재 구분】 : 국가>사적<br>
		                                【관람소요시간】 : 20분소요<br>
		                                【소재지】 : (23021) 인천 강화군 강화읍 월곳리 242<br><br>
		                                한강과 임진강의 합해진 물줄기가 강화도 동북단에 이르러 서쪽과 남쪽으로 나뉘어 흐르는데, 이 모양이 마치 제비꼬리 같다고 해서 정자 이름을 연미정이라 했다 한다.<br>
		                                언제 처음 지었는지 정확히 알지 못하나 고려 고종이 사립교육기관인 구재(九齋)의 학생들을 이곳에 모아놓고 공부하게 했다는 기록이 있다. <br>
		                                또한 조선 중종 5년(1510) 삼포왜란 때 큰 공을 세운 황형에게 이 정자를 주었다고도 한다. 1627년(인조 5) 정묘호란 때에는 강화조약을 체결했던 <br>
		                                곳이기도 하다. 이곳은 강화십경의 하나로 손꼽히는 자리로서 절경을 이루고 있으며, 이 정자에 오르면 북으로 개풍군과 파주시, 동으로 김포시가 <br>
		                                한눈에 들어온다. 옛날에는 서해로부터 서울로 가는 배가 이 정자 밑에 닻을 내려 조류(潮流)를 기다려 한강으로 들어갔다고 한다. <br>
		                                정자는 높다란 주초석(柱礎石) 위에 세워져 있으며, 앞면 3칸·옆면 2칸 규모이며, 지붕 옆면이 여덟 팔(八)자 모양인 팔작지붕집이다. <br>
		                                정자 양쪽에는 수백년 수령의 느티나무 두 그루가 웅장한 자태로 정취를 더해주고 있다. 이곳은 과거에 민간인통제구역이어서 <br>
		                                일반인의 출입에 제한이 있었으나, 2008년 민간인통제구역에서 해제되어 현재 일반인들이 자유롭게 탐승하고 있다. <br><br>
		                                <br>[참고] 강화군 홈페이지 참조
		                                <ul>
		                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=67&tourdiv=eight&pgno=1" target="_blank">
		                                        https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=67&tourdiv=eight&pgno=1<br></a></li>
		                                </ul>
		                        <div class="btn1">
		                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C+%EA%B0%95%ED%99%94%EA%B5%B0+%EA%B0%95%ED%99%94%EC%9D%8D+%EC%9B%94%EA%B3%B3%EB%A6%AC+242/data=!3m1!4b1!4m6!3m5!1s0x357c64b00b7ede1b:0x873e6277edd93275!8m2!3d37.7718263!4d126.5109603!16s%2Fg%2F11bzcsc5yx?hl=ko&entry=ttu'">
		                                <img src="./img/map.png" id="map_img"> 
		                                <span>지도보기</span>
		                            </button>
		                            <button>
		                                <img src="./img/heart.png" id="btn_img"> 
		                                <span>좋아요</span>
		                            </button>
		                            <button onclick="window.location.href='history.jsp'">
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