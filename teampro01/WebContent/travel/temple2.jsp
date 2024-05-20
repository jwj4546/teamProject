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
    <title>사찰</title> 
</head>
<title>백련사</title> 
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
                            <a href="">HOME</a><a href="${path0}/travel/history.jsp">강화여행</a><span style="color:deeppink">사찰</span>
                        </p>
                    </div>
                    <h2 class="title">사찰</h2>
                    <div class="wrap">
                        <div class="box">
                            <li>
                                <a href="${path0}/travel/bomunsa2_1.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/bumunsa02.jpg" alt="보문사1" id="img">
                                <span class="text">보문사</span>
                            </li>
                            <li>
                                <a href="${path0}/travel/jeondeungsa2_2.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/jeondeungsa03.jpg" alt="전등사1" id="img">
                                <span class="text">전등사</span>
                            </li>
                            <li>
                                <a href="${path0}/travel/jeokseoksa2_3.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/jeokseoksa02.jpg" alt="적석사1" id="img">
                                <span class="text">적석사</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0}/travel/baekryeonsa2_4.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/baekryunsa01.jpg" alt="백련사1" id="img">
                                <span class="text">백련사</span>
                            </li>
                            <li>
                                <a href="${path0}/travel/cheonryeonsa2_5.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/cheongryeonsa04.jpg" alt="청련사1" id="img">
                                <span class="text">청련사</span>
                            </li>
                            <li>
                                <a href="${path0}/travel/cheongsuam2_6.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/cheongsuam01.jpg" alt="청수암1" id="img">
                                <span class="text">청수암</span>
                            </li>
                        </div>
                        <div class="box">
                            <li>
                                <a href="${path0}/travel/jungsusa2_7.jsp"><img src="${path0 }/images/look4.png" id="cover"></a>
                                <img src="${path0 }/images/jeongsusa01.jpg" alt="정수사1" id="img">
                                <span class="text">정수사</span>
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

</body>
</html>