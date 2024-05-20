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
<title>풍물시장</title> 
   
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
		                            <a href="">HOME</a><a href="${path0}/travel/farmersmarket8.jsp">지역시장여행</a><span style="color:deeppink">강화 풍물시장</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="${path0 }/images/title_img.png" id="title_img">
		                        <h3 class="sub_title">강화 풍물시장</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="${path0 }/images/market01.jpg" id="intro_img1">
		                            <img src="${path0 }/images/market02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		              
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>                               
		                                【위치】 : 인천광역시 강화군 강화읍 중앙로 17-9<br>
		                                【규모】 : 지하1층, 지상2층 (연면적 8,842,28㎡)<br>
		                                【주차장】 : 423대 주차가능<br>
		                                【운영시간】 : 08:00 ~ 21:00<br>
		                                【휴무일】 : 매월 첫째주, 셋째주 월요일 휴무(단, 장날 또는 공휴일인 경우 익일 휴무)<br>
		                                【대표전화】 : 풍물시장 상인회(032-934-1318), 시설관리공단(032-930-7042)<br> 
		
		                                <br>[참고] 강화군 홈페이지 참조<br>

	                                <ul>
	                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/shopping/market/traditional.jsp" target="_blank">
	                                        https://www.ganghwa.go.kr/open_content/tour/shopping/market/traditional.jsp<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EA%B0%95%ED%99%94%ED%92%8D%EB%AC%BC%EC%8B%9C%EC%9E%A5/data=!4m15!1m8!3m7!1s0x357c7b1023667779:0xf70e3cd4efb97f2f!2z7J247LKc6rSR7Jet7IucIOqwle2ZlOq1sCDqsJXtmZTsnY0g7KSR7JWZ66GcIDE3LTk!3b1!8m2!3d37.7420767!4d126.4919091!16s%2Fg%2F11bzbwkm19!3m5!1s0x357c7b1020295de1:0x9c007ff2c6d4d39!8m2!3d37.7414806!4d126.4927278!16s%2Fg%2F1vf998qv?hl=ko&entry=ttu'">
	                                <img src="${path0 }/images/map.png" id="map_img"> 
	                                <span>지도보기</span>
	                            </button>
	                            <button onclick="window.location.href='${path0}/travel/farmersmarket8.jsp'">
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