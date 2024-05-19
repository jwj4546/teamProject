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
<title>박물관</title>
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
                                <a class="dp1">강화문화</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/culture/library.jsp" class="dp2" >도서관</a></li>
                                    <li><a href="${path0 }/culture/museum.jsp" class="dp2" style="background-color: #f3b8da;">박물관</a></li>
                                    <li><a href="${path0 }/culture/gallery.jsp" class="dp2">전시관</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb" style="width:1200px; background-color: #fff; text-align: right;">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/culture/library.jsp">강화문화</a><span style="color:deeppink">박물관</span>
                        </p>
                    </div>
                    <h2 class="title">박물관</h2>
                    <div class="wrap">
                        <div class="box">
                            <li>
                                <a href="${path0 }/culture/museum1_1.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="museum1"></a>
                                <img src="${path0 }/images/museum1.jpg" alt="강화도1" id="img">
                                <span class="text">강화갯벌센터</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/museum1_2.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="museum2"></a>
                                <img src="${path0 }/images/museum2.jpg" alt="강화도1" id="img">
                                <span class="text">강화군농경문화관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/museum1_3.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="museum3"></a>
                                <img src="${path0 }/images/museum3.jpg" alt="강화도1" id="img">
                                <span class="text">강화역사박물관</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/culture/museum1_4.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="museum4"></a>
                                <img src="${path0 }/images/museum4.jpg" alt="강화도1" id="img">
                                <span class="text">강화자연사박물관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/museum1_5.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="museum5"></a>
                                <img src="${path0 }/images/museum5.jpg" alt="강화도1" id="img">
                                <span class="text">강화전쟁박물관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/museum1_6.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="museum6"></a>
                                <img src="${path0 }/images/museum6.jpg" alt="강화도1" id="img">
                                <span class="text">강화화문석 문화관</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/culture/museum1_7.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="museum7"></a>
                                <img src="${path0 }/images/museum7.png" alt="강화도1" id="img">
                                <span class="text">옥토끼우주센터</span>
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