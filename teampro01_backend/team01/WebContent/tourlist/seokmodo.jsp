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
		                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="island.jsp">섬</a><span style="color:deeppink">석모도 여행</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">석모도 여행</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/seokmodo0201.jpg" id="intro_img1">
		                            <img src="./img/seokmodo05.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                *보문사 : 대한민국 3대 관음성지로 눈썹바위(마애석불좌상)에서 아름다운 석양 보기<br>
		                                *민머루해변 : 백사장과 갯벌 둘 다 체험하기<br>
		                                *석모도 바람길(보문사 가는길) : 16km, 5시간 소요 (석모도 선착장-매음리 선착장-어류정항-민머루해변-어류정 수문-보문사)<br>
		                                *석모도 상주해안길 : 10km, 3시간 30분 소요 (동촌-석모나루-상주버스종점(석포여객터미널-한전사옥))<br>
		                                *어류정항, 장구너머 어판장 : 싱싱한 활어회 맛보기<br>
		                                *석모도 미네랄 스파 : 가족과 함께 하는 웰빙 건강 휴양지<br>
		                                *칠면초 군락지 : 칠면초는 계절별로 색깔이 변하지만 11월이면 가을 단풍과 같이 붉게 물듦<br><br>
		
		
		                                【가는 방법】<br>
		                                *버스 : 강화버스터미널-31A, 31B, 35A, 35B, 38A, 38B 이용<br>
		                                *자가운전 : 김포대로- 중앙로(강화도)- 석모대교- 석모도  (2017.6.28 석모대교 개통)<br><br>
		                                    
		                                【관련업체 문의전화】<br>
		                                *보문사 : 032-933-8271~3   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *석모도수목원 : 032-932-5432<br>
		                                *석모도자연휴양림 : 032-932-1100 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *석모도 미네랄 스파 : 032-930-7053<br>  
		                                <ul>
		                                    <li><a href="https://www.foresttrip.go.kr/indvz/main.do?hmpgId=ID02030071" target="_blank">
		                                        https://www.foresttrip.go.kr/indvz/main.do?hmpgId=ID02030071<br></a></li>
		                                </ul>
		
		                        <div class="btn1">
		                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%84%9D%EB%AA%A8%EB%8C%80%EA%B5%90/data=!4m9!1m2!2m1!1z7ISd66qo64-EIOyEoOywqeyepQ!3m5!1s0x357c75ecbb2a5ded:0xee7b8677bf1fecbd!8m2!3d37.7014284!4d126.3526247!16s%2Fg%2F11f3vjvz17?hl=ko&entry=ttu'">
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