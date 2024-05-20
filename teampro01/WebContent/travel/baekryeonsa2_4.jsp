<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/head.jsp" %>

    <style>
    /* 사이드메뉴 트랜지션*/
    #lnb li .sub2  { height:0; overflow:hidden; transition:0.8s; }
    #lnb li .sub2 { padding-left:28px; }
    #lnb .sub2 li a.dp3 { color:#555; font-size:16px; font-weight: 600; }
    #lnb li:hover .sub2 { height:300px; }    


    .title2 { display: flex; margin-left: 70px; margin-top: 40px; }
    #title_img { width: 30px; height: 30px; }
    .sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
    .box_img { display: flex; }
    #intro_img1 { display: flex; width: 500px; height: auto; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
    #intro_img2 { display: flex; width: 500px; height: auto; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
    border:2px solid #000; }
    .intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 400px; }


    .btn1 { width: 900px; margin: 0 auto; text-align-ctent }
    .btn1 button { margin-left: 160px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
    border: 2px dotted #FF9898; }
    .btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
    .btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }
    </style>
<title>백련사</title> 
</head>
<body>
<div id="header">
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
                                 <li><a href="${path0}/travel/history1.jsp" class="dp2" style="background-color: #f3b8da;">명소</a></li>
                                     <ul class="sub2">
                                        <li><a href="${path0}/travel/history1.jsp" class="dp3">유적지</a> </li>
                                        <li><a href="${path0}/travel/temple2.jsp" class="dp3">사찰</a> </li>
                                        <li><a href="${path0}/travel/beach3.jsp" class="dp3">해변</a> </li>
                                        <li><a href="${path0}/travel/island4.jsp" class="dp3">섬</a> </li>
                                    </ul>
                               	 <li><a href="${path0}/travel/jindallae5.jsp" class="dp2" >축제</a></li>
                                    <ul class="sub2">
                                        <li><a href="${path0}/travel/jindallae5.jsp" class="dp3">고려산 진달래 축제</a> </li>
                                        <li><a href="${path0}/travel/samrang6.jsp" class="dp3">삼랑성 역사문화 축제</a> </li>
                                        <li><a href="${path0}/travel/saewoo7.jsp" class="dp3">강화새우젓 축제</a> </li>
                                        </ul>
                                 <li><a href="${path0}/travel/farmersmarket8.jsp" class="dp2">체험여행</a></li>
                                    <ul class="sub2">
                                        <li><a href="${path0}/travel/farmersmarket8.jsp" class="dp3">시장여행</a> </li>
                                        <li><a href="${path0}/travel/nadeulgil9.jsp" class="dp3">강화 나들길</a> </li>
                                        <li><a href="${path0}/travel/reports10.jsp" class="dp3">레포츠 여행</a> </li>
                                    </ul>
	                              </ul>
	                            </li>
		                        </ul>
		                    </nav>
		                </aside>
		                <div class="contents">
		                    <div class="breadcrumb">
		                        <p>
		                            <a href="">HOME</a><a href="${path0}/travel/history1.jsp">명소</a><a href="${path0}/travel/temple2.jsp">사찰</a><span style="color:deeppink">백련사</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="${path0 }/images/title_img.png" id="title_img">
		                        <h3 class="sub_title">백련사</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="${path0 }/images/baekryunsa01.jpg" alt="백련사01" id="intro_img1" >
		                            <img src="${path0 }/images/baekryunsa02.jpg" alt="백련사02" id="intro_img2">
		                        </div>
		                        <div class="intro">

		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                【문화재 구분】 : 전통사찰 <br>
		                                【소재지】 :인천광역시 강화군 하점면 부근리 231 (부근리)<br>
		                                【문의처】 : 032-933-5082<br><br>
		
		                                고구려 장수왕 4년 병진(서기416)에 고려산을 답사하던 천축조사가 이 산 상봉 오련지(다섯개의 연못)에 오색연화가 찬란히 피어 있는 것을 발견하고 
		                                그 오색 연화를 채취하여 공중에 날려 그 연화들이 낙하한 곳마다 가람을 세웠는데 바로 이곳이 그중 백련이 낙하한 곳이다. 
		                                조선 고종 광무9년(서기1905) 을사년 봄에 인암화상이 화주 박보월로 본가람을 중건케하고 서기1967년 정미년 봄에 비구니 한성탄이 
		                                극락전과 삼성각을 중수 하였다. 기록에 의하면 팔만대장경이 본 가람에 한때 봉안되었다 한다.<br>
		
		
		                                <br>[참고] 강화군 홈페이지 참조
                                <ul>
                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=49&tourdiv=tradition_temple&pgno=1" target="_blank">
                                        https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=49&tourdiv=tradition_temple&pgno=1<br></a></li>
                                </ul>
                        <div class="btn1">
                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EA%B0%95%ED%99%94+%EB%B0%B1%EB%A0%A8%EC%82%AC/data=!4m15!1m8!3m7!1s0x357c7a7fe7b0f0a5:0x263b3f2090432889!2z7J247LKc6rSR7Jet7IucIOqwle2ZlOq1sCDtlZjsoJDrqbQg6rOg66Ck7IKw66GcNjHrsojquLggMjcw!3b1!8m2!3d37.7513857!4d126.4370123!16s%2Fg%2F11bzfvyn2t!3m5!1s0x357c7a7ff244198b:0x7e1fe1b9d3f9ed54!8m2!3d37.7510304!4d126.4374339!16s%2Fg%2F11c5_y7dkn?hl=ko&entry=ttu'">
                                <img src="${path0 }/images/map.png" id="map_img"> 
                                <span>지도보기</span>
                            </button>
                            <button onclick="window.location.href='${path0}/travel/temple2.jsp'">
                                <img src="${path0 }/images/list.png" id="btn_img"> 
                                <span>목록으로</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>

</body>

</body>
</html>