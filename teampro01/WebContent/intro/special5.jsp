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
<title>왕골공예품</title>

<style>
.title2 { display: flex; margin-left: 70px; margin-top: 40px; }
#title_img { width: 30px; height: 30px; }
.sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
.box_img { display: flex; }
#intro_img1 { display: flex; width: 500px; height: 400px; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
#intro_img2 { display: flex; width: 500px; height: 400px; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
border:2px solid #000; }

.intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 200px; }
.btn1 { width: 900px; margin: 0 auto; text-align:center;}
.btn1 button { margin-left: 70px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
border: 2px dotted #FF9898; }
.btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
.btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
.btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
.btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }

.box_img2 { display: flex; margin-top: 50px;}
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
                        <h3 class="sub_title">왕골공예품</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/special5-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/special5-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 왕골 ]</strong><br>
                                &nbsp;방동사니과에 속하는 1년생 초본 식물로 줄기는 능각이 둔한 삼각형을 이루며, 
                                5월말에 심어 7월 중순부터 8월초에따는 것으로 길이는 120∼150센티미터 정도이며 왕골을 쪼개어 건조시킨 
                                다음, 이것을 다시 물에 불리어 칼등으로 훌터낸 다음 햇볕에 말려 화문석을 엮어내는것이다, 
                                이 왕골을 이용하여 생산되는 제품으로는 화문석 이외에도 화방석, 꽃삼합, 손가방, 악세사리 등 소품을 다양하게 생산하고 있다.
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;왕골(일명:완초) 공예품은 강화지역에서만 생산되는 순백색의 왕골을 재료로 만드는 
                                대표적인 수공예품으로써 왕골을 한올 한올 정교하게 고드레돌을 하나 하나 넘기며 엮거나(화문석), 
                                왕골끼리 꼬거나 엮어서 만들며(꽃삼합,화방석 등 소품) 우리 조상의 멋과 슬기로움이 가득 담겨있는 
                                우아하고 아름답기로 유명한 강화도에서 생산되는 토산품이며 전국적으로 널리 알려진 민예품이다.
                            </p>
                        </div>
                        <div class="box_img2">
                            <img src="${path0 }/images/special5-3.jpg" id="intro_img" alt="intro3">
                            <img src="${path0 }/images/special5-4.jpg" id="intro_img" alt="intro4">
                            <img src="${path0 }/images/special5-5.jpg" id="intro_img" alt="intro5">
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