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
		                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="temple.jsp">사찰</a><span style="color:deeppink">전등사</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">전등사</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/jeondeungsa01.jpg" id="intro_img1">
		                            <img src="./img/jeondeungsa02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                【문화재 구분】 : 전통사찰<br>
		                                【휴관일】 : 연중무휴
		                                【개방시간】 : 09:00∼18:00<br>
		                                【관람소요시간】 : 60분<br>
		                                【주차정보】 : 대형 50대/ 주차료 : 대형4,000원, 소형2,000원
		                                【입장료】 : 어른-2,000원 /  중고생-1,500 /  초등학생-1000<br>
		                                【주요시설】 : 대웅보전, 약사전, 향로전, 명부전, 삼성각, 대조루, 강설당, 종무소, 범종, 정족산 사고<br>
		                                【편의시설】 : 전통찻집, 전등사 템플스테이 운영<br>
		                                【소재지】 :(23050) 인천광역시 강화군 길상면 전등사로 37-41 (온수리, 전등사)<br>
		                                【문의처】 : 032-937-0125<br><br>
		
		                                단군왕검의 세 아들이 쌓았다는 전설을 간직한 삼랑성내에 아늑히 자리잡고 있는 전등사는 고구려 소수림왕 11년(381)에 아도화상이 처음 창건하고 진종사(眞宗寺)라 이름 지었습니다. 
		                                그후 고려 충렬왕비 정화궁주가 이 절에 귀한 옥등을 시주했다해서 전할전, 등불등자(傳燈寺)를 써서 전등사로 개명한 사찰입니다. 
		                                이절의 입구에 있는 대조루 밑을 지나들어가면 정면에 보물 제178호로 지정되어 있는 대웅보전이 자리잡고 있습니다. 
		                                대웅전 안에는 1544년 정수사에서 판각되어 옮겨진 법화경 목판104매가 보전되고 있습니다. 
		                                명부전 맞은편 왼쪽 언덕을 약100m 오르면 조선 왕실의 실록을 보관했던 정족산 사고터가 복원되어 있습니다. 
		                                강화에는 마니산에 사고를 설치하였다가 1660년 이곳 전등사 경내로 옮겨 1678년이래 실록 및 서적을 보관하였고 그후 정족산 사고가 복원되었습니다. 
		                                경내에 있는 보물제393호 범종은 중국종으로 중국 하남성의 숭명사에서 북송시대(1097), 고려 숙종2년에 주조된것으로 
		                                우리나라 종과는 달리 종머리에 음관이 없고 용머리 주위에는 아름다운 16개의 연잎이 둘려 있는것을 볼수 있으며 견대와 요대사이에는 8괘가 둘려있어 특이함을 나타내고 있습니다. 
		                                1866년 병인양요때는 승군 50명이 전투에 참가 하기도한 호국 불교의 사찰로 당시 조선수비대장이던 양헌수 장군 승전비가 전등사 동문 입구에 세워져 있습니다.<br>
		
		                                <br>[참고] 강화군 홈페이지 참조
	                                <ul>
	                                    <li><a href="http://jeondeungsa.org/" target="_blank">
	                                        http://jeondeungsa.org/<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C+%EA%B0%95%ED%99%94%EA%B5%B0+%EA%B8%B8%EC%83%81%EB%A9%B4+%EC%A0%84%EB%93%B1%EC%82%AC%EB%A1%9C+37-41/data=!3m1!4b1!4m6!3m5!1s0x357c788609af20d1:0xce098faafd472814!8m2!3d37.6329348!4d126.4849671!16s%2Fg%2F11bz2g381x?hl=ko&entry=ttu'">
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