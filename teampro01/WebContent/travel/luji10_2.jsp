<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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


    .btn1 { width: 900px; margin: 0 auto; }
    .btn1 button { margin-left: 160px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
    border: 2px dotted #FF9898; }
    .btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
    .btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }
    </style>
    <title>루지 체험</title> 
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
                                 <li><a href="${path0}/travel/history1.jsp" class="dp2">명소</a></li>
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
                                 <li><a href="${path0}/travel/farmersmarket8.jsp" class="dp2" style="background-color: #f3b8da;">체험여행</a></li>
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
		                            <a href="">HOME</a><a href="${path0}/travel/farmersmarket8.jsp">강화여행</a><a href="${path0}/travel/reports10.jsp">레포츠 여행</a><span style="color:deeppink">루지체험</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="${path0 }/images/title_img.png" id="title_img">
		                        <h3 class="sub_title">루지 체험</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="${path0 }/images/ruji01.jpg" id="intro_img1">
		                            <img src="${path0 }/images/ruji03.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		           
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>

		                                【위치】 : 인천광역시 강화군 길상면 장흥로 217, 강화씨사이드리조트<br>
		                                【주요시설】 : 루지, 케이블카(곤돌라), 회전전망대, 캠핑형BBQ장, 베이커리카페(달스베이커리&탐앤탐스), 각종 편의시설<br>
		                                【이용시간】 : 09:30 ~ 18:30(평일 17:30)<br>
		                                【이용요금】 : 해당 시설 홈페이지 확인<br>
		                                【문의전화】 :  032-930-9000/9030<br>
		
		
		                                <br> [참고] 강화 씨사이드리조트 <br><br>
	                                <ul>
	                                    <li><a href="https://www.ganghwa-resort.co.kr/" target="_blank">
	                                        https://www.ganghwa-resort.co.kr/<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EA%B0%95%ED%99%94%EC%94%A8%EC%82%AC%EC%9D%B4%EB%93%9C%EB%A6%AC%EC%A1%B0%ED%8A%B8/data=!4m15!1m8!3m7!1s0x357b8761b44aadbd:0x2613494ddf85fa06!2z7J247LKc6rSR7Jet7IucIOqwle2ZlOq1sCDquLjsg4HrqbQg7J6l7Z2l66GcIDIxNw!3b1!8m2!3d37.6180014!4d126.498387!16s%2Fg%2F11tjfgldqd!3m5!1s0x357b871d594620c1:0xd870611ba66ca9a4!8m2!3d37.6172749!4d126.4992046!16s%2Fg%2F11f6xz4yk7?hl=ko&entry=ttu'">
	                                <img src="${path0 }/images/map.png" id="map_img"> 
	                                <span>지도보기</span>
	                            </button>
	                            <button onclick="window.location.href='${path0}/travel/reports10.jsp'">
	                                <img src="${path0 }/images/list.png" id="btn_img"> 
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