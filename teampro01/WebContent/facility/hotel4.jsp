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
<title>한울다솜</title>

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
                        <img src="${path0 }/images/title_img.png" id="title_img">
                        <h3 class="sub_title">한울다솜</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/hotel4-1.jpg" id="intro_img1">
                            <img src="${path0 }/images/hotel4-2.jpg" id="intro_img2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 유형 ]</strong> 민박/펜션
                                <br><br>
                                <strong>[ 객실정보 ]</strong> 황토원룸, 황토복층, 가시버시(2층), 달빛아래(2층), 해뜰참, 
                                별이빛나는바다 -> 모두 6인실
                                <br><br>
                                <strong>[ 객실요금 ]</strong> 
                                황토독채(황토원룸 + 황토복층) : 주중20만원(주말25만원)
                                <br>
                                목조펜션(가시버시(2층), 달빛아래(2층), 해뜰참, 별이빛나는바다) : 2인기준(주중 8만원, 주말 10만원)
                                <br><br>
                                <strong>[ 연락처 ]</strong> 032-932-2979
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;안녕하세요?
                                <br>
                                &nbsp;저희 강화도 한울다솜펜션을 소개합니다.
                                <br>
                                &nbsp;저희 펜션은 단체와 가족들을 위하여 따끈따끈한 군불을 지피는 황토독채팬션이 있습니다.
                                <br>
                                &nbsp;커플을 위한 목조펜션을 운영하고 있습니다.
                                <br>
                                &nbsp;전 객실 모두 바다 조망이 가능 하구요 객실 바로 앞에서 개별바베큐가 가능합니다. 
                                또한 펜션앞 창후리포구에서 바다낚시와 인근수로에서 민물낚시도 하실 수 있습니다. 
                                등산은 왕복 1시간분정도 걸리는 별립산 등산로가 있구요 날씨가 좋은날은 산중턱에서 내려다 보이는 바다경치가 일품입니다.
                                <br>
                                &nbsp;조용한 휴식처를 원하시면 언제든 찾아주십시오. 환영합니다.
                            </p>
                        </div>
                       <div class="btn1">
                           <button onclick="window.location.href='https://shorturl.asia/3MrLY'">
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