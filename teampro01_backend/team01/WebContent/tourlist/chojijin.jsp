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
		                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="history.jsp">유적지</a><span style="color:deeppink">초지진</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">초지진</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/chojijin01.jpg" id="intro_img1">
		                            <img src="./img/chojijin02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                【문화재 구분】 : 국가>사적<br>
		                                【소재지】 : 소재지 : (23027) 인천광역시 강화군 강화읍 해안동로1366번길 18 (갑곳리<br>
		                                【문의처】 : 032-930-7070<br>
		                                【개방시간】 : 09:00~18:00<br>
		                                【휴관일】 : 연중무휴<br>
		                                【관람소요시간】 : 15분<br>
		                                【주차정보】 : 대형 40대<br>
		                                【편의시설】 : 화장실, 매점, 휴식공간<br>
		                                【소재지】 : (23049) 인천광역시 강화군 길상면 해안동로 58<br><br>
		                                강화의 해안 경계 부대인 12진보 가운데 하나이다.<br>
		                                병자호란 이후 서해안 수비체제가 강화도 중심으로 개편되면서 경기 서남부 해안의 진(鎭)들이 강화도와 강화도 근처로 옮겨오게 된다.<br>
		                                1653년(효종 4)에 남양의 영종진이 인천부 자연도로 옮겨왔다. 영종진이 자연도에 자리 잡으면서 섬의 이름도 영종도로 바뀌게 된다. <br>
		                                영종진을 남양에서 자연도로 옮긴 것은 자연도가 해상에서 강화도로 진입하는 길목이라는 중요성 때문이다. <br>
		                                이제 영종도는 강화도를 지키는 1차 방어선의 기능을 하게 되었다.<br>
		                                초지진은 1656년(효종 7)에 안산에서 옮겨왔다. 초지진에서 초지돈대·장자평돈대·섬암돈대를 맡아 지휘했다.<br> 
		                                1871년(고종 8) 신미양요 때 미군과 충돌했던 격전지이다. 1875년(고종 12) 일본 운요호 사건 때 상륙을 시도하는 일본군과 치열한 전투를 벌인 곳이기도 하다.<br>
		                                당시 초지진을 지키던 조선군은 일본군을 격퇴했다. 패퇴한 일본군은 철수하면서 영종도를 해코지했다. 이후 초지진은 허물어졌고, 초지진이 관할했던 초지돈대만 남았다.<br>
		                                정비된 초지돈대 안에는 대포가 전시돼 있다. 돈대 옆 소나무에는 신미양요 혹은 운요호 사건 때 포탄 맞은 흔적이 그대로 남아 있다.<br>
		                                <br>[참고] 강화군 홈페이지 참조
	                                <ul>
	                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=92&tourdiv=eight&pgno=2" target="_blank">
	                                        https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=92&tourdiv=eight&pgno=2<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C+%EA%B0%95%ED%99%94%EA%B5%B0+%EA%B8%B8%EC%83%81%EB%A9%B4+%ED%95%B4%EC%95%88%EB%8F%99%EB%A1%9C+58/data=!3m1!4b1!4m6!3m5!1s0x357c7f304189da69:0x25e1ff4b5e3da214!8m2!3d37.6336022!4d126.5320849!16s%2Fg%2F11bzgjk8gb?hl=ko&entry=ttu'">
	                                <img src="./img/map.png" id="map_img"> 
	                                <span>지도보기</span>
	                            </button>
	                            <button>
	                                <img src="./img/heart.png" id="btn_img"> 
	                                <span>좋아요</span>
	                            </button>
	                            <button onclick="window.location.href='jsp'">
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