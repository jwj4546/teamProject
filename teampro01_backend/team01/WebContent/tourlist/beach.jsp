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
	                            <a href="">HOME</a><a href="history.jsp">강화여행</a><span style="color:deeppink">해변</span>
	                        </p>
	                    </div>
	                    <h2 class="title">해변</h2>
	                    <div class="wrap">
	                        <div class="box">
	                            <li>
	                                <a href="dongmak.jsp"><img src="./img/look4.png" id="cover"></a>
	                                <img src="./img/dongmakbeach01.jpg" alt="동막해수욕장1" id="img">
	                                <span class="text">동막해수욕장</span>
	                            </li>
	                            <li>
	                                <a href="daebinchang.jsp"><img src="./img/look4.png" id="cover"></a>
	                                <img src="./img/daebinchangbeach0201.jpg" alt="대빈창1" id="img">
	                                <span class="text">대빈창 해변</span>
	                            </li>
	                            <li>
	                                <a href="dwitjangsul.jsp"><img src="./img/look4.png" id="cover"></a>
	                                <img src="./img/dwitjangsulbeach01.jpg" alt="뒤장술1" id="img">
	                                <span class="text">뒤장술 해변</span>
	                            </li>
	                        </div>
	                        <div class="box">
	                            <li>
	                                <a href="minmeoru.jsp"><img src="./img/look4.png" id="cover"></a>
	                                <img src="./img/minmeorubeach02.jpg" alt="민며루1" id="img">
	                                <span class="text">민머루 해변</span>
	                            </li>
	                            <li>
	                                <a href="jogae.jsp"><img src="./img/look4.png" id="cover"></a>
	                                <img src="./img/jogaegolbeach01.jpg" alt="강화도1" id="img">
	                                <span class="text">조개골 해변</span>
	                            </li>
	                            
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