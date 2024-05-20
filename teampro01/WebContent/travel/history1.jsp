<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/head.jsp" %>

    <style>
    /* 사이드메뉴 트랜지션*/
    #lnb li .sub2  { height:0; overflow:hidden; transition:0.8s; }
    #lnb li .sub2 { padding-left:28px; }
    #lnb li a.dp3 { color:#555; font-size:16px; font-weight: 600; }
    #lnb li:hover .sub2 { height: 290px; }
    


    #contents { height: 1300px; }
    .wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 302px; height: 302px; 
    border: 1px solid #000; position: relative; }
    .wrap .box li:hover #cover { display: block; cursor: pointer; }

    .box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
    font-weight: bold; font-size: 17px; background-color: #eccfe9; }

    #img { width: 300px; height: 300px; position: absolute; z-index: 10; }
    #cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
    </style>
    <title>유적지</title> 
</head>
   
<body>
<div id="hd">
	<%@ include file="/header.jsp" %>
</div>	
    <main id="contents" class="clr-fix">
        <div class="wrap clr-fix">
            <div class="contents_wrap">
                <aside id="left1">
                    <nav id="lnb">
                        <ul class="menu">
                            <li>
                                <a class="dp1">강화여행</a>
                                <ul class="sub">
                                 <li><a href="${path0}/travel/history1.jsp" class="dp2" style="background-color: #f3b8da;">명소</a></li>
                                     <ul class="sub2">
                                        <li><a href="${path0}/travel/history1.jsp" class="dp3">유적지</a> </li>
                                        <li><a href="${path0}/travel/temple2.jsp" class="dp3">사찰</a> </li>
                                        <li><a href="${path0}/travel/beach3.jsp" class="dp3">해변</a> </li>
                                        <li><a href="${path0}/travel/island4.jsp" class="dp3">섬</a> </li>
                                    </ul>
                               	 <li><a href="${path0}/travel/jindallae5.jsp" class="dp2" >축제</a></li>
                                    <ul class="sub2">
                                        <li><a href="${path0}/travel/jindallae5.jsp" class="dp3">고려산 진달래 축제</a> </li>
                                        <li><a href="${path0}/travel/samrang6.jsp" class="dp3">삼랑성 역사문화 축제</a> </li>
                                        <li><a href="${path0}/travel/saewoo7.jsp" class="dp3">강화새우젓 축제</a> </li>
                                        </ul>
                                 <li><a href="${path0}/travel/farmersmarket8.jsp" class="dp2">체험여행</a></li>
                                    <ul class="sub2">
                                        <li><a href="${path0}/travel/farmersmarket8.jsp" class="dp3">시장여행</a> </li>
                                        <li><a href="${path0}/travel/nadeulgil9.jsp" class="dp3">강화 나들길</a> </li>
                                        <li><a href="${path0}/travel/reports10.jsp" class="dp3">레포츠 여행</a> </li>
                                    </ul>
	                              </ul>
	                            </li>
	                        </ul>
	                    </nav>
	                </aside>
	                <div class="contents">
	                    <div class="breadcrumb">
	                        <p>
	                            <a href="">HOME</a><a href="${path0}/travel/history1.jsp">강화여행</a><span style="color:deeppink">유적지</span>
	                        </p>
	                    </div>
	                    <h2 class="title">유적지</h2>
	                    <div class="wrap">
	                        <div class="box">
	                            <li>
	                                <a href="${path0}/travel/gwangseongbo1_1.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
	                                <img src="${path0 }/images/gwangseongbo01.jpg" alt="광성보1" id="img">
	                                <span class="text">광성보</span>
	                            </li>
	                            <li>
	                                <a href="${path0}/travel/gapgot1_2.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
	                                <img src="${path0 }/images/gapgotdondae02.jpg" alt="갑곶돈대1" id="img">
	                                <span class="text">갑곶돈대</span>
	                            </li>
	                            <li>
	                                <a href="${path0}/travel/chojijin1_3.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
	                                <img src="${path0 }/images/chojijin01.jpg" alt="초지진1" id="img">
	                                <span class="text">초지진</span>
	                            </li>
	                        </div>
	                        <div class="box">
	                            <li>
	                                <a href="${path0}/travel/yeonmijung1_4.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
	                                <img src="${path0 }/images/yeonmijung01.jpg" alt="연미정1" id="img">
	                                <span class="text">연미정</span>
	                            </li>
	                            <li>
	                                <a href="${path0}/travel/goryeogungji1_5.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
	                                <img src="${path0 }/images/goryeogungji01.jpg" alt="고려궁지1" id="img">
	                                <span class="text">고려궁지</span>
	                            </li>
	                            <li>
	                                <a href="${path0}/travel/deokjinjin1_6.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
	                                <img src="${path0 }/images/deokjinjin01.jpg" alt="덕진진1" id="img">
	                                <span class="text">덕진진</span>
	                            </li>
	                        </div>
	
	                    </div>
	                </div>
	            </div>
	        </div>
	    </main>
	<div id="ft">
		<%@ include file="/footer.jsp" %>
	</div>
</body>
</html>