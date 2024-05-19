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
<title>전시관</title>
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
                                    <li><a href="${path0 }/culture/museum.jsp" class="dp2">박물관</a></li>
                                    <li><a href="${path0 }/culture/gallery.jsp" class="dp2" style="background-color: #f3b8da;">전시관</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb" style="width:1200px; background-color: #fff; text-align: right;">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/culture/library.jsp">강화문화</a><span style="color:deeppink">전시관</span>
                        </p>
                    </div>
                    <h2 class="title">전시관</h2>
                    <div class="wrap">
                        <div class="box">
                            <li>
                                <a href="${path0 }/culture/gallery1_1.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="gallery1"></a>
                                <img src="${path0 }/images/gallery1.jpg" alt="강화도1" id="img">
                                <span class="text">DRFA365 예술극장</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/gallery1_2.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="gallery2"></a>
                                <img src="${path0 }/images/gallery2.jpg" alt="강화도1" id="img">
                                <span class="text">GALLERY THE WAY</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/gallery1_3.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="gallery3"></a>
                                <img src="${path0 }/images/gallery3.jpg" alt="강화도1" id="img">
                                <span class="text">J2갤러리</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/culture/gallery1_4.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="gallery4"></a>
                                <img src="${path0 }/images/gallery4.webp" alt="강화도1" id="img">
                                <span class="text">강화문학관(2F 조경희수필문학관)</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/gallery1_5.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="gallery5"></a>
                                <img src="${path0 }/images/gallery5.jpg" alt="강화도1" id="img">
                                <span class="text">강화미술관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/gallery1_6.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="gallery6"></a>
                                <img src="${path0 }/images/gallery6.webp" alt="강화도1" id="img">
                                <span class="text">강화벽전도예원</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0 }/culture/gallery1_7.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="gallery7"></a>
                                <img src="${path0 }/images/gallery7.jpg" alt="강화도1" id="img">
                                <span class="text">금도희미술관</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/gallery1_8.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="gallery8"></a>
                                <img src="${path0 }/images/gallery8.jpg" alt="강화도1" id="img">
                                <span class="text">담쟁이</span>
                            </li>
                            <li>
                                <a href="${path0 }/culture/gallery1_9.jsp"><img src="${path0 }/images/look4.png" id="cover" alt="gallery9"></a>
                                <img src="${path0 }/images/gallery9.jpg" alt="강화도1" id="img">
                                <span class="text">더리미 미술관</span>
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