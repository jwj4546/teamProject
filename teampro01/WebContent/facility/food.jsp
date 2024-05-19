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
<title>음식점</title>
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
                                    <li><a href="${path0 }/facility/food.jsp" class="dp2" style="background-color: #f3b8da;">음식점</a></li>
                                    <li><a href="${path0 }/facility/hotel.jsp" class="dp2">숙박시설</a></li>
                                    <li><a href="${path0 }/facility/shop.jsp" class="dp2">쇼핑</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/facility/food.jsp">강화생활</a><span style="color:deeppink">음식점</span>
                        </p>
                    </div>
                    <h2 class="title">음식점</h2>
                    <div class="wrap">
                        <div class="box">
                            <li>
                                <a href="${path0 }/facility/food1.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/food1.jpg" alt="음식점1" id="img">
                                <span class="text">강화섬 보리밥</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/food2.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/food2.jpg" alt="음식점2" id="img">
                                <span class="text">편가네 된장</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/food3.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/food3.jpg" alt="음식점3" id="img">
                                <span class="text">국화호수</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/facility/food4.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/food4.jpg" alt="음식점4" id="img">
                                <span class="text">꽃게와 낙지</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/food5.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/food5.jpg" alt="음식점5" id="img">
                                <span class="text">외포리 꽃게집</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/food6.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/food6.jpg" alt="음식점6" id="img">
                                <span class="text">해안도시</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/facility/food7.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/food7.jpg" alt="음식점7" id="img">
                                <span class="text">솔향기</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/food8.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/food8.jpg" alt="음식점8" id="img">
                                <span class="text">고을식당</span>
                            </li>
                            <li>
                                <a href="${path0 }/facility/food9.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/food9.jpg" alt="음식점9" id="img">
                                <span class="text">장미횟집</span>
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