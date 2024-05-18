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
		                            <a href="">HOME</a><a href="farmersmarket.jsp">지역시장여행</a><span style="color:deeppink">강화 인삼센터</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">강화 인삼센터</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/insam01.jpg" id="intro_img1">
		                            <img src="./img/insam02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>   
		                                인삼은 우리나라의 대표적 약용식물로서 성장이 매우 느려 약리작용을 위해서는 4~6년간의 재배기간이 
		                                반드시 필요한 식물입니다. 강화인삼은 고려인삼의 원산으로 고려 고종(1232)때부터 재배가 시작되었으며, 
		                                한국전쟁이 터지자 인삼의 본거지인 개성사람들이 이곳에 피난와 1953년부터 본격 재배가 이루어 졌습니다. 
		                                섬지역인 강화는 해양성 기후로 인삼재배를 위한 알맞은 기후, 토양 등 까다로운 환경조건을 갖추고 있어 
		                                6년근 인삼재배의 최적지입니다. 인천광역시 강화군 강화읍 강화대로 335 <br><br>
		                                
		
		                                【강화인삼협동조합 강화인삼센터】 :  032-933-5001 ~4 / 인천 강화군 강화읍 강화대로 335<br>
		                                【강화고려인삼영농조합법인】 : 032-934-2442 / 인천 강화군 강화읍 강화대로 96<br>
		                                【강화초지인삼영농조합법인】 :  032-937-5934 / 인천 강화군 길상면 초지로 151<br><br>
		                               
		                                <br>[참고] 강화군 홈페이지 참조<br>

	                                <ul>
	                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/shopping/market/traditional.jsp" target="_blank">
	                                        https://www.ganghwa.go.kr/open_content/tour/shopping/market/traditional.jsp<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EA%B0%95%ED%99%94%EC%9D%B8%EC%82%BC%EC%84%BC%ED%84%B0/data=!4m10!1m2!2m1!1z6rCV7ZmU7J247IK87IS87YSw!3m6!1s0x357c7b1041e74909:0x732516f7e793fedc!8m2!3d37.7424213!4d126.4925677!15sChLqsJXtmZTsnbjsgrzshLzthLBaFiIU6rCV7ZmUIOyduOyCvCDshLzthLCaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVUjRlbVZEY0ROQlJSQULgAQA!16s%2Fg%2F1xfslntr?hl=ko&entry=ttu'">
	                                <img src="./img/map.png" id="map_img"> 
	                                <span>지도보기</span>
	                            </button>
	                            <button>
	                                <img src="./img/heart.png" id="btn_img"> 
	                                <span>좋아요</span>
	                            </button>
	                            <button onclick="window.location.href='farmersmarket.jsp'">
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