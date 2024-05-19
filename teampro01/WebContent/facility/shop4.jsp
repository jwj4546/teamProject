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
<title>화문석판매</title>

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

table { width: 100%; border-collapse: collapse; }
th { background-color: pink; }
th, td { border: 2px solid #000; padding: 8px; text-align: center; }
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
                                    <li><a href="${path0 }/facility/food.jsp" class="dp2">음식점</a></li>
                                    <li><a href="${path0 }/facility/hotel.jsp" class="dp2">숙박시설</a></li>
                                    <li><a href="${path0 }/facility/shop.jsp" class="dp2" style="background-color: #f3b8da;">쇼핑</a></li>
                                </ul>
                           </li>
                       </ul>
                   </nav>
               </aside>
               <div class="contents">
                   <div class="breadcrumb">
                       <p>
                           <a href="/teampro01">HOME</a><a href="${path0 }/facility/food.jsp">강화생활</a><span style="color:deeppink">쇼핑</span>
                       </p>
                   </div>
                   <h2 class="title">상세보기</h2>
                    <div class="title2">
                        <img src="${path0 }/images/title_img.png" id="title_img" alt="title">
                        <h3 class="sub_title">화문석판매</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/shop4-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/shop4.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 특징 ]</strong> 화문석은 여름철에는 시원하면서 수분을 잘 흡수하고 겨울에 냉기를 방지하여 
                                건강유지에 도움을 주며 오래 사용하여도 윤기가 강하고 부스러짐이 없고 질기다.
                                <br><br>
                                <strong>[ 용도 ]</strong> 화려하면서도 소박한 무늬와 더불어 우아하고 정교한 수공예품으로 거실에 접빈용으로 사용하거나 
                                애경사 및 제례용으로 사용하였으며 품위와 예술적 가치가 뛰어나다.
                                <br><br>
                                <strong>[ 보통화문석 ]</strong> 5×7, 6×9, 7×10 (단위:자)
                                <br><br>
                                <strong>[ 마춤화문석 ]</strong> 규격이나 도안을 원하는 대로 정함. 2~3인이 1조로 짜여지며 7~10일 소요됨.
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;강화 화문석은 고려시대부터 시작되어 100여년전 조선왕실로 부터 화문석의 도안을 특수하게 제작하라는 하명을 받고, 
                                당시 백색자리의 생산지인 강화군 송해면 양오리 한 충교씨가 연구한 결과 도안에 의한 화문석 제작에 성공, 
                                다양한 도안개발과 제조 기술개발로 오늘에 이루고 있다.
                            </p>
                        </div>
                       <div class="btn1">
                           <button onclick="window.location.href='${path0 }/facility/shop.jsp'">
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