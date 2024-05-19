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
<title>특산물/특산품</title>
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
                                <a class="dp1">강화소개</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/intro/section.jsp" class="dp2">일반현황/행정구역</a></li>
                                    <li><a href="${path0 }/intro/history.jsp" class="dp2">유래와연혁 </a></li>
                                    <li><a href="${path0 }/intro/special.jsp" class="dp2" style="background-color: #f3b8da;">특산물/특산품</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/intro/section.jsp">강화소개</a><span style="color:deeppink">특산물/특산품</span>
                        </p>
                    </div>
                    <h2 class="title">특산물/특산품</h2>
                    <div class="wrap">
                        <div class="box">
                            <li>
                                <a href="${path0 }/intro/special1.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/special1.jpg" alt="special1" id="img">
                                <span class="text">강화섬포도</span>
                            </li>
                            <li>
                                <a href="${path0 }/intro/special2.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/special2.jpg" alt="special2" id="img">
                                <span class="text">강화섬배</span>
                            </li>
                            <li>
                                <a href="${path0 }/intro/special3.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/special3.jpg" alt="special3" id="img">
                                <span class="text">강화섬약쑥한우</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/intro/special4.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/special4.jpg" alt="special4" id="img">
                                <span class="text">강화장준감</span>
                            </li>
                            <li>
                                <a href="${path0 }/intro/special5.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/special5.jpg" alt="special5" id="img">
                                <span class="text">왕골공예품</span>
                            </li>
                            <li>
                                <a href="${path0 }/intro/special6.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/special6.jpg" alt="special6" id="img">
                                <span class="text">꽃삼합</span>
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