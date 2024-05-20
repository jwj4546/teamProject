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
    <title>석모도</title> 
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
		                            <a href="">HOME</a><a href="${path0}/travel/history1.jsp">명소</a><a href="${path0}/travel/island4.jsp">섬</a><span style="color:deeppink">석모도 여행</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="${path0 }/images/title_img.png" id="title_img">
		                        <h3 class="sub_title">석모도 여행</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="${path0 }/images/seokmodo0201.jpg" id="intro_img1">
		                            <img src="${path0 }/images/seokmodo05.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                  
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                *보문사 : 대한민국 3대 관음성지로 눈썹바위(마애석불좌상)에서 아름다운 석양 보기<br>
		                                *민머루해변 : 백사장과 갯벌 둘 다 체험하기<br>
		                                *어류정항, 장구너머 어판장 : 싱싱한 활어회 맛보기<br>
		                                *칠면초 군락지 : 칠면초는 계절별로 색깔이 변하지만 11월이면 가을 단풍과 같이 붉게 물듦<br>
		
		
		                                【가는 방법】<br>
		                                *버스 : 강화버스터미널-31A, 31B, 35A, 35B, 38A, 38B 이용<br>
		                                *자가운전 : 김포대로- 중앙로(강화도)- 석모대교- 석모도  (2017.6.28 석모대교 개통)<br><br>
		                                    
		     
		                                <ul>
		                                    <li><a href="https://www.foresttrip.go.kr/indvz/main.do?hmpgId=ID02030071" target="_blank">
		                                        https://www.foresttrip.go.kr/indvz/main.do?hmpgId=ID02030071<br></a></li>
		                                </ul>
		
		                        <div class="btn1">
		                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%84%9D%EB%AA%A8%EB%8C%80%EA%B5%90/data=!4m9!1m2!2m1!1z7ISd66qo64-EIOyEoOywqeyepQ!3m5!1s0x357c75ecbb2a5ded:0xee7b8677bf1fecbd!8m2!3d37.7014284!4d126.3526247!16s%2Fg%2F11f3vjvz17?hl=ko&entry=ttu'">
		                                <img src="${path0 }/images/map.png" id="map_img"> 
		                                <span>지도보기</span>
		                            </button>
		                            <button onclick="window.location.href='${path0}/travel/island4.jsp'">
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
