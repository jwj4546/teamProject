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
			                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="history.jsp">유적지</a><span style="color:deeppink">광성보</span>
			                        </p>
			                    </div>
			                    <h2 class="title">상세보기</h2>
			                    <div class="title2">
			                        <img src="./img/title_img.png" id="title_img">
			                        <h3 class="sub_title">광성보</h3>
			                    </div>
			                    <div class="wrap">
			                        <div class="box_img">
			                            <img src="./img/gwangseongbo01.jpg" id="intro_img1">
			                            <img src="./img/gwangseongbo02.jpg" id="intro_img2">
			                        </div>
			                        <div class="intro">
			                            <img src="./img/logo.png" id="title_img">
			                            <h3 class="sub_title">《관광포인트》</h3>
			                            <p><br>
			                                【문화재 구분】 : 국가>사적<br>
			                                【개방시간】 : 09:00∼18:00<br>
			                                【휴관일】 : 연중무휴<br>
			                                【관람소요시간】 : 50분<br>
			                                【주차정보】 : 무료주차<br>
			                                【주요시설】 : 안해루, 광성돈대, 용두돈대, 손돌목돈대, 쌍충비각, 무명용사비, 신미순의총, 광성보휴식공간<br>
			                                【편의시설】 : 화장실 2개소, 매점, 공원, 휴식공간 등<br>
			                                【소재지】 : (23047) 인천 강화군 불은면 덕성리 833<br>
			                                【문의처】 : 032-930-7070<br><br>
			                                강화의 해안 경계 부대인 12진보 가운데 하나로, 1658년(효종 9)에 설치됐다. 화도돈대·오두돈대·광성돈대와 1874년(고종 11)에 축조된 오두정포대를 관할하였다.<br>
			                                1745년(영조 21)에 성을 고쳐 쌓으면서 성문을 만들어 안해루(按海樓)라 하였다. 이곳은 1871년(고종 8) 신미양요 때 가장 치열한 격전지였다.<br>
			                                초지진과 덕진진을 거쳐 광성보에 이른 미군은 상륙하기 전에 포격으로 광성보를 초토화했다. <br>
			                                이미 병인양요 때 광성보에 근무한 바 있던 어재연이 포격을 피할 안전한 장소에 군사들을 숨겼다가 상륙하는 미군에 맞서 싸웠다.<br>
			                                조선군은 물러서지 않고 분전했으나 무기의 열세를 극복하지 못하고 패했다. 병사들 대부분이 전사했다. <br>
			                                미군은 광성보 전투 후 소득 없이 물러갔다. 미군의 처지에서 볼 때 신미양요는 전투에서 승리하고 전쟁에서 패배한 사건이었다. <br>
			                                광성보 안에는 광성돈대, 어재연·어재순 형제의 충절을 기리는 쌍충비각, 이름을 알 수 없는 전사 장병들을 모신 신미순의총, 손돌목돈대, 용두돈대가 있다.
			                                
			                                <br>[참고] 강화군 홈페이지 참조
		                                <ul>
		                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=38&tourdiv=eight" target="_blank">
		                                        https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=38&tourdiv=eight<br></a></li>
		                                </ul>
		                        <div class="btn1">
		                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C+%EA%B0%95%ED%99%94%EA%B5%B0+%EB%B6%88%EC%9D%80%EB%A9%B4+%EB%8D%95%EC%84%B1%EB%A6%AC+833/data=!3m1!4b1!4m6!3m5!1s0x357c7eb65a4941bb:0xaa11d06ca41ccc4e!8m2!3d37.6653564!4d126.5302428!16s%2Fg%2F11bzlw8dcj?hl=ko&entry=ttu'">
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