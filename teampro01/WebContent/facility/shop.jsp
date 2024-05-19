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
<title>쇼핑</title>
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
                    <h2 class="title">쇼핑</h2>
                    <div class="wrap">
                        <div class="box">
                            <li>
                                <a href="${path0 }/facility/shop1.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/shop1.jpg" alt="쇼핑1" id="img">
                                <span class="text">강화풍물시장</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/shop2.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/shop2.jpg" alt="쇼핑2" id="img">
                                <span class="text">농산물판매장</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/shop3.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/shop3.jpg" alt="쇼핑3" id="img">
                                <span class="text">인삼센터</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/facility/shop4.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/shop4.jpg" alt="쇼핑4" id="img">
                                <span class="text">화문석판매</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/shop5.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/shop5.jpg" alt="쇼핑5" id="img">
                                <span class="text">어판장</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/shop6.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/shop6.jpg" alt="쇼핑6" id="img">
                                <span class="text">젓갈시장</span>
                            </li>
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