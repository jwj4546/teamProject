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
<title>강화섬배</title>

<style>
.title2 { display: flex; margin-left: 70px; margin-top: 40px; }
#title_img { width: 30px; height: 30px; }
.sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
.box_img { display: flex; }
#intro_img1 { display: flex; width: 500px; height: 500px; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
#intro_img2 { display: flex; width: 500px; height: 500px; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
border:2px solid #000; }

.intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 250px; }
.btn1 { width: 900px; margin: 0 auto; text-align:center; }
.btn1 button { margin-left: 70px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
border: 2px dotted #FF9898; }
.btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
.btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
.btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
.btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }

.box_img2 { display: flex; }
#intro_img { display: flex; width: 300px; height: 200px; margin-left: 70px; border:2px solid #000; }
</style>
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
                    <h2 class="title">상세보기</h2>
                    <div class="title2">
                        <img src="${path0 }/images/title_img.png" id="title_img" alt="title">
                        <h3 class="sub_title">강화섬배</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/special2-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/special2-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 가정에서 배 보관 방법 ]</strong><br>
                                &nbsp;12월 이후 배(주로 신고 품종)를 구입해놓고 며칠 지나면 무우의 바람들이 현상처럼 배에도 
                                그러한 현상이 발생하여 맛이 없어진다. 
                                애꿎은 농가만 원망하게 되는데, 그러한 것을 방지하기 위해서는 구입 즉시 배 하나하나를 비닐랩으로 싸서 
                                냉장고 2℃~(-1℃)에 보관하면 장기간 보관할 수 있다. 
                                다른 품종의 배도 기온이 오르거나 적정 보존기간이 지나면 같은 현상이 발생한다. 
                                그러나 이미 발생한 것은 되돌릴 수 없다.
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;단물이 많아 시원한 강화배는 아삭아삭 씹히는 맛이 청량감을 더해준다. 
                                단물이 많아 시원한 맛이 일품인 강화배는 속살이 많고 과즙이 많으며 석세포가 적당히 있어 
                                아삭아삭 씹히는 맛이 청량감을 더해준다. 
                                배가 익을 시기인 9~10월에 밤낮의 온도차가 10도 정도 웃돌아 결실에 가장 좋은 조건으로 
                                맛 좋은 배를 생산할 수 있는 지역이다.
                            </p>
                        </div>
                        <div class="btn1">
                            <button onclick="window.location.href='${path0 }/intro/special.jsp'">
                                <img src="${path0 }/images/list.png" id="btn_img" alt="btn_img"> 
                                <span>목록으로</span>
                            </button>
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