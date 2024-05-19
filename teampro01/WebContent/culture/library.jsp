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
    .wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 300px; height: 300px; 
    border: 1px solid #000; position: relative; }
    .wrap .box li:hover #cover { display: block; cursor: pointer; }

    .box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
    font-weight: bold; font-size: 17px; background-color: #eccfe9; }

    #img { width: 300px; height: 300px; position: absolute; z-index: 10; }
    #cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
</style>
<title>도서관</title>
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
                                <a class="dp1">강화문화</a>
                                <ul class="sub">
                                    <li><a href="" class="dp2">도서관</a></li>
                                    <li><a href="" class="dp2" style="background-color: #f3b8da;">박물관</a></li>
                                    <li><a href="" class="dp2">전시관</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="">HOME</a><a href="">강화문화</a><span style="color:deeppink">도서관</span>
                        </p>
                    </div>
                    <h2 class="title">메인메뉴</h2>
                    <div class="wrap">
                        <div class="box">
                            <li>
                                <a href="${path0 }/culture/library1_1.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/library1.jpg" alt="강화도1" id="img">
                                <span class="text">바람숲그림책도서관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/library1_2.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/library2.jpg" alt="강화도1" id="img">
                                <span class="text">길상작은도서관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/library1_3.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/library3.jpg" alt="강화도1" id="img">
                                <span class="text">내가도서관</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/culture/library1_4.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/library4.jpg" alt="강화도1" id="img">
                                <span class="text">자람도서관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/library1_5.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/library5.jpg" alt="강화도1" id="img">
                                <span class="text">강화도서관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/library1_6.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/library6.jpg" alt="강화도1" id="img">
                                <span class="text">화도작은도서관</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/culture/library1_7.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/library7.jpg" alt="강화도1" id="img">
                                <span class="text">강화군 새마을작은도서관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/library1_8.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/library8.jpg" alt="강화도1" id="img">
                                <span class="text">하점작은도서관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/library1_9.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/library9.jpg" alt="강화도1" id="img">
                                <span class="text">교동화개작은도서관</span>
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