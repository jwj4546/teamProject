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
<title>인삼센터</title>

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
                        <h3 class="sub_title">인삼센터</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/shop3-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/shop3-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;인삼은 우리나라의 대표적 약용식물로서 성장이 매우 느려 약리작용을 위해서는 4~6년간의 재배기간이 
                                반드시 필요한 식물입니다. 강화인삼은 고려인삼의 원산으로 고려 고종(1232)때부터 재배가 시작되었으며, 
                                한국전쟁이 터지자 인삼의 본거지인 개성사람들이 이곳에 피난와 1953년부터 본격 재배가 이루어 졌습니다. 
                                섬지역인 강화는 해양성 기후로 인삼재배를 위한 알맞은 기후, 토양 등 까다로운 환경조건을 갖추고 있어 
                                6년근 인삼재배의 최적지입니다.
                            </p>
                            <br><br><br>
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
                                    <tr><td>강화인삼협동조합 강화인삼센터</td><td>인천 강화군 강화읍 강화대로 335</td><td> 032-933-5001~4</td><td>수삼, 홍삼, 각종인삼 가공 제품</td></tr>
                                    <tr><td>강화고려인삼영농조합법인</td><td>인천 강화군 강화읍 강화대로 96</td><td>032-934-2442</td><td>수, 건삼, 인삼제품류</td></tr>
                                    <tr><td>강화초지인삼영농조합법인</td><td>인천 강화군 길상면 초지로 151</td><td>032-937-5934</td><td>수, 건삼, 인삼제품류</td></tr>
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