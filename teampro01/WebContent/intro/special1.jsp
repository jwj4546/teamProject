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
<title>강화섬포도</title>

<style>
.title2 { display: flex; margin-left: 70px; margin-top: 40px; }
#title_img { width: 30px; height: 30px; }
.sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
.box_img { display: flex; }
#intro_img1 { display: flex; width: 500px; height: 350px; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
#intro_img2 { display: flex; width: 500px; height: 350px; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
border:2px solid #000; }

.intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 250px; }
.btn1 { width: 900px; margin: 0 auto;  text-align:center;}
.btn1 button { margin-left: 70px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
border: 2px dotted #FF9898; }
.btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
.btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
.btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
.btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }

.box_img2 { display: flex; margin-top: 50px; }
#intro_img { display: flex; width: 300px; height: 200px; margin-left: 70px; border:2px solid #000; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
	<main id="contents" class="clr-fix" style="height:1400px;">
        <div class="wrap clr-fix">
            <div class="contents_wrap">
                <aside id="left1" style="height:1400px;">
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
                <div class="contents" style="height:1400px;">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/intro/section.jsp">강화소개</a><span style="color:deeppink">특산물/특산품</span>
                        </p>
                    </div>
                    <h2 class="title">상세보기</h2>
                    <div class="title2">
                        <img src="${path0 }/images/title_img.png" id="title_img" alt="title">
                        <h3 class="sub_title">강화섬포도</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/special1-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/special1-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 강화섬포도 명칭의 유래 ]</strong><br>
                                &nbsp;인간이 재배했던 과일 중에 가장 오래 된 것이 바로 포도이다. 
                                8000년 전부터 경작되기 시작한 포도는 이집트의 상형문자에서도 발견되었는데 이집트인들이 포도주를 만드는 장면이 바로 그것이다. 
                                19세기에 진딧물로 인해 유럽의 포도밭들이 초토화 되었을 때, 유럽의 포도 재배자들이 건강한 포도나무 가지를 미국산 뿌리에 접붙여 
                                저항력이 강한 재래종을 만들어 오늘날까지 내려오고 있다. 우리나라에서는 고려 충숙왕 때 중국으로부터 유럽계 흑포도가 도입되었다. 
                                우리나라에서 야생하고 있는 산포도가 있기도 했지만 포도로서의 재배적 가치는 거의 없는 편이었다. 
                                1906년 뚝섬에 원예모범장, 1908년 수원에 권업모범장이 설립되어 외국에서 도입된 포도 품종들이 시험 재배되면서 현대적 재배가 시작되었고, 
                                1960년도부터 전국적으로 확산 재배되기 시작했다. 강화도에서 재배되는 포도는 특히 섬에서 나오는 포도라 
                                포도의 맛이 다른 지역과 많은 차이가 있다. 다른 지역과의 차별화를 위해 브랜드 명을 강화 섬포도라 하였다.
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;진한 맛과 향을 자랑하는 강화포도는 해풍을 맞고 성장하여 조직이 치밀하고 단단하며 운반과 저장에 있어서도 
                                신선도가 오랫동안 유지되는 고품질의 포도로써 타지방에서 생산되고 있는 캠벌얼리 포도의 당도가 14˚BX인데 비해 
                                강화포도는 해양성 기후의 영향으로 17~18˚BX 의 높은 당도와 달콤하고 싱그러운 맛과 향이 으뜸이다.
                            </p>
                        </div>
                        <div class="box_img2">
                            <img src="${path0 }/images/special1-3.jpg" id="intro_img" alt="intro3">
                            <img src="${path0 }/images/special1-4.jpg" id="intro_img" alt="intro4">
                            <img src="${path0 }/images/special1-5.jpg" id="intro_img" alt="intro5">
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