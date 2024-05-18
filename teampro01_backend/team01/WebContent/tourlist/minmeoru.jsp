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
		                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="beach.jsp">해변</a><span style="color:deeppink">민머루 해변</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">민머루 해변</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/minmeorubeach01.jpg" id="intro_img1">
		                            <img src="./img/minmeorubeach0201.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                【분류】 : 해변,유원지 <br>
		                                【입장료/요금】 :일정기간 동안 주차장, 샤워장 등 시설사용료 부과(자세한 사항 전화문의)<br>
		                                【야영가능】 :백사장(넓이) : 약 15,000㎡ / 해안선(길이) : 약 500m<br>
		                                【주요시설】 : 야영장, 샤워장 및 탈의장, 사무실<br>
		                                【소재지】 :  (23007) 인천 강화군 삼산면 매음리 878번지 일원<br><br>
		
		                                민머루 해수욕장은 주변 경관이 뛰어나고 물이 빠지면 게, 조개, 낙지 등을 잡을 수 있습니다.
		                                물이 빠지면 맨발로 갯벌에 들어가 부드러운 흙의 감촉을 마음껏 누릴 수 있으며 아이들과 살아 움직이는 
		                                생물들을 관찰하다가 바라보는 낙조도 환상적입니다.
		                                ※ 생물들도 자신들의 집에서 거주할 권리가 있답니다. 어떻게 사는지 관찰한 후 집으로 돌려보낼 수 있는 
		                                자연보호 정신을 아이들에게 가르쳐주세요.<br>
		
		                                <br>[참고] 강화군 홈페이지 참조
	                                <ul>
	                                    <li><a href="https://ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=127" target="_blank">
	                                        https://ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=127<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C+%EA%B0%95%ED%99%94%EA%B5%B0+%EC%82%BC%EC%82%B0%EB%A9%B4+%EB%A7%A4%EC%9D%8C%EB%A6%AC+878-20/data=!4m10!1m2!2m1!1zKDIzMDA3KSDsnbjsspwg6rCV7ZmU6rWwIOyCvOyCsOuptCDrp6TsnYzrpqwgODc467KI7KeAIOydvOybkA!3m6!1s0x357b8a39773de94d:0x6979f12446ae043!8m2!3d37.6531294!4d126.3327694!15sCj0oMjMwMDcpIOyduOyynCDqsJXtmZTqtbAg7IK87IKw66m0IOunpOydjOumrCA4Nzjrsojsp4Ag7J287JuQkgEQZ2VvY29kZWRfYWRkcmVzc-ABAA!16s%2Fg%2F11sb7dgf6x?hl=ko&entry=ttu'">
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