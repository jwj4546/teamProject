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
		                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="history.jsp">유적지</a><span style="color:deeppink">덕진진</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">덕진진</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/deokgingin.jpg" id="intro_img1">
		                            <img src="./img/deokgingin02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                【문화재 구분】 : 국가>사적<br>
		                                【개방시간】 : 09:00∼18:00<br>
		                                【휴관일】 : 연중무휴<br>
		                                【관람소요시간】 : 30분<br>
		                                【주차정보】 : 버스 10대, 소형 10대<br>
		                                【주요시설】 : 명위헌, 이방청, 종각<br>
		                                【편의시설】 : 화장실<br>
		                                【소재지】 :인천 강화군 불은면 덕성리 846<br>
		                                【문의처】 : 032-930-7074<br><br>
		                                원래 덕포진이 강화에 있었는데 1666년(현종 7)에 통진(지금 김포시 대곶면)으로 옮겼다. 그 자리에 덕진진이 설치됐다.
		                                덕진진은 손돌목돈대와 덕진돈대를 관할했다. 숙종 대에 이곳에 덕진정사라는 행궁을 지었다. 이후 행궁이 읍내에 새로 건립되면서 덕진정사는 폐지됐다.
		                                1866년(고종 3) 병인양요 때 양헌수의 군대가 덕진진을 거쳐 정족산성으로 들어가 프랑스 군대를 격파했다. 1871년(고종 8) 신미양요 때는 미국 함대와 포격전을 벌인 곳이다. 
		                                1976년 성곽과 돈대를 고치고 남장포대도 고쳐 쌓았으며 문의 누각도 다시 세웠고, 당시의 대포를 복원하여 설치하였다.
		                                지금 덕진진에는 문루인 공조루(拱潮樓), 남장포대, 덕진돈대 그리고 대원군이 세운 해문방수비(海門防守碑)가 있다. 
		                                해문방수비에는 ‘海門防守他國船愼勿過’라고 새겨졌다. ‘바다의 문을 막고 지켜서, 다른 나라의 배가 지나가지 못하도록 하라.’는 의미이다.<br><br>
		                                                            
		                                <br>[참고] 강화군 홈페이지 참조
	                                <ul>
	                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=43&tourdiv=defense_relic" target="_blank">
	                                        https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=43&tourdiv=defense_relic<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C+%EA%B0%95%ED%99%94%EA%B5%B0+%EB%B6%88%EC%9D%80%EB%A9%B4+%EB%8D%95%EC%84%B1%EB%A6%AC+846/data=!3m1!4b1!4m6!3m5!1s0x357c7ed453c5b9b3:0x681e0df5cebe663a!8m2!3d37.6488655!4d126.5251822!16s%2Fg%2F11bz9t3zm5?hl=ko&entry=ttu'">
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