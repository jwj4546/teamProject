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
<!--  
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css" >
<script src="${path0 }/js/jquery.dataTables.js"></script>
-->
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- DataTables CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<!-- DataTables JS -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<style>
    #contents { height: auto; }
    .wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 302px; height: 302px; 
    border: 1px solid #000; position: relative; }
    .wrap .box li:hover #cover { display: block; cursor: pointer; }

    .box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
    font-weight: bold; font-size: 17px; background-color: #eccfe9; }

    #img { width: 300px; height: 300px; position: absolute; z-index: 10; }
    #cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
    
</style>
<title>교통정보</title>
</head>
<body>
	<%@ include file="/header.jsp" %>
	<main id="contents" class="clr-fix" style="height: auto;">
        <div class="wrap clr-fix" style="height: auto;">
            <div class="contents_wrap" style="height: auto;">
                <aside id="left1" style="height: 2862px;">
                    <nav id="lnb">
                        <ul class="menu">
                            <li>
                                <a class="dp1">강화정보</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/GetTrafficList.do" class="dp2" style="background-color: #f3b8da;">교통정보</a></li>
                                    <li><a href="${path0 }/traffic/parking.jsp" class="dp2">공영주차장</a></li>
                                    <li><a href="${path0 }/traffic/come.jsp" class="dp2">오시는 길</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents" style="height: auto;">
                    <div class="breadcrumb">
                        <p>
                            <a href="teampro01">HOME</a><a href="${path0 }/GetTrafficList.do">강화정보</a><span style="color:deeppink">교통정보</span>
                        </p>
                    </div>
			<h2 class="title">교통</h2>
			    <div class="wrap">
			        <div class="box">
			        	<ul id="traffic-list">
			            <c:forEach var="dto" items="${tList }" varStatus="status">
			                <li class="item"  style="margin-bottom:50px;">
			                    <a href="${path0}/GetTraffic.do?no=${dto.no }">
			                        <c:if test="${dto.ttype.equals('버스') }">
			                        	<img src="${path0 }/images/look4.png" id="cover" alt="gallery1">
			                        </c:if>
			                    </a>
			                    <c:if test="${dto.ttype.equals('버스') }">
			                        <img src="${path0 }/images/bus/${dto.no }_3.jpg" alt="${dto.no } 번 버스 사진" id="img">
			                    </c:if>
			                    <span class="text">
			                        <c:if test="${dto.ttype.equals('버스') }">
			                            ${dto.no }번 버스
			                        </c:if>
			                    </span>
			                </li>
			            </c:forEach>
		            </ul>
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