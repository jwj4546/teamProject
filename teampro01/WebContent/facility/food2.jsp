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
<title>편가네 된장</title>
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
                        <h3 class="sub_title">편가네 된장</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/food2-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/food2-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 유형 ]</strong> 한식
                                <br><br>
                                <strong>[ 대표메뉴 ]</strong> 강된장비빔밥, 보리된장찌게, 가마솥손두부보쌈, 
                                젓국갈비전골, 한방간장게장정식, 모둠장정식, 단호박꽃게탕, 꽃게찜, 
                                밴댕이회무침, 왕새우해물라면, 보리된장찌개, 꽃게탕, 강화젓국갈비전골(대/중), 
                                손두부보쌈(생삼겹살+손두부+김치)-(대/중), 손두부김치, 손두부, 
                                도토리묵 등
                                <br><br>
                                <strong>[ 연락처 ]</strong> 032-937-6479
                                <br><br>
                                <strong>[ 영업시간 및 쉬는 날 ]</strong> 평일 AM 10:00 ~ PM 20:00, 
                                공휴일 & 주말 AM 10:00 ~ PM 20:00, 
                                매주 수요일(공휴일 정상영업), 명전 당일 하루 쉽니다.
                                <br><br>
                                <strong>[ 식당규모 및 주차정보 ]</strong> 100대(관광버스10대)
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;4대째 내려오는 100년 전통방식으로 된장과 한방간장게장을 어머니의 손맛을 담아 정성스레 고객님의 건강밥상을 만들어 드립니다.
                            </p>
                        </div>
                       <div class="btn1">
                           <button onclick="window.location.href='https://shorturl.asia/gAYE9'">
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