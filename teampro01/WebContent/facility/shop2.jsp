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
<title>농산물판매장</title>

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
                        <h3 class="sub_title">농산물판매장</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/shop2-2.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/shop2-1.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <table>
                                <thead>
                                    <tr>
                                        <th>판매장 명칭</th>
                                        <th>위치</th>
                                        <th>연락처</th>
                                        <th>주력상품</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr><td>농업인회관 농산물판매장</td><td>강화읍 강화대로193(현대아파트입구)</td><td>032-933-5287</td><td>강화섬쌀, 속노랑고구마, 가공품류</td></tr>
                                    <tr><td>강화농협로컬푸드직매장</td><td>강화읍 중앙로 68</td><td>032-934-0901</td><td>강화섬쌀, 강화속노랑고구마, 강화섬포도 등 강화농특산물</td></tr>
                                    <tr><td>영인팜 영농조합법인</td><td>양도면 중앙로979(인산리)</td><td>070-4156-8800</td><td>속노랑고구마, 강화 농산물, 가공품류</td></tr>
                                    <tr><td>강화군 산림조합 숲내음직매장</td><td>선원면 중앙로115(창리)</td><td>032-937-0789</td><td>약쑥가공품, 도라지가공품, 각종 임산물</td></tr>
                                    <tr><td>강화군농협쌀조합 공동사업법인</td><td>양도면 가능포로166-13</td><td>032-934-7915</td><td>강화섬쌀(고시히까리, 추청, 현미 등)</td></tr>
                                    <tr><td>강화인삼농협 인삼가공공장</td><td>강화읍 동문로236번길</td><td>032-933-3932</td><td>수삼, 홍삼</td></tr>
                                    <tr><td>강화인삼센터</td><td>강화읍 강화대로335</td><td>032-932-3737</td><td>수삼, 홍삼</td></tr>
                                    <tr><td>초지인삼센터</td><td>길상면 초지로151</td><td>032-937-3491</td><td>수삼, 홍삼</td></tr>
                                    <tr><td>약쑥한우판매장</td><td>선원면 선원사지로32</td><td>032-934-1212</td><td>약쑥한우</td></tr>
                                </tbody>
                            </table>
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