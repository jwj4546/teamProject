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
<title>교통 정보</title>
<%@ include file="/head.jsp" %>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- DataTables CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<!-- DataTables JS -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <style>
    .title2 { display: flex; margin-left: 70px; margin-top: 40px; }
    #title_img { width: 30px; height: 30px; }
    .sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
    .box_img { display: flex; }
    #intro_img1 { display: flex; width: 500px; height: auto; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
    #intro_img2 { display: flex; width: 500px; height: auto; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
    border:2px solid #000; }
    .intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 400px; }
    .btn1 { width: 900px; margin: 0 auto; text-align:center;}
    .btn1 button { margin-left: 70px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
    border: 2px dotted #FF9898; }
    .btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
    .btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }
    </style>
</head>
<body>
	<%@ include file="/header.jsp" %>
	<main id="contents" class="clr-fix">
        <div class="wrap clr-fix">
            <div class="contents_wrap">
                <aside id="left1">
                    <nav id="lnb">
                        <ul class="menu">
                            <li>
                                <a class="dp1">강화정보</a>
                                <ul class="sub">
                                   <li><a href="${path0 }/traffic/traffic.jsp" class="dp2" style="background-color: #f3b8da;">교통정보</a></li>
                                    <li><a href="${path0 }/traffic/parking.jsp" class="dp2">공영주차장</a></li>
                                    <li><a href="${path0 }/traffic/come.jsp" class="dp2">오시는 길</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="teampro01">HOME</a><a href="${path0 }/traffic/traffic.jsp">강화정보</a><span style="color:deeppink">교통정보</span>
                        </p>
                    </div>
                    <h2 class="title">상세보기</h2>
                    <div class="title2">
                        <img src="${path0 }/images/title_img.png" id="title_img" alt="title">
                        <h3 class="sub_title">${traffic.no }번 버스</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/bus/${traffic.no }_3.jpg" id="intro_img1" alt="Bus1">
                        </div>
                        <div class="intro">
                        	<p style="font-size:32px;">버스 노선</p><br><br>
                            <p>${traffic.route }</p>
                        </div>
                        <div class="btn1">
                            <button onclick="window.location.href='${traffic.uri}'">
                                <img src="${path0 }/images/map.png" id="map_img" alt="map"> 
                                <span>경로보기</span>
                            </button>
                            <button onclick="window.location.href='${path0 }/GetTrafficList.do'">
                                <img src="${path0 }/images/list.png" id="btn_img" alt="list"> 
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