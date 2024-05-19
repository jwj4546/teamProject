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
<title>강화섬 보리밥</title>
<style>
.title2 { display: flex; margin-left: 70px; margin-top: 40px; }
#title_img { width: 30px; height: 30px; }
.sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
.box_img { display: flex; }
#intro_img1 { display: flex; width: 500px; height: 400px; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
#intro_img2 { display: flex; width: 500px; height: 400px; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
border:2px solid #000; }
.intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 400px; }
.btn1 { width: 900px; margin: 0 auto; text-align: center;}
.btn1 button { margin-left: 70px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
border: 2px dotted #FF9898; }
.btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
.btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
.btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
.btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }
</style>
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
                               <a class="dp1">강화생활</a>
                               <ul class="sub">
                                   <li><a href="${path0 }/facility/food.jsp" class="dp2" style="background-color: #f3b8da;">음식점</a></li>
                                   <li><a href="${path0 }/facility/hotel.jsp" class="dp2">숙박시설</a></li>
                                   <li><a href="${path0 }/facility/shop.jsp" class="dp2">쇼핑</a></li>
                               </ul>
                           </li>
                       </ul>
                   </nav>
               </aside>
               <div class="contents">
                   <div class="breadcrumb">
                       <p>
                           <a href="/teampro01">HOME</a><a href="${path0 }/facility/food.jsp">강화생활</a><span style="color:deeppink">음식점</span>
                       </p>
                   </div>
                   <h2 class="title">상세보기</h2>
                   <div class="title2">
                       <img src="${path0 }/images/title_img.png" id="title_img" alt="title_img">
                       <h3 class="sub_title">강화섬 보리밥</h3>
                   </div>
                   <div class="wrap">
                       <div class="box_img">
                           <img src="${path0 }/images/food1-1.jpg" id="intro_img1" alt="intro_img1">
                           <img src="${path0 }/images/food1-2.jpg" id="intro_img2" alt="intro_img2">
                       </div>
                       <div class="intro">
                           <p>
                               <strong>[ 유형 ]</strong> 한식
                               <br><br>
                               <strong>[ 대표메뉴 ]</strong> 보리밥정식(2인이상), 돌솥비빔밥, 메밀전병, 도토리묵, 감자전 등
                               <br><br>
                               <strong>[ 연락처 ]</strong> 032-937-2982
                               <br><br>
                               <strong>[ 영업시간 및 쉬는 날 ]</strong> AM 10:00 ~ PM 20:00, 쉬는날은 따로 없으며, 
                               매주 화요일은 오전 10시부터 오후 3시까지만 영업하고 이후 영업은 쉽니다.
                               <br><br>
                               <strong>[ 식당규모 및 주차정보 ]</strong> 동시 수용 인원 130명 일시 수용 가능하며, 
                               약 400평 대형 주차장이 완비되어 있습니다.
                               <br><br>
                               <strong>[ 오시는 길 ]</strong><br>
                               &nbsp;강화역사박물관에서 15분거리, 고려궁지에서 10분거리, 고인돌체육관에서 7분거리, 
                               강화터미널에서 4분거리(강화보건소-명진부페-충렬사 뒤 100M도로 옆에 위치)
                               <br><br>
                               <strong>[ 개점일 ]</strong> 2011-11-11
                               <br><br>
                           </p>
                       </div>
                       <div class="btn1">
                           <button onclick="window.location.href='https://shorturl.asia/uawQG'">
                               <img src="${path0 }/images/map.png" id="map_img" alt="map"> 
                               <span>지도보기</span>
                           </button>
                           <button onclick="window.location.href='${path0 }/facility/food.jsp'">
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