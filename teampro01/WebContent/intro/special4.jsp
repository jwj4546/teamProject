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
    #contents { height: 1300px; }
    .wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 300px; height: 300px; 
    border: 1px solid #000; position: relative; }
    .wrap .box li:hover #cover { display: block; cursor: pointer; }

    .box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
    font-weight: bold; font-size: 17px; background-color: #eccfe9; }

    #img { width: 300px; height: 300px; position: absolute; z-index: 10; }
    #cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
</style>
<title>강화장준감</title>

<style>
.title2 { display: flex; margin-left: 70px; margin-top: 40px; }
#title_img { width: 30px; height: 30px; }
.sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
.box_img { display: flex; }
#intro_img1 { display: flex; width: 500px; height: 500px; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
#intro_img2 { display: flex; width: 500px; height: 500px; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
border:2px solid #000; }

.intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 250px; }
.btn1 { width: 900px; margin: 0 auto; text-align:center;}
.btn1 button { margin-left: 70px; margin-top: 150px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
border: 2px dotted #FF9898; }
.btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
.btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
.btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
.btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }

.box_img2 { display: flex; }
#intro_img { display: flex; width: 300px; height: 200px; margin-left: 70px; border:2px solid #000; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
	<main id="contents" class="clr-fix" style="height:1400px;">
        <div class="wrap clr-fix">
            <div class="contents_wrap">
                <aside id="left1" style="height:1400px;">
                    <nav id="lnb">
                        <ul class="menu">
                            <li>
                                <a class="dp1">강화소개</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/intro/section.jsp" class="dp2">일반현황/행정구역</a></li>
                                    <li><a href="${path0 }/intro/history.jsp" class="dp2">유래와연혁 </a></li>
                                    <li><a href="${path0 }/intro/special.jsp" class="dp2" style="background-color: #f3b8da;">특산물/특산품</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents" style="height:1400px;">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/intro/section.jsp">강화소개</a><span style="color:deeppink">특산물/특산품</span>
                        </p>
                    </div>
                    <h2 class="title">상세보기</h2>
                    <div class="title2">
                        <img src="${path0 }/images/title_img.png" id="title_img" alt="title">
                        <h3 class="sub_title">강화장준감</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/special4-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/special4-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 깨끗한 자연에서 생산되는 강화장준감 ]</strong><br>
                                &nbsp;- 강화도 특유의 서해 해풍
                                <br>&nbsp;- 풍부한 일조량
                                <br>&nbsp;- 공해가 없는 깨끗한 환경
                                <br>&nbsp;- 각종 미생물과 미네랄이 풍부한 건강한 토양
                                <br><br>
                                <strong>[ 맛있는 감 고르는 요령 ]</strong><br>
                                &nbsp;- 고르게 붉은 색으로 착색된 것
                                <br>&nbsp;- 꼭지가 잘 붙어 있는 것
                                <br>&nbsp;- 감의 표면에 검은 색 반점이 보이지 않는 것
                                <br>&nbsp;- 과실이 탄력이 있는 것
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;홍시를 만들어 먹는 떫은 감의 일종으로 모양은 갸름하고 동글동글하여 납작한 청도반시와 뾰족한 대봉시와는 구별되며, 
                                씨가 없고 꼭지 부분에 올록볼록한 무늬가 생기는 특징이 있어 “접시감”이라고도 불린다. 
                                또한, 신증동국여지승람(중종 25년, 1530년)에 강화특산물 20종에 들어가 있는 500년 이상 된 
                                강화 토종과일로 비타민C(귤의 2배) 풍부한 카로틴(인체 내에서 비타민A로 변함)이 
                                몸의 저항력을 높여 피로 회복, 감기 예방, 숙취 해소에 도움을 준다.
                            </p>
                        </div>
                        <div class="btn1">
                            <button onclick="window.location.href='${path0 }/intro/special.jsp'">
                                <img src="${path0 }/images/list.png" id="btn_img" alt="btn_img"> 
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