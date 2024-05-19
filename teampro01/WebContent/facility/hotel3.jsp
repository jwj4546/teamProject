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
<title>에버리치</title>

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
                                   <li><a href="${path0 }/facility/food.jsp" class="dp2">음식점</a></li>
                                    <li><a href="${path0 }/facility/hotel.jsp" class="dp2" style="background-color: #f3b8da;">숙박시설</a></li>
                                    <li><a href="${path0 }/facility/shop.jsp" class="dp2">쇼핑</a></li>
                               </ul>
                           </li>
                       </ul>
                   </nav>
               </aside>
               <div class="contents">
                   <div class="breadcrumb">
                       <p>
                           <a href="/teampro01">HOME</a><a href="${path0 }/facility/food.jsp">강화생활</a><span style="color:deeppink">숙박시설</span>
                       </p>
                   </div>
                   <h2 class="title">상세보기</h2>
                    <div class="title2">
                        <img src="${path0 }/images/title_img.png" id="title_img" alt="title">
                        <h3 class="sub_title">에버리치</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/hotel3-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/hotel3-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 유형 ]</strong> 관광호텔
                                <br><br>
                                <strong>[ 객실정보 ]</strong> 70객실, 스탠더드(테라스), 슈페리어, 디럭스, 온돌, 펜트, 스위트 타입
                                <br><br>
                                <strong>[ 연락처 ]</strong> 032-934-1688
                                <br><br>
                                <strong>[ 주차정보 ]</strong> 100여 대 가능
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;2014년 3월 22일에 개관한 호텔 에버리치는 객실 70실, 리조트형 부티크 호텔입니다.
                                <br>
                                &nbsp;호텔 부대시설로 한식당 '화원', 프리미엄 로스터리 카페 '시즌스온', 야외수영장, 등산로 및 산책로, 
                                그리고 다양한 모임을 할 수 있는 소연회장이 있습니다.
                                <br>
                                &nbsp;강화도 남산 중턱에 자리하여 전 객실에서 한눈에 강화도를 조망할 수 있으며, 선유도공원과 청계천 조경을 
                                담당한 조경설계 서안이 조성한 3만여평의 등산로 및 산책로를 통하여 사적 제132호 강화산성 남장대에 다다르거나 
                                심신안정과 정화 효능이 있는 3만여주의 라벤더 가든을 거닐면서 최상의 힐링 경험을 해보실 수 있습니다.
                                <br>
                                &nbsp;개관에 앞서 2014년 인천아시안게임 공식 협력 호텔로 지정된 만큼, 특급호텔 서비스로 고객을 감동드리고자 합니다.
                            </p>
                        </div>
                       <div class="btn1">
                           <button onclick="window.location.href='https://shorturl.asia/GaVik'">
                               <img src="${path0 }/images/map.png" id="map_img" alt="map"> 
                               <span>지도보기</span>
                           </button>
                           <button onclick="window.location.href='${path0 }/facility/hotel.jsp'">
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