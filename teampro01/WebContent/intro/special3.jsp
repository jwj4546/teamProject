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
<title>강화섬약쑥한우</title>
<style>
.title2 { display: flex; margin-left: 70px; margin-top: 40px; }
#title_img { width: 30px; height: 30px; }
.sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
.box_img { display: flex; }
#intro_img1 { display: flex; width: 500px; height: 500px; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
#intro_img2 { display: flex; width: 500px; height: 500px; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
border:2px solid #000; }

.intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 250px; }
.btn1 { width: 900px; margin: 0 auto; text-align:center;}
.btn1 button { margin-left: 70px; margin-top: 100px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
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
                        <h3 class="sub_title">강화섬약쑥한우</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/special3-1.jpg" id="intro_img1" alt="intro1">
                            <img src="${path0 }/images/special3-2.jpg" id="intro_img2" alt="intro2">
                        </div>
                        <div class="intro">
                            <p>
                                <strong>[ 강화섬약쑥한우의 효능 ]</strong><br>
                                &nbsp;단백질과 필수아미노산 및 불포화지방산이 풍부하여 소화기를 보하고 힘줄과 뼈, 허리와 다리를 튼튼하게 하며 
                                기력 보충과 원기 회복에 좋은 식품입니다.
                                <br><br>
                                <strong>[ 강화섬약쑥한우의 효능 ]</strong><br>
                                &nbsp;- 2009년 인천광역시 FLY마크 인증
                                <br>&nbsp;- 2012년 전국한우품평회 대상 수상, 1+등급이상 출현율 전국 1위
                                <br>&nbsp;- 2013년 전국한우품평회 최우수상 수상
                                <br>&nbsp;- 2014년 1+등급이상 출현율 전국 1위
                                <br>&nbsp;※ 1+등급 이상 출현율 2012년, 2014년 전국 최고로 그 품질 우수성 인정
                                <br><br>
                                <strong>[ 소개글 ]</strong><br>
                                &nbsp;지역특산물인 강화사자발약쑥을 발효시킨 사료 첨가제를 개발하여 특허 및 상표등록, 
                                생산시설을 완비 하였고 특히, 대학 연구소를 통한 연구용역과 시험사육 결과 약쑥발효 첨가제를 한우에 급여할 경우 
                                육질과 육량의 개선 및 불포화지방산 함량 등의 성분이 증가되는 효과가 있습니다.
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