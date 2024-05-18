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
		                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="temple.jsp">사찰</a><span style="color:deeppink">정수사</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">정수사</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/jeongsusa01.jpg" id="intro_img1">
		                            <img src="./img/jeongsusa02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                【문화재 구분】 : 전통사찰 <br>
		                                【휴관일】 : 연중무휴<br>
		                                【관람소요시간】 : 30분<br>
		                                【주차정보】 : 20대<br>
		                                【소재지】 :  인천광역시 강화군 화도면 해안남로1258번길 142<br>
		                                【문의처】 : 032-937-3611<br>
		
		                                신라 선덕여왕 8년(639) 회정선사가 창건하여 정수사(精修寺)라 했던것을 조선 세종 5년(1423) 함허대사가 중창하고 정수사(淨水寺)로 고쳤다. 
		                                특히 건물 후면 공포는 건축당시의 세부 건축 형식을 가장 잘 보여주고 있고, 1957년 보수공사 중에는 숙종 15년(1688) 
		                                수리 당시 세종 5년 에 중창되었음을 보여주는 상량문이 발견되기도 하였다. 마니산 동쪽에 자리잡은 정수사는 전등사, 
		                                보문사와 더불어 강화에서 빼놓을 수 없는 사찰중의 하나이다. 이 절은 신라 선덕여왕8년(639)에 회정선사가 마니산의 참성단을 참배한 후 
		                                이곳 지형을 보고 불자가 가히 삼매 정수할 곳이라하여 사찰을 세우고 정수사(精修寺)라 했는데 그 후 함허대사가 절을 중수한 후 
		                                법당 서쪽의 맑은 물을 발견하고 정수(淨水)로 바꾸었다. <br>
		
		                                <br>[참고] 강화군 홈페이지 참조
	                                <ul>
	                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=84&tourdiv=tradition_temple" target="_blank">
	                                        https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=84&tourdiv=tradition_temple<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EA%B0%95%ED%99%94+%EC%A0%95%EC%88%98%EC%82%AC+%EB%B2%95%EB%8B%B9/data=!3m1!4b1!4m6!3m5!1s0x357b87d1b082a511:0x177436bb9d45e11d!8m2!3d37.6077776!4d126.4454049!16s%2Fg%2F12ckhkrlp?hl=ko&entry=ttu'">
	                                <img src="./img/map.png" id="map_img"> 
	                                <span>지도보기</span>
	                            </button>
	                            <button>
	                                <img src="./img/heart.png" id="btn_img"> 
	                                <span>좋아요</span>
	                            </button>
	                            <button onclick="window.location.href='temple.jsp'">
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