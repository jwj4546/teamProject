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
		                            <a href="">HOME</a><a href="jindallae.jsp">축제</a><span style="color:deeppink">삼랑성 역사문화 축제</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="./img/title_img.png" id="title_img">
		                        <h3 class="sub_title">삼랑성 역사문화 축제</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="./img/samrangsungfestival01.jpg" id="intro_img1">
		                            <img src="./img/samrangsungfestival02.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                            <img src="./img/logo.png" id="title_img">
		                            <h3 class="sub_title">《개최 안내》</h3>
		                            <p><br><br>
		                                【개최일시】<br>
		                                매년 10월초 <9일간><br><br>
		                                【개최장소】<br>
		                                전등사 내(인천광역시 강화군 길상면 전등사로 37-41)<br><br>
		                                【문의전화】<br>
		                                032-937-0125 ( 운영시간 09:00 ~ 18:00)(점심시간제외)<br><br>
		                                【주최】<br>
		                                삼랑성역사문화축제조직위원회 </p><br><br>
		                                
		                                자세한 사항은 관련 페이지 참조 부탁드립니다<br><br>
		                                <ul>
		                                    <li><a href="http://samrangseong.org/" target="_blank">
		                                    http://samrangseong.org<br></a></li>
		                                </ul>
		                       
		
		                        <div class="btn1">
		                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%A0%84%EB%93%B1%EC%82%AC/data=!4m10!1m2!2m1!1z7KCE65Ox7IKs!3m6!1s0x357c788584085451:0x45f1221881ee8411!8m2!3d37.6321323!4d126.4874764!15sCgnsoITrk7HsgqySAQ9idWRkaGlzdF90ZW1wbGXgAQA!16s%2Fg%2F11f64dm_2l?hl=ko&entry=ttu'">
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