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
                            <a href="">HOME</a><a href="history.jsp">명소</a><a href="island.jsp">섬</a><span style="color:deeppink">교동도 여행</span>
                        </p>
                    </div>
                    <h2 class="title">상세보기</h2>
                    <div class="title2">
                        <img src="./img/title_img.png" id="title_img">
                        <h3 class="sub_title">교동도 여행</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="./img/gyodong04.jpg" id="intro_img1">
                            <img src="./img/gyodong01.jpg" id="intro_img2">
                        </div>
                        <div class="intro">
                            <img src="./img/logo.png" id="title_img">
                            <h3 class="sub_title">《관광포인트》</h3>
                            <p><br>
                                *월선포 : 교동대교를 배경으로 사진 찍기(다을새길 안내표지판앞에 베스트 포토스팟)<br>
                                *대룡시장 : 교동이발관, 동산약방 등 오래된 가게 앞에서 사진 찍기, 전설의 마녀 촬영지(거북당) 구경하기, 쌀강정 등 전통 주전부리, 옛날 다방 등<br>
                                *교동도 다을새길 걷기 : 16km, 6시간 소요<br>
                                (월선포 선착장-교동향교-화개사-화개산정상-석천당-대룡시장-남산포-교동읍성-동진포-월선포 선착장)<br>
                                *교동도 머르메 가는길 걷기 : 17.2km, 6시간 소요<br>
                                (대룡리-난정저수지-수정산-금정굴-애기봉-죽산포-머르메-양갑리마을회관-미곡종합처리장-대룡리)<br>
                                *제비집 : 교동8경 감상, 가상현실 영상체험, 신문만들기, 카페와 전시관 등<br>
                                *화개정원 : 화개산에 5개의 테마공원으로 조성된 수도권 최고의 휴식형 가족공원<br>
                                *화개산 모노레일 : 모노레일을 타고 편하게 올라가 전망대에 오르면 화개정원과 한강하구와 서해바다의 아름다운 풍경, <br>북녘 땅에 흐르는 예성강을 따라 펼쳐진 연백평야 관람<br>
                                *고구저수지 : 8월이면 연꽃이 가득피는 여름관광명소, 붕어가 잡히는 낚시터로도 유명<br>
                                *난정저수지 : 마을 주민들이 직접 10만 그루의 해바라기를 심어 조성한 해바라기 밭으로 8월 말 ~ 9월 초의 관광명소<br><br>


                                【가는 방법】<br>
                                *버스 : 강화버스터미널-18번 군내버스 이용 <br>
                                *자가운전 : 강화대교-48국도 인화리에서 교동대교 이용(40분 소요)<br><br>
                             
                                【관련업체 문의전화】<br>
                                *제비집 : 032-934-1000 
                                
                                자세한 사항은 관련 페이지 참조 부탁드립니다<br><br>
                                <ul>
                                    <li><a href="https://www.ganghwa.go.kr/open_content/tour/around/kyodongdo.jsp" target="_blank">
                                        https://www.ganghwa.go.kr/open_content/tour/around/kyodongdo.jsp<br></a></li>
                                </ul>

                        <div class="btn1">
                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C+%EA%B0%95%ED%99%94%EA%B5%B0+%EA%B5%90%EB%8F%99%EB%A9%B4+%EB%B4%89%EC%86%8C%EB%A6%AC+1026-25/data=!3m1!4b1!4m9!1m2!2m1!1z6rWQ64-Z64yA6rWQ!3m5!1s0x357c72353fb08461:0xc52318eca77a95d3!8m2!3d37.791662!4d126.329621!16s%2Fg%2F11jz7r3436?hl=ko&entry=ttu'">
                                <img src="./img/map.png" id="map_img"> 
                                <span>지도보기</span>
                            </button>
                            <button>
                                <img src="./img/heart.png" id="btn_img"> 
                                <span>좋아요</span>
                            </button>
                            <button onclick="window.location.href='island.jsp'">
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