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
<title>외포리 꽃게집</title>
<style>
.title2 { display: flex; margin-left: 70px; margin-top: 40px; }
#title_img { width: 30px; height: 30px; }
.sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
.box_img { display: flex; }
#intro_img1 { display: flex; width: 500px; height: 400px; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
#intro_img2 { display: flex; width: 500px; height: 400px; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
border:2px solid #000; }
.intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 400px; }
.btn1 { width: 900px; margin: 0 auto; }
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
                        <img src="${path0 }/images/title_img.png" id="title_img" alt="title">
                        <h3 class="sub_title">외포리 꽃게집</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/food5-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/food5-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 유형 ]</strong> 한식
                                <br><br>
                                <strong>[ 대표메뉴 ]</strong> 꽃게탕-특대/대/중/소, 꽃게찜-특대/대/중, 무쇠솥간장게장정식, 해물탕,찜-대/중/소, 갈치조림정식, 
                                밴댕이회/무침, 간장게장-2마리, 간장게장-3마리, 간장게장-4마리, 꽃게탕,간장게장 포장,택배
                                <br><br>
                                <strong>[ 연락처 ]</strong> 032-933-9395
                                <br><br>
                                <strong>[ 영업시간 및 쉬는 날 ]</strong> AM 10:00 ~ PM 22:00, 2 ,4주 수요일 쉽니다.
                                <br><br>
                                <strong>[ 식당규모 및 주차정보 ]</strong> 20대
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;외포리 꽃게탕 집을 방문해주셔서 감사 드립니다.
                                강화군 내가면 외포리는, 꽃게와 밴댕이, 새우젖이 유명하며, 
                                석모도로 가는 배를 타는 곳으로 잘 알려진 강화군 내가면 외포리 선착장이 위치하고 있습니다.
                                저희 외포리 꽃게탕 집은, 예전부터 조상이 지켜내려오신 집터에 자리잡고 있으며, 
                                새벽마다 신선한 꽃게와 해물을 준비하여, 맛의 비결이 조리된, 꽃게탕과 찜, 해물찜, 밴댕이회, 게장백반등을 차려놓고 있습니다.
                                <br>&nbsp;서울과 인천에서 불과 65km 정도 떨어진 거리에 위치하고 있으며, 약 1시간 정도만에 아름다운 외포리의 바다포구 
                                모습과, 보문사로 가는 나룻배를 승용차와 함께 승선하여, 하늘을 나는 갈매기떼의 모습을 보면서 바다를 건널 수 있습
                                니다. 외포리 선착장 인근에는, 서해의 아름다운 바다와 섬, 젖갈시장, 고기잡이배 등이 그림 같이 펼쳐저 있어 주말
                                이면 항상 많은 관광객이 붐비는 곳입니다.
                                <br>&nbsp;외포리 꽃게탕집에서는 싱싱하고 물이 좋은 꽃게, 밴댕이, 활어를 재료로 최고의 맛을 보여드려, 
                                한번 들리셨던 분들은 다시 또 들러주시고, 다른 분들에게도 추천해 주시고 계십니다. 식당뒤의 야산에서는, 
                                어린이들이 밤나무, 도토리나무등을 돌아보며, 자연체험학습의 경험도 할 수 있습니다.
                                앞으로도 계속, 단골손님들의 성원과 격려에 힘입어, 더욱 손님 취향에 맞는 최고의 맛을 끊임없이 다듬어나갈 예정
                                이며, 특색있고 맛있는 음식을 손님들에게 대접 하도록 항상 최선을 다 하겠습니다.
                                <br>&nbsp;그 동안 멀리에서 오셔서 저희 외포리 꽃게탕집을 찾아주셨고, 귀중한 조언을 아낌없이 해주신 여러 단골손님들에게
                                깊이 감사 드립니다.
                            </p>
                        </div>
                       <div class="btn1">
                           <button onclick="window.location.href='https://shorturl.asia/owPJr'">
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