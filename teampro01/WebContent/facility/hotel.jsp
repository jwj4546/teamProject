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
<title>숙박시설</title>
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
                    <h2 class="title">숙박시설</h2>
                    <div class="wrap">
                        <div class="box">
                            <li>
                                <a href="${path0 }/facility/hotel1.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/hotel1.jpg" alt="숙박시설1" id="img">
                                <span class="text">라르고빌</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/hotel2.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/hotel2.jpg" alt="숙박시설2" id="img">
                                <span class="text">노을 내리는 아름다운 집</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/hotel3.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/hotel3.jpg" alt="숙박시설3" id="img">
                                <span class="text">에버리치</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/facility/hotel4.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/hotel4.jpg" alt="숙박시설4" id="img">
                                <span class="text">한울다솜</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/hotel5.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/hotel5.jpg" alt="숙박시설5" id="img">
                                <span class="text">두꺼비 흙집</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/hotel6.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/hotel6.jpg" alt="숙박시설6" id="img">
                                <span class="text">천사의 아침</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/facility/hotel7.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/hotel7.jpg" alt="숙박시설7" id="img">
                                <span class="text">옛날에 금잔디</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/hotel8.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/hotel8.jpg" alt="숙박시설8" id="img">
                                <span class="text">남취당의 한옥이야기</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/hotel9.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/hotel9.jpg" alt="숙박시설9" id="img">
                                <span class="text">장보고 한옥펜션</span>
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