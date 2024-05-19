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
<title>강화군농경문화관</title>
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
                        <h3 class="sub_title">강화군농경문화관</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/museum2.jpg" id="intro_img1" alt="museum2">
                            <img src="${path0 }/images/museum2_1.jpg" id="intro_img2" alt="museum2">
                        </div>
                        <div class="intro">
                            <p>강화군 농경문화관은 과거?현재?미래의 농경모습을 생동감있게 구현하여 방문객에게 차별화된 볼거리를 제공하며 특히 대도시 주민과 학생들의 농촌체험학습을 적극 연결하므로써 농업인들의 실질적 소득증대 효과를 거양하기 위해 건립하였으며 2003년 6월 12일 개관한 이후 해마다 방문객수가 늘어나고 있다. 지금까지 방문객 대상으로 시대를 넘나드는 농경과 농기자재에 대한 정보와 지식을 제공하고 또한 자라나는 세대에게 농업의 공익적 기능 등 소중한 가치를 교육하는 공간으로 자리잡아 가고 있다. 또한 초중고생의 현장체험학습과 대도시 주부 등 소비문화를 선도하는 계층들의 관심사인 농촌체험 활동 즉, 감자캐기, 고추따기, 고구마캐기, 순무체험 등 사계절 가능한 프로그램을 농업인들의 자생조직인 각 품목별 연구회 등에 연결시킴으로써 농경문화관이 그 역할의 진가를 보여주고 있다. 특히 이곳 농경문화관은 수도권 소비자들을 대상으로 맛있는 강화농산물에 대한 입체적인 홍보 등 신뢰할 수 있는 농산물 판촉장 역할을 수행하는 가운데 향후 점증하는 직거래 수요에 적극 대응하며 농업인과 수도권 소비자간의 지속적인 도농교류를 실현하는 가교로의 자리매김을 하고 있다.</p><br><br>
                            <p>소재지 : 인천광역시 강화군 불은면 중앙로 742-2 (삼성리)</p> 
                        </div>
                        <div class="btn1">
                            <button onclick="window.location.href='https://www.ganghwa.go.kr/open_content/com/common/map.do?lat=37.7033510&lng=126.4347130&height=600px'">
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