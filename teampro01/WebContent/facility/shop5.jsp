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
<title>어판장</title>

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
                        <h3 class="sub_title">어판장</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/shop5-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/shop5-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;서해바다 강화의 신선한 해산물을 산지에서 바로 구입 및 즉석요리로 즐길 수 있는 우리 강화군의 어판장 정보입니다.
                            </p>
                            <br>
                            <table>
                                <thead>
                                    <tr>
                                        <th>어항명</th>
                                        <th>점포수</th>
                                        <th>면적(㎡)</th>
                                        <th>위치</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr><td>외포항</td><td>18</td><td>1,482.28</td><td>내가면 해안서로 899-2</td></tr>
                                    <tr><td>장곳항</td><td>8</td><td>390.66</td><td>삼산면 어류정길212번길 102</td></tr>
                                    <tr><td>선두항</td><td>12</td><td>646.02</td><td>길상면 해안남로619번길 24</td></tr>
                                    <tr><td>후포항</td><td>19</td><td>554</td><td>화도면 해안남로2903번길 56</td></tr>
                                    <tr><td>창후항</td><td>13</td><td>343</td><td>하점면 창후리 796-15</td></tr>
                                    <tr><td>황산도항</td><td>15</td><td>997.29</td><td>길상면 해안남로65번길 35-33</td></tr>
                                    <tr><td>초지항</td><td>13</td><td>409.67</td><td>길상면 해안동로 96-18/td></tr>
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