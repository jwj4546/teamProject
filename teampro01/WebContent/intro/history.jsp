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
<style>
    #contents { height: 1300px; }
    .wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 302px; height: 302px; 
    border: 1px solid #000; position: relative; }
    .wrap .box li:hover #cover { display: block; cursor: pointer; }

    .box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
    font-weight: bold; font-size: 17px; background-color: #eccfe9; }

    #img { width: 300px; height: 300px; position: absolute; z-index: 10; }
    #cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
</style>
<title>유래와 연혁</title>

<style>
#contents { height: 1300px; }
.wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 300px; height: 300px; 
border: 1px solid #000; position: relative; }
.wrap .box li:hover #cover { display: block; cursor: pointer; }

.box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
font-weight: bold; font-size: 17px; background-color: #eccfe9; }

#img { width: 300px; height: 300px; position: absolute; z-index: 10; }
#cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }

.title2 { display: flex; margin-left: 70px; margin-top: 40px; }
#title_img { width: 30px; height: 30px; }
.sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
.box_img { display: flex; }
#intro_img1 { display: flex; width: 500px; height: 350px; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
#intro_img2 { display: flex; width: 500px; height: 350px; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
border:2px solid #000; }

.intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 200px; }

table { width: 88%; border-collapse: collapse; margin-left: 70px; margin-right: 70px; }
th { background-color: pink; }
th, td { border: 2px solid #000; padding: 8px; text-align: center; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
	<main id="contents" class="clr-fix" style="height: 1400px;">
        <div class="wrap clr-fix">
            <div class="contents_wrap">
                <aside id="left1" style="height: 1400px;">
                    <nav id="lnb">
                        <ul class="menu">
                            <li>
                                <a class="dp1">강화소개</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/intro/section.jsp" class="dp2">일반현황/행정구역</a></li>
                                    <li><a href="${path0 }/intro/history.jsp" class="dp2" style="background-color: #f3b8da;">유래와연혁 </a></li>
                                    <li><a href="${path0 }/intro/special.jsp" class="dp2">특산물/특산품</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents" style="height: 1400px;">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/intro/section.jsp">강화소개</a><span style="color:deeppink">유래와 연혁</span>
                        </p>
                    </div>
                    <h2 class="title">유래와 연혁</h2>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/history1-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/history1-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>"강화는 갑비고차(甲比古次)였다."</strong>
                                <br><br>
                                &nbsp;고구려 때는 혈구군(穴口郡)이었으며 수지현(首知縣)·동음내현(冬音奈縣)·고목근현(高木根縣)이 있었다. 
                                이후 신라의 경덕왕이 해구(海口)라 고쳤으며, 수지현은 수진(首鎭), 동음내현은 강음현(江陰縣), 
                                고목근현은 교동(喬桐)으로 바뀌었다. 그 후 문성왕이 혈구진(穴口鎭)을 설치하였다.
                                <br><br>
                                &nbsp;≪신증동국여지승람≫에 의하면 고려 초에는 열구현(冽口縣)이라고 부르다가 몽골 침입으로 고종 때에 수도를 옮기면서 
                                강도(江都)라 하였다고 한다. 그러다가 말기인 우왕 때부터 강화라고 칭하였다.
                            </p>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>연혁</th>
                                    <th>내용</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr><td>상고시대</td><td>갑비고차</td></tr>
                                <tr><td>서기 475</td><td>고구려 장수왕시 혈구군으로 개칭</td></tr>
                                <tr><td>서기 757, 844</td><td>신라 경덕왕시 해구군으로 개칭, 신라 문성왕시 혈구진 설치</td></tr>
                                <tr><td>서기 940~1363</td><td>고려 태조 강화현으로 개칭, 고려 고종 강화군으로 승격, 
                                    고려 공민왕 강화부로 승격 </td></tr>
                                <tr><td>서기 1394~1896</td><td>조선 태조 강화도호부 설치, 조선 인조 강화유수부로 승격, 
                                    조선 고종 강화군으로 개칭, 조선 고종 강화부로 승격</td></tr>
                                <tr><td>서기 1906</td><td>강화군으로 개칭</td></tr>
                                <tr><td>서기 1914</td><td>교동군을 강화군에 편입</td></tr>
                                <tr><td>서기 1962</td><td>볼음출장소 설치</td></tr>
                                <tr><td>서기 1973</td><td>강화면을 강화읍으로 승격</td></tr>
                                <tr><td>서기 1995</td><td>경기도에서 인천광역시로 통합</td></tr>
                            </tbody>
                        </table>
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