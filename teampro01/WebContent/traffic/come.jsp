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
    
    .title2 { display: flex; margin-left: 70px; margin-top: 40px; }
    #title_img { width: 30px; height: 30px; }
    .sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
    .box_img { display: flex; }
    #intro_img1 { display: flex; width: 500px; height: auto; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
    #intro_img2 { display: flex; width: 500px; height: auto; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
    border:2px solid #000; }
    .intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 400px; }
    .btn1 { width: 900px; margin: 0 auto; }
    .btn1 button { margin-left: 70px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
    border: 2px dotted #FF9898; }
    .btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
    .btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }

    #left1 { float:left; width: 200px; min-height:100vh; height: 1800px; border-left:2px solid #000; box-sizing: border-box; }     
    .contents { float:right; width: 1204px; box-sizing: border-box; min-height:100vh; height: 1800px; 
    border-left:2px solid #000; border-right: 2px solid #000; }  
    .contents img {text-align: center;}
    .contents .title {text-align: center;}
</style>
<title>오시는 길</title>
</head>
<body>
	<%@ include file="/header.jsp" %>
	<main id="contents" class="clr-fix" style="height: 1000px;">
        <div class="wrap clr-fix">
            <div class="contents_wrap">
                <aside id="left1">
                    <nav id="lnb">
                        <ul class="menu">
                            <li>
                                <a class="dp1">강화정보</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/traffic/traffic.jsp" class="dp2">교통정보</a></li>
                                    <li><a href="${path0 }/traffic/parking.jsp" class="dp2">공영주차장</a></li>
                                    <li><a href="${path0 }/traffic/come.jsp" class="dp2" style="background-color: #f3b8da;">오시는 길</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="teampro01">HOME</a><a href="${path0 }/traffic/traffic.jsp">강화정보</a><span style="color:deeppink">오시는 길</span>
                        </p>
                    </div>
                    <h2 class="title">우리나라에서 본 강화</h2><br>
                    <img src="${path0 }/images/place.gif" alt="place" style="margin-left: 200px;"><br><br>
                	<h2 class="title">오시는 길</h2><br>
                	<img src="${path0 }/images/location.gif" alt="location" style="margin-left: 200px;">
                </div>
            </div>
        </div>
    </main>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>