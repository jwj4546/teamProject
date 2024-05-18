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
		                            </li>
		                        </ul>
		                    </nav>
		                </aside>
		                <div class="contents">
		                    <div class="breadcrumb">
		                        <p>
		                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="beach.jsp">해변</a><span style="color:deeppink">동막해수욕장</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">동막 해수욕장</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/dongmakbeach01.jpg" id="intro_img1">
		                            <img src="./img/dongmakbeach02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                【분류】 : 해변,유원지 [가볼만한곳]<br>
		                                【입장료/요금】 : 일정기간 동안 주차장, 샤워장, 야영구역(솔밭) 등 시설사용료 부과<br>
		                                【주요시설】 : 야영장, 샤워실 및 탈의실, 화장실, 사무실<br>
		                                【소재지】 :  인천광역시 강화군 화도면 해안남로 1481 일대<br>
		
		                                강화여행에서 빼놓을 수 없는 곳이 동막입니다. 동막해변은 백사장과 울창한 소나무 숲으로 둘러쌓여 천혜의 자연경관을 자랑하고 있습니다. 
		                                강화남단에 펼쳐진 갯벌은 무려 1천8백만평이며 물이 빠지면 직선 4km까지 갯벌로 변합니다. 검은 개흙을 뒤집어 쓰고 기어가는 칠게,가무락,쌀무늬고둥,갯지렁이가 
		                                이곳에 살고 있습니다. 밀물 시에는 해수욕을 썰물 시에는 갯벌에 사는 여러 가지 생물들을 관찰할 수 있습니다. 가족단위의 여름휴양지로 널리 알려져 있으며 
		                                인근 분오리돈대에 오르면 강화의 남단갯벌이 한눈에 들어오고 멀리 인천국제공항도 보입니다. 또한 주변에 함허동천 시범야영장 및 정수사 등의 볼거리가 있습니다.
		                                ※ 갯벌생태계의 보존을 위하여 생물들을 눈으로만 봐주세요. 관광객들이 생물들을 포획하면 갯벌은 순식간에 아무도 살지 못하는 곳이 되어 버립니다.<br>
		
		
		                                <br>[참고] 강화군 홈페이지 참조
	                                <ul>
	                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=111" target="_blank">
	                                        https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=111<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EB%8F%99%EB%A7%89%ED%95%B4%EC%88%98%EC%9A%95%EC%9E%A5/data=!3m1!4b1!4m6!3m5!1s0x357b864a087668eb:0xf92112b1fa0c8ded!8m2!3d37.5925761!4d126.4581875!16s%2Fg%2F11h1thk5k5?hl=ko&entry=ttu'">
	                                <img src="./img/map.png" id="map_img"> 
	                                <span>지도보기</span>
	                            </button>
	                            <button>
	                                <img src="./img/heart.png" id="btn_img"> 
	                                <span>좋아요</span>
	                            </button>
	                            <button onclick="window.location.href='beach.jsp'">
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