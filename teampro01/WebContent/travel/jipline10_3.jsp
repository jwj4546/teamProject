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
    #lnb .sub2 li a.dp3 { color:#555; font-size:16px; font-weight: 600; }
    #lnb li:hover .sub2 { height:300px; }    


    .title2 { display: flex; margin-left: 70px; margin-top: 40px; }
    #title_img { width: 30px; height: 30px; }
    .sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
    .box_img { display: flex; }
    #intro_img1 { display: flex; width: 500px; height: auto; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
    #intro_img2 { display: flex; width: 500px; height: auto; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
    border:2px solid #000; }
    .intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 400px; }


    .btn1 { width: 900px; margin: 0 auto; }
    .btn1 button { margin-left: 160px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
    border: 2px dotted #FF9898; }
    .btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
    .btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }
    </style>
    <title>짚라인 체험</title> 
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
                                 <li><a href="${path0}/travel/history1.jsp" class="dp2">명소</a></li>
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
                                 <li><a href="${path0}/travel/farmersmarket8.jsp" class="dp2" style="background-color: #f3b8da;">체험여행</a></li>
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
		                            <a href="">HOME</a><a href="${path0}/travel/farmersmarket8.jsp">강화여행</a><a href="${path0}/travel/reports10.jsp">레포츠 여행</a><span style="color:deeppink">짚라인 체험</span>
		                        </p>
		                    </div>
		                    <h2 class="title">상세보기</h2>
		                    <div class="title2">
		                        <img src="${path0 }/images/title_img.png" id="title_img">
		                        <h3 class="sub_title">짚라인 체험</h3>
		                    </div>
		                    <div class="wrap">
		                        <div class="box_img">
		                            <img src="${path0 }/images/jipline01.jpg" id="intro_img1">
		                            <img src="${path0 }/images/jipline03.jpg" id="intro_img2">
		                        </div>
		                        <div class="intro">
		                         
		                            <h3 class="sub_title">《관광포인트》</h3>
		                            <p><br><br>
		                                강화도의 동서남북이 훤히 내려다보이는 강화도의 중앙부에 위치한 혈구산에 위치한 강화레포츠파크는 총길이 1km 5개코스의 집라인과<br>
		              18개의 어드벤쳐코스, 클라이밍 시설등 다이나믹하고 스릴넘치는 레포츠시설을 자연휴양림안에서 즐기실 수 있는 종합레져 테마파크입니다.<br><br>
		
		                                【위치】 : 인천광역시 강화군 불은면 중앙로546-34<br>
		                                【주요시설】 : 짚라인, 어드벤쳐, 클라이밍, 휴양림, 카페 등<br>
		                                【이용시간】 : 09:30 ~ 18:30(평일 17:30)<br>
		                                【문의전화】 :  032-937-7481<br>
		
		                                <br> [참고] 강화 레포츠 파크 <br><br>
		                                <ul>
                                    <li><a href="http://tianlim.co.kr/index_jip.php" target="_blank">
                                        http://tianlim.co.kr/index_jip.php/<br></a></li>
                                </ul>
                        <div class="btn1">
                            <button onclick="window.location.href='https://www.google.co.kr/maps/place/%EA%B0%95%ED%99%94%EB%A0%88%ED%8F%AC%EC%B8%A0%ED%8C%8C%ED%81%AC%2F%ED%9C%B4%EC%96%91%EB%A6%BC/data=!4m15!1m8!3m7!1s0x357c7a1ebdbe52a7:0x80d3bb3e1e81d8c!2z7J247LKc6rSR7Jet7IucIOqwle2ZlOq1sCDrtojsnYDrqbQg7KSR7JWZ66GcIDU0Ng!3b1!8m2!3d37.7129184!4d126.4535869!16s%2Fg%2F11tg2ddt02!3m5!1s0x357c7b3b533ba8c7:0x20f64fa971571e7f!8m2!3d37.7155053!4d126.4534552!16s%2Fg%2F11h77qkq_n?hl=ko&entry=ttu'">
                                <img src="${path0 }/images/map.png" id="map_img"> 
                                <span>지도보기</span>
                            </button>
                            <button onclick="window.location.href='${path0}/travel/reports10.jsp'">
                                <img src="${path0 }/images/list.png" id="btn_img"> 
                                <span>목록으로</span>
                            </button>
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