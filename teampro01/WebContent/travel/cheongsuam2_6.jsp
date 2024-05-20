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
<title>청수암</title> 
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
		                            <a href="">HOME</a><a href="${path0}/travel/history1.jsp">명소</a><a href="${path0}/travel/temple2.jsp">사찰</a><span style="color:deeppink">청수암</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="${path0 }/images/title_img.png" id="title_img">
		                        <h3 class="sub_title">청수암</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="${path0 }/images/cheongsuam01.jpg"  alt="청수암01"  id="intro_img1">
		                            <img src="${path0 }/images/cheongsuam02.jpg"ㅍ alt="청수암02" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                 
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br>
		                                【문화재 구분】 : 전통사찰 <br>
		                                【소재지】 : 인천광역시 강화군 강화읍 신문리 883-2<br><br>
		
		                                1936년 임봉법스님이 창건 1966년 제2대 주지인 정덕용스님이 도량확장 및 개축의 원력을 세웠으며, 
		                                1974년 극락전 및 미륵전,칠성각,요사채등을 복원 개축하였다. 1972년에는 대웅전이 중수되었으며, 1976년에는 대웅전·미륵전·칠성각·요사 등의 건물이 
		                                중건되었다. 또 최근 1994년에는 해운스님이 요사를 고쳐짓는 불사를 했다. 이 절은 경내의 숲이 울창하고 조망이 좋아서 휴식처로도 이름이 높다. 
		                             대웅전과 금륜전·미륵전 등의 건물과 그 안에 아미타불상 및 관음보살, 지장보살, 아미타후불탱화·독성탱화·신중탱화·현왕탱화·감로탱화 등의 문화재가 있다.  
		                                강화읍 남산북쪽에 위치하고 있어, 일명 속칭 「남산절」 이라고도 한다.<br>
		
		                                <br>[참고] 강화군 홈페이지 참조
	                                <ul>
	                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=91&tourdiv=tradition_temple&pgno=2" target="_blank">
	                                        https://www.ganghwa.go.kr/open_content/tour/tour/tourInfoDetail.do?tour_seq=91&tourdiv=tradition_temple&pgno=2<br></a></li>
	                                </ul>
	                        <div class="btn1">
	                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%B2%AD%EC%88%98%EC%95%94/data=!3m1!4b1!4m6!3m5!1s0x357c7afe83ab2ec3:0xb6b83961d4ec098b!8m2!3d37.7426432!4d126.4765137!16s%2Fg%2F1thy_lsp?hl=ko&entry=ttu'">
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
	<div id="ft">
		<%@ include file="/footer.jsp" %>
	</div>

</body>
</html>