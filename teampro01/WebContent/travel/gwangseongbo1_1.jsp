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


    .btn1 { width: 900px; margin: 0 auto; }
    .btn1 button { margin-left: 160px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
    border: 2px dotted #FF9898; }
    .btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
    .btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }
    </style>
    <title>광성보</title> 
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
			                            <a href="">HOME</a><a href="${path0}/travel/history1.jsp">명소</a><a href="${path0}/travel/history1.jsp">유적지</a><span style="color:deeppink">광성보</span>
			                        </p>
			                    </div>
			                    <h2 class="title">상세보기</h2>
			                    <div class="title2">
			                        <img src="${path0 }/images/title_img.png" id="title_img">
			                        <h3 class="sub_title">광성보</h3>
			                    </div>
			                    <div class="wrap">
			                        <div class="box_img">
			                            <img src="${path0 }/images/gwangseongbo01.jpg" id="intro_img1">
			                            <img src="${path0 }/images/gwangseongbo02.jpg" id="intro_img2">
			                        </div>
			                        <div class="intro">
			           
			                            <h3 class="sub_title">《관광포인트》</h3>
			                            <p><br>

			                                【관람소요시간】 : 50분<br>
			                                【소재지】 : (23047) 인천 강화군 불은면 덕성리 833<br>
			                                【문의처】 : 032-930-7070<br>
			                                강화의 해안 경계 부대인 12진보 가운데 하나로, 1658년(효종 9)에 설치됐다. 화도돈대·오두돈대·광성돈대와 1874년(고종 11)에 축조된 오두정포대를 관할하였다. 1745년(영조 21)에 성을 고쳐 쌓으면서 성문을 만들어 안해루(按海樓)라 하였다. 이곳은 1871년(고종 8) 신미양요 때 가장 치열한 격전지였다. 
			                                초지진과 덕진진을 거쳐 광성보에 이른 미군은 상륙하기 전에 포격으로 광성보를 초토화했다.이미 병인양요 때 광성보에 근무한 바 있던 어재연이 포격을 피할 안전한 장소에 군사들을 숨겼다가 상륙하는 미군에 맞서 싸웠다. 
			                           
			                                <br>[참고] 강화군 홈페이지 참조
		                                <ul>
		                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=38&tourdiv=eight" target="_blank">
		                                        https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=38&tourdiv=eight<br></a></li>
		                                </ul>
		                        <div class="btn1">
		                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C+%EA%B0%95%ED%99%94%EA%B5%B0+%EB%B6%88%EC%9D%80%EB%A9%B4+%EB%8D%95%EC%84%B1%EB%A6%AC+833/data=!3m1!4b1!4m6!3m5!1s0x357c7eb65a4941bb:0xaa11d06ca41ccc4e!8m2!3d37.6653564!4d126.5302428!16s%2Fg%2F11bzlw8dcj?hl=ko&entry=ttu'">
		                                <img src="${path0 }/images/map.png" id="map_img"> 
		                                <span>지도보기</span>
		                            </button>
		                            <button onclick="window.location.href='${path0}/travel/history1.jsp'">
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
</html>