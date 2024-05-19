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
<title>강화문학관(2F 조경희수필문학관)</title>
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
                        <h3 class="sub_title">강화문학관(2F 조경희수필문학관)</h3>
                    </div>
                    <div class="wrap">
                        <div class="box_img">
                            <img src="${path0 }/images/gallery4.webp" id="intro_img1" alt="gallery4">
                            <img src="${path0 }/images/gallery4_1.jpg" id="intro_img2" alt="gallery4">
                        </div>
                        <div class="intro">
                            <p>유구한 역사문화의 고장인 우리강화, 그중에서도 고려시대 대몽항쟁의 근거지인 고려궁지와 철종임금의 잠저인 용흥궁, 그리고 성공회성당과 연접해 있는 강화문학관은 민족 문학의 위대한 정신을 계승하고 강화문학의 자존심과 굳은 절개를 보여주고 있다.</p><br>

                            <p>문학관 내부는 연면적 755㎡로 1층에는 강화의 자랑스러운 문학전통을 한눈에 볼 수 있는 문학 전시관이 마련되어 있다. 긴 역사만큼이나 많은 문인과 풍부한 작품을 남긴 강화문학의 세계가 다양한 전시물을 통해 펼쳐진다.</p><br>
                                
                            <p>2층에는 오늘의 문학관이 있도록 계기를 마련해준 故 조경희 선생의 문학 세계와 생애를 전해주는 수필문학관과 기증유품 9,000여점이 전시되어 있어 선생의 숭고한 뜻을 되새겨 볼 수 있다. 강화의 유서 깊은 역사문화와 민족문화의 전통을 전시하고 있는 강화문학관은 자라나는 후세에게 문학의 꿈과 희망을 키워주고 문학을 사랑하는 이들의 소중한 쉼터로 거듭나고 있다.</p><br><br>
                            <p>소재지 : 인천광역시 강화군 강화읍 관청길 40 (관청리, 강화문학관)</p>
                        </div>
                        <div class="btn1">
                            <button onclick="window.location.href='https://www.ganghwa.go.kr/open_content/com/common/map.do?lat=37.7495577&lng=126.4855841&height=600px'">
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