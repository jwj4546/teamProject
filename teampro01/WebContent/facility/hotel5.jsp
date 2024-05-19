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
<title>두꺼비 흙집</title>

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
                        <h3 class="sub_title">두꺼비 흙집</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/hotel5-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/hotel5-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 유형 ]</strong> 민박/펜션
                                <br><br>
                                <strong>[ 주차정보 ]</strong> 7대
                                <br><br>
                                <strong>[ 연락처 ]</strong> 0507-1434-5020
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;강화도 낙조마을로 유명한 장화리에 위치한 전통 구들 방식의 흙집펜션입니다. 
                                자연의 천연재료로만 집을 만들어 편안하고 진정한 휴식을 느끼실수 있습니다. 
                                아궁이에 불을 때고 구들장에 몸을 지지고, 강화도 특산품인 사자발약쑥차를 음미하며 좌훈과 찜질까지 하실수 있습니다.
                                <br>
                                &nbsp;현대건축물이 아닌 흙으로 짓은 집이라는 자연 그대로의 공간이라고 생각하시면 됩니다. 
                                흙과 나무로만 지은 집으로 인체에 유익한 에너지방출과 면역력 증강으로 스트레스로 지친 피로를 흙집에서 말끔하게 치료하세요.
                            </p>
                        </div>
                       <div class="btn1">
                           <button onclick="window.location.href='https://shorturl.asia/PL7xf'">
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