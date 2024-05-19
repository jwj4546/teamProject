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
<title>남취당의 한옥 이야기</title>

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
                        <h3 class="sub_title">남취당의 한옥 이야기</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/hotel8-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/hotel8-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 유형 ]</strong> 한옥체험
                                <br><br>
                                <strong>[ 개점일 ]</strong> 2010-09-07
                                <br><br>
                                <strong>[ 연락처 ]</strong> 010-9591-0226
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;남취당은 산을향한 그리움을 담은 집입니다.
                                비취빛 꿈은 천하명산 '마리산'에서 옵니다.
                                건넌 산의 거북이 모양을 본떠 돌담을 쌓았습니다.
                                그 낮은 눈높이에 소망을 담아 솟대를 세웠습니다.
                                <br>
                                &nbsp;저녁이면 못난이 석등에는 불이 듭니다.
                                한번쯤은 무턱대고 벤치에 앉아 생각에 잠기고파
                                행자고개 정류장 숱하게 오가는 사람들의 물결에
                                아랑곳 없이 나만의 외로움에 잠기고 싶습니다.
                                마당은 길섶을 빌어 쓰고 달랑 방다섯개 밖에 없습니다. 그러나 눈을 들면 마리산 자락이 뒤곁에서 흘러내리고,
                                앞뜰은 백만 평의 농장입니다.
                                <br>
                                &nbsp;사는데 더 무엇이 필요할까요.
                                민도리 집이지만 선자연의 휘들어진 곡선이 있고
                                귀접이 반자와 고미반자가 우물마루와 함께 반깁니다.
                                소나무 향기속에서 작은 다실에 앉아 들판을
                                내려다 보는 재미가 있습니다.
                                아궁이에 장작불을 지피고 고구마를 구워 먹으며
                                이야기를 나눕니다.
                                밤이 깊으면 철새가 나는 하늘에
                                별이 이슬이 되어 내립니다.
                                한지등의 부드러운 조명 아래 한지로 바른 황토벽,
                                손수 바른 창호지와 광목천으로 만든 커텐은 당신의
                                고요한 쉼을 두를 것입니다.
                                <br>
                                &nbsp;강화의 새로 꾸민 한옥 살림,
                                문화관광부에 등록된 한옥체험의 집에서
                                당신의 귀한 시간을 누리시기 바랍니다.
                            </p>
                        </div>
                       <div class="btn1">
                           <button onclick="window.location.href='https://shorturl.asia/Hrlmy'">
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