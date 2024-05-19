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
<title>강화역사박물관</title>
    <style>
    .title2 { display: flex; margin-left: 70px; margin-top: 40px; }
    #title_img { width: 30px; height: 30px; }
    .sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
    .box_img { display: flex; }
    #intro_img1 { display: flex; width: 500px; height: auto; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
    #intro_img2 { display: flex; width: 500px; height: auto; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
    border:2px solid #000; }
    .intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 400px; }
    .btn1 { width: 900px; margin: 0 auto; text-align:center;}
    .btn1 button { margin-left: 70px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
    border: 2px dotted #FF9898; }
    .btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
    .btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }
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
                                <a class="dp1">강화문화</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/culture/library.jsp" class="dp2">도서관</a></li>
                                    <li><a href="${path0 }/culture/museum.jsp" class="dp2"  style="background-color: #f3b8da;">박물관</a></li>
                                    <li><a href="${path0 }/culture/gallery.jsp" class="dp2">전시관</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/culture/library.jsp">강화문화</a><span style="color:deeppink">도서관</span>
                        </p>
                    </div>
                    <h2 class="title">상세보기</h2>
                    <div class="title2">
                        <img src="${path0 }/images/title_img.png" id="title_img" alt="title">
                        <h3 class="sub_title">강화역사박물관</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/museum3.jpg" id="intro_img1" alt="museum3">
                            <img src="${path0 }/images/museum3_1.jpg" id="intro_img2" alt="museum3">
                        </div>
                        <div class="intro">
                            <p>강화역사박물관은 강화의 문화유산을 보존·연구하여 전시할 목적으로 세워진 공립박물관입니다. 2010년 개관하였으며 상설전시실, 기획전시실을 비롯하여 영상실, 강당, 뮤지엄 샾 등 다양한 부대시설을 갖추고 있습니다. 상설전시실에는 강화의 선사시대 유적지와 고려왕릉에서 출토 된 유물과 향교, 전통사찰 소장품 등의 문화재가 전시되어 있습니다. 기획전시실에서는 해마다 다채로운 주제의 특별전이 열립니다. 그리고 강화 역사의 이해를 돕기 위해 영상실과 교육프로그램을 함께 운영하고 있어 복합문화공간으로서 역할을 하고 있습니다. 강화역사박물관은 고인돌공원 옆에 위치해있어 세계문화유산으로 지정되어있는 강화고인돌을 함께 관람할 수 있습니다. 특히 고인돌 공원에 있는 강화지석묘는 경기지방을 비롯하여 중부지방에서는 보기 드문 거대한 탁자식으로서, 뚜껑돌은 길이 710cm, 너비 550cm나 되는 거석으로 청동기시대의 대표적 유적입니다.</p><br><br>
                            <p>소재지 : 인천광역시 강화군 하점면 강화대로 994-19 (부근리, 강화역사박물관)</p> 
                        </div>
                        <div class="btn1">
                            <button onclick="window.location.href='https://www.ganghwa.go.kr/open_content/com/common/map.do?lat=37.7736098&lng=126.4357742&height=600px'">
                                <img src="${path0 }/images/map.png" id="map_img" alt="map"> 
                                <span>지도보기</span>
                            </button>
                            <button onclick="window.location.href='${path0 }/culture/museum.jsp'">
                                <img src="${path0 }/images/list.png" id="btn_img" alt="list"> 
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