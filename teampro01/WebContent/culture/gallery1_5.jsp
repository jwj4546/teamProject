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
<title>강화미술관</title>
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
                                    <li><a href="${path0 }/culture/museum.jsp" class="dp2">박물관</a></li>
                                    <li><a href="${path0 }/culture/gallery.jsp" class="dp2"  style="background-color: #f3b8da;">전시관</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/culture/library.jsp">강화문화</a><span style="color:deeppink">전시관</span>
                        </p>
                    </div>
                    <h2 class="title">상세보기</h2>
                    <div class="title2">
                        <img src="${path0 }/images/title_img.png" id="title_img" alt="title">
                        <h3 class="sub_title">강화미술관</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/gallery5.jpg" id="intro_img1" alt="gallery5">
                            <img src="${path0 }/images/gallery5_1.jpg" id="intro_img2" alt="gallery5">
                        </div>
                        <div class="intro">
                            <p>강화는 몽고의 침입에 맞서 40여년간 고려의 수도로서 그 역할을 다해왔을 뿐만 아니라 민족 최고의 문화유산인 고려청자와 팔만대장경 등이 탄생한 문화의 다양성과 우수성을 가진 문화 수도이기도 합니다.</p><br>

                                
                            <p>강화미술관 내부는 주전시실 503㎡, 소전시실 110㎡, 세미나실 85㎡로 강화 지역 문화예술인이 자유롭게 작품을 전시하고 공연할 수 있는 새로운 형태의 공간으로 구성되어 있습니다. 강화미술관을 통해 강화가 가진 예술적 끼와 전통을 대내외에 알려주는 플랫폼이 될 것을 희망하며 많은 예술인들이 이곳을 중심으로 활발히 활동하여 군민들의 예술적인 안목향상과 청소년들의 문화욕구 해소에 큰 역할을 하리라 기대합니다. 지역에 기반을 두고 있는 예술인의 문화공간으로 연중 다양한 전시와 행사가 열리고 있습니다.</p><br><br>
                            <p>소재지 : 인천광역시 강화군 강화읍 남문로 52 (남산리)</p>
                        </div>
                        <div class="btn1">
                            <button onclick="window.location.href='https://www.ganghwa.go.kr/open_content/com/common/map.do?lat=37.7425808&lng=126.4879726&height=600px'">
                                <img src="${path0 }/images/map.png" id="map_img" alt="map"> 
                                <span>지도보기</span>
                            </button>
                            <button onclick="window.location.href='${path0 }/culture/gallery.jsp'">
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