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
<title>젓갈시장</title>

<style>
.title2 { display: flex; margin-left: 70px; margin-top: 40px; }
#title_img { width: 30px; height: 30px; }
.sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
.box_img { display: flex; }
#intro_img1 { display: flex; width: 500px; height: 400px; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
#intro_img2 { display: flex; width: 500px; height: 400px; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
border:2px solid #000; }
.intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 210px; }

.btn1 { width: 900px; margin: 0 auto; text-align: center;}
.btn1 button { margin-left: 70px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
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
<main id="contents" class="clr-fix" style="height:1500px;">
       <div class="wrap clr-fix">
           <div class="contents_wrap">
               <aside id="left1" style="height:1500px;">
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
               <div class="contents" style="height:1500px;">
                   <div class="breadcrumb">
                       <p>
                           <a href="/teampro01">HOME</a><a href="${path0 }/facility/food.jsp">강화생활</a><span style="color:deeppink">쇼핑</span>
                       </p>
                   </div>
                   <h2 class="title">상세보기</h2>
                    <div class="title2">
                        <img src="${path0 }/images/title_img.png" id="title_img" alt="title">
                        <h3 class="sub_title">외포항 젓갈 수산물 직판장</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/shop6-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/shop6-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 위치 ]</strong> 인천광역시 강화군 내가면 외포리 547-77
                                <br><br>
                                <strong>[ 대표전화 ]</strong> 032-932-9337
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;배에서 갓 잡아올린 젓새우를 바로 그 자리에서 국내산 소금으로 염전을 한 싱싱한 새우젓을 바로 가져가실 수 있는 곳. 
                                산지에서 구입하는 거라 그 싱싱함은 안 봐도 느껴지실 겁니다.
                                1년 동안 잘 숙성된 품질 좋은 새우젓은 깊은 감칠맛으로 조미료 없이도 밥반찬으로 제격이며 씨알 굵은 새우젓은 
                                새우젓 하나만으로도 훌륭한 반찬이 될 것입니다.
                                강화도 전통의 맛과 멋, 전통, 볼거리, 먹을거리가 풍성한 외포항 젓갈수산물 직판장에서는 싱싱함과 탱탱함이 살아있는 
                                국내 최상품의 새우젓뿐만 아니라 강화 앞바다에서 직접 잡은 꽃게, 조개, 달린 서대 등 여러 종류의 
                                해산물과 수산물들을 함께 보실 수가 있어 구경하는 재미, 먹는 재미를 느낄 수 있을 겁니다.
                                어르신들에게는 추억을 어린이들에게는 새로운 경험을 주는 나눔과 기원의 시장. 외포항 젓갈수산물 직판장입니다.
                            </p>
                        </div>
                        <div class="box_img2" style="margin-top:100px;">
                            <img src="${path0 }/images/shop6-3.jpg" id="intro_img" alt="intro3">
                            <img src="${path0 }/images/shop6-4.jpg" id="intro_img" alt="intro4">
                            <img src="${path0 }/images/shop6-5.jpg" id="intro_img" alt="intro5">
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