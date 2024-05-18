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
		                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="history.jsp">유적지</a><span style="color:deeppink">고려궁지</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">고려궁지</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/goryeogungji01.jpg" id="intro_img1">
		                            <img src="./img/goryeogungji02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                【문화재 구분】 : 국가>사적<br>
		                                【개방시간】 : 09:00∼18:00<br>
		                                【휴관일】 : 연중무휴<br>
		                                【관람소요시간】 : 20분<br>
		                                【주차정보】 : 무료주차 15대<br>
		                                【주요시설】 : 명위헌, 이방청, 종각<br>
		                                【편의시설】 : 화장실<br>
		                                【소재지】 : (23030) 인천광역시 강화군 강화읍 북문길 42 (관청리<br>
		                                【문의처】 : 032-930-7078<br><br>
		                                고려가 몽골군의 침략에 대항하기 위하여 도읍을 개경에서 강화로 옮긴 1232년(고종 19)부터 다시 환도한 1270년(원종 11)까지 38년간 사용되던 고려궁궐터이다.
		                                 『고려사절요』에 의하면, 최우(崔瑀)가 군대를 동원하여 이곳에 궁궐을 지었다고 한다. 비록 규모는 작았으나 송도 궁궐과 비슷하게 만들고 궁궐의 뒷산 이름도 송악(松岳)이라 하였다고 한다. 
		                                강화도에는 정궁(正宮) 이외에도 행궁(行宮)·이궁(離宮)·가궐(假闕) 등 많은 궁궐이 있었는데, 이곳 강화읍 관청리 부근은 정궁이 있었던 터로 추정된다. 
		                                정문의 이름은 승평문(昇平門)이었고, 양측에 삼층으로 된 두 개의 대문이 있었으며 동쪽에 광화문(廣化門)이 있었다. 
		                                승평문의 위치는 현재보다 100여m 남쪽인 용흥궁 입구 부분에 위치했다고 전한다. 강화의 고려 궁궐은 1270년 송도로 환도할 때에 몽골의 압력으로 모두 허물어졌다.  
		                                조선시대에 들어와서 고려 궁궐터에는 강화의 지방 행정관서와 궁궐 건물이 자리를 잡았다. 강화의 궁궐은 행궁과 장녕전, 만녕전, 
		                                외규장각 등이 있었으나 병인양요 때 프랑스군에 의해 불타 없어졌다.지금은 강화유수가 업무를 보던 동헌과 유수부의 경력이 업무를 보던 
		                                이방청 등 조선시대 유적만 남아있다.<br>        
		                                
		                                
		                                <br>[참고] 강화군 홈페이지 참조
	                                <ul>
	                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=36" target="_blank">
	                                        https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=36<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C+%EA%B0%95%ED%99%94%EA%B5%B0+%EA%B0%95%ED%99%94%EC%9D%8D+%EB%B6%81%EB%AC%B8%EA%B8%B8+42/data=!3m1!4b1!4m6!3m5!1s0x357c7b1f309649cb:0xc1c0e793f15d385b!8m2!3d37.752414!4d126.4844647!16s%2Fg%2F11bz8t9h1_?hl=ko&entry=ttu'">
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