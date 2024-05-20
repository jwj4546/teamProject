<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
* {margin: 0; padding: 0;}
a {text-decoration: none;}
body, html { width: 100%; overflow-x: hidden;}
ul { list-style: none;}

#page1{min-width: 1920px; max-width: 1920px; position: relative; height: 1080px; overflow: hidden;}

.img1 { width: 100vw; height: auto; position: absolute; overflow: hidden; z-index: -20;}
.logo1 {position: absolute; right: 100px; top: 100px; }
.title1 {position: absolute; font-size: 50px; font-weight: bold; top: 850px; left: 200px; color: #fff; text-shadow: 5px 5px 20px #000;}
.title2 {position: absolute; font-size: 90px; font-weight: bold; top: 800px; left: 750px; color: #fff; text-shadow: 5px 5px 20px #000;}
.title3 {position: absolute; font-size: 100px; font-weight: bold; top: 730px; left: 820px; color: #fff; opacity: 0.5; text-shadow: 5px 5px 20px #000;}
   
.dropbtn {
background-color: #333; 
opacity: 0.8;
color: white;
padding-bottom: 39px;
padding-top: 39px;
padding-left: 40%;
padding-right: 40%;
font-size: 16px;
border-radius: 200px 200px 0px 0px;
position: absolute;
transform: translateY(0);
transition: transform 1s;
}


/* The container <div> - needed to position the dropup content */
.dropup {
position: relative;
display: flex;
justify-content: center;
bottom: 150px;
}

.dropup ul {float:left; width:16.6%;}

/* Dropup content (Hidden by Default) */
.dropup-content {
opacity: 0;
position: absolute;
background-color: #fff;
bottom: 0px;
transform: translateY(100%);
min-width: 300px;
box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
z-index: 1;
transition: opacity 1s, transform 1s;
overflow: hidden;
}

/* Links inside the dropup */
.dropup-content li a {
color: black;
text-align: center;
min-width: 300px;
padding: 80px;
text-decoration: none;
display: block;
font-size: 18px;
}

/* Show the dropup menu on hover */
.dropup:hover .dropup-content {
	opacity: 1;
	transform: translateY(0);
}

/* Change the background color of the dropup button when the dropup content is shown */
.dropup:hover .dropbtn {
	background-color: pink;
	transform: translateY(-693px);
}

/* Change color of dropup links on hover */
.dropup-content a:hover {
	background-color: pink;
}


#page2 { width: 1400px; margin: 0 auto; max-width: 1920px; min-width: 1400px; height: 1000px;}
.title4 {text-align: center; margin-top: 100px;}

.circle {text-align: center; margin-top: 100px;}
.empty_box {width: 1920px; height: 30px; background-color: pink; position: absolute; top: 60px; right: -260px;}
.sub_title { position: absolute; text-align: center; top: 150px; font-size: 24px;}
.sub_title ul {list-style: none;}
.sub_title ul li {float: left; width: 140px; margin-left: 117px;}
#tab1 {  position:relative; width: 1400px; height: 600px; 
   clear:both; margin: 10px auto;}
#tab1 li label { position:absolute; top:10px; z-index:20;
       display:inline-block; cursor:pointer;
       width:120px; height:120px; line-height: 38px; 
       text-align: center; color:#000; background-color:pink; border: 2px solid deeppink; border-radius: 50%;}
#tab1 li.item1 label { left: 130px; }    
#tab1 li.item2 label { left: 385px; }
#tab1 li.item3 label { left: 640px; }
#tab1 li.item4 label { left: 895px; }
#tab1 li.item5 label { left: 1150px; }
#tab1 li .tab_ra:checked + label { background-color: #fff; }
.item1 {text-align: center;}
.tab_btn img { width: 80px; height: 80px; margin-top: 20px;}
.tab_img { width: 350px; height: 450px; border: 2px solid #000; display: inline-block; margin-left: 84.5px; float: left; box-shadow: 5px 5px 5px 5px gray; position: relative; top:50px;}
.tab_con { display:none; position:absolute; top:200px; width: 100%; text-align: center; }
.tab_con img { width: 300px; height: 300px; padding-top: 20px; }
.tab_ra { display:none; }
.tab_ra:checked ~ .tab_con { display:block; }

.sub_img img {width: 30px; height: 50px;}
.sub_img .heart { position: absolute; left: 30px;}
.sub_img .balloon { position: absolute; left: 80px;}
.sub_img .paper { position: absolute; left: 130px;}
.sub_img .mark { position: absolute; right: 30px;}
</style>
</head>
<body>
<div id="page1">
			<div style="position: relative;">
				<div>
					<img src="${path0 }/images/ganghwa4.jpg" alt="main photo">
				</div>
		</div>
		<ul>
            <li><img src="${path0 }/images/logomodi.png" alt="로고" class="logo1"></li>
            <li><p class="title1">강 아래, 아름다운 고을</p></li>
            <li><p class="title2">강화</p></li>
            <li><p class="title3">江華</p></li>
        </ul>
		<div class="dropup">
			<a class="dropbtn">
				<img src="${path0 }/images/화살표1.png" alt="화살표" style="width: 64px; height: 64px; stroke: #fff;">
			</a>
			<div class="dropup-content">
				<ul>
					<li style="border-bottom: 2px solid #000;"><a href="${path0 }/intro/section.jsp">강화소개</a></li>
					<li><a href="${path0 }/intro/section.jsp">일반현황/행정구역</a></li>
					<li><a href="${path0 }/intro/history.jsp">유래와 연혁</a></li>
					<li><a href="${path0 }/intro/special.jsp">특산물/특산품</a></li>
				</ul>
				<ul>
					<li style="border-bottom: 2px solid #000;"><a href="${path0 }/culture/library.jsp" class="dp1">강화문화</a></li>
					<li><a href="${path0 }/culture/library.jsp">도서관</a></li>
					<li><a href="${path0 }/culture/museum.jsp">박물관</a></li>
					<li><a href="${path0 }/culture/gallery.jsp">전시관</a></li>
				</ul>
				<ul>
					<li style="border-bottom: 2px solid #000;"><a href="${path0 }/travel/history1.jsp" class="dp1">강화여행</a></li>
					<li><a href="${path0 }/travel/history1.jsp">명소</a></li>
					<li><a href="${path0 }/travel/jindallae5.jsp">축제</a></li>
					<li><a href="${path0 }/travel/farmersmarket8.jsp">체험 여행</a></li>
				</ul>
				<ul>
					<li style="border-bottom: 2px solid #000;"><a href="${path0 }/facility/food.jsp" class="dp1">강화생활</a></li>
					<li><a href="${path0 }/facility/food.jsp">음식점</a></li>
					<li><a href="${path0 }/facility/hotel.jsp">숙박시설</a></li>
					<li><a href="${path0 }/facility/shop.jsp">쇼핑</a></li>
				</ul>
				<ul>
					<li style="border-bottom: 2px solid #000;"><a href="${path0 }/traffic/traffic.jsp" class="dp1">강화정보</a></li>
					<li><a href="${path0 }/traffic/traffic.jsp">교통정보</a></li>
					<li><a href="${path0 }/traffic/parking.jsp">공영 주차장</a></li>
					<li><a href="${path0 }/traffic/come.jsp">오시는 길</a></li>
				</ul>
				<ul>
					<li style="border-bottom: 2px solid #000;"><a href="login.do" class="dp1">강화소통</a></li>
					<c:if test="${empty sid }">
					<li><a href="${path0 }/member/login.jsp">로그인</a></li>
					<li><a href="${path0 }/member/join1.jsp">회원가입</a></li>
					</c:if>
					<c:if test="${!empty sid}">
					    <li><a href="${path0}/LogOut.do" onclick="log_out()">로그아웃</a></li>
					    <c:if test="${sid != 'admin'}">
					    <li><a href="${path0}/EditMember.do?id=${sid}">회원정보</a></li>
					    </c:if>
					    <c:if test="${sid == 'admin'}">
				        <li><a href="${path0}/admin/index.jsp">시스템관리자</a></li>
					    </c:if>
					</c:if>
					<li><a href="${path0 }/NoticeList.do">공지사항</a></li>
					<li><a href="${path0 }/GetQnaList.do">건의사항</a></li>
				</ul>
			</div>
		</div>
	</div>
    <div id="page2">
        <ul>
            <li><h2 class="title4">관광 추천 코스</h2></li>
        </ul>
		<div class="circle">
			<ul id="tab1">
				<div class="empty_box"></div>
				<div class="sub_title">
					<ul>
						<li>강화 나들길</li>
						<li>역사문화 관광</li>
						<li>체험 관광</li>
						<li>섬 관광</li>
						<li>명산 등반</li>
					</ul>
				</div>
				<li class="item1">
					<input type="radio" class="tab_ra" name="tab1" id="tab_ra1" checked>
					<label for="tab_ra1" class="tab_btn"><img src="${path0 }/images/n1.png" alt="n1"></label>
					<div class="tab_con">
						<div class="tab_img">
							<img src="${path0 }/images/nadeulgil10.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">강화나들길</p>
							</div>
						</div>
						<div class="tab_img">
							<img src="${path0 }/images/nadeulgil11.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">강화나들길</p>
						</div>
					</div>
					<div class="tab_img">
							<img src="${path0 }/images/nadeulgil12.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">강화나들길</p>
						</div>
					</div>
				</div>
				</li>
				<li class="item2">
					<input type="radio" class="tab_ra" name="tab1" id="tab_ra2">
					<label for="tab_ra2" class="tab_btn"><img src="${path0 }/images/dol.png" alt="고인돌"></label>
					<div class="tab_con">
						<div class="tab_img">
							<img src="${path0 }/images/hisexperi01.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">보문사</p>
							</div>
						</div>
						<div class="tab_img">
							<img src="${path0 }/images/hisexperi02.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">사찰</p>
							</div>
						</div>
						<div class="tab_img">
							<img src="${path0 }/images/hisexperi03.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">황룡조각상</p>
							</div>
						</div>
					</div>
				</li>
				<li class="item3">
					<input type="radio" class="tab_ra" name="tab1" id="tab_ra3">
					<label for="tab_ra3" class="tab_btn"><img src="${path0 }/images/play.png" alt="체험"></label>
					<div class="tab_con">
						<div class="tab_img">
							<img src="${path0 }/images/repoex01.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">카트라이더</p>
							</div>
						</div><div class="tab_img">
							<img src="${path0 }/images/repoex02.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">강화리조트</p>
							</div>
						</div><div class="tab_img">
							<img src="${path0 }/images/repoex03.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">모노레일</p>
							</div>
						</div>
					</div>
				</li>
				<li class="item4">
					<input type="radio" class="tab_ra" name="tab1" id="tab_ra4">
					<label for="tab_ra4" class="tab_btn"><img src="${path0 }/images/island.png" alt="섬"></label>
					<div class="tab_con">
						<div class="tab_img">
							<img src="${path0 }/images/islandexperi01.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">포토존</p>
							</div>
						</div>
						<div class="tab_img">
							<img src="${path0 }/images/islandexperi02.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">다리</p>
							</div>
						</div>
						<div class="tab_img">
							<img src="${path0 }/images/islandexperi03.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">섬 특산물</p>
							</div>
						</div>
					</div>
				</li>
				<li class="item5">
					<input type="radio" class="tab_ra" name="tab1" id="tab_ra5">
					<label for="tab_ra5" class="tab_btn"><img src="${path0 }/images/mount.png" alt="산"></label>
					<div class="tab_con">
						<div class="tab_img">
							<img src="${path0 }/images/mountexperi01.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">상봉산</p>
							</div>
						</div>
						<div class="tab_img">
							<img src="${path0 }/images/mountexperi02.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">마니산</p>
							</div>
						</div>
						<div class="tab_img">
							<img src="${path0 }/images/mountexperi03.jpg" alt="탭이미지" >
							<div class="sub_img">
								<img src="${path0 }/images/heart.png" alt="하트" class="heart">
								<img src="${path0 }/images/balloon.png" alt="말풍선" class="balloon">
								<img src="${path0 }/images/paper.png" alt="종이비행기" class="paper">
								<img src="${path0 }/images/mark.png" alt="즐겨찾기" class="mark">
								<p style="position:absolute; bottom:30px; left:150px;">고려산</p>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
     </div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>