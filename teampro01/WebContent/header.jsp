<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<c:set var="hpath" value="<%=request.getContextPath() %>" />   
<header>
	<div class="hd_wrap">
		<div class="wrap clr-fix">
			<nav id="gnb">
				<ul class="menu">
					<li>
						<a href="" class="dp1" id="menu1">시작의섬</a>
						<ul class="sub">
							<li><a href="${hpath }/intro/section.jsp" class="dp2" id="sub1">일반현황/행정구역</a></li>
							<li><a href="${hpath }/intro/history.jsp" class="dp2" id="sub1">유래와 연혁</a></li>
							<li><a href="${hpath }/intro/special.jsp" class="dp2" id="sub1">특산물/특산품</a></li>
						</ul>
					</li>
					<li>
						<a href="" class="dp1" id="menu2">문화의섬</a>
						<ul class="sub">
							<li><a href="${hpath }/culture/movie.jsp" class="dp2" id="sub2">영화관</a></li>
							<li><a href="${hpath }/culture/museum.jsp" class="dp2" id="sub2">박물관/전시관</a></li>
						</ul>
					</li>
					<li>
						<a href="" class="dp1" id="menu3">여행의섬</a>
						<ul class="sub">
							<li><a href="${hpath }/travel/place.jsp" class="dp2" id="sub3">명소</a></li>
							<li><a href="${hpath }/travel/festival.jsp" class="dp2" id="sub3">축제</a></li>
							<li><a href="${hpath }/travel/exp.jsp" class="dp2" id="sub3">체험여행</a></li>
						</ul>
					</li>
					<li>
						<a href="" class="dp1" id="menu4">생활의섬</a>
						<ul class="sub">
							<li><a href="${hpath }/facility/food.jsp" class="dp2" id="sub4">음식점</a></li>
							<li><a href="${hpath }/facility/hotel.jsp" class="dp2" id="sub4">숙박시설</a></li>
							<li><a href="${hpath }/facility/shop.jsp" class="dp2" id="sub4">쇼핑</a></li>
						</ul>
					</li>
					<li>
						<a href="" class="dp1" id="menu5">교통의섬</a>
						<ul class="sub">
							<li><a href="${hpath }/traffic/traffic.jsp" class="dp2" id="sub5">교통정보</a></li>
							<li><a href="${hpath }/traffic/parking.jsp" class="dp2" id="sub5">공영 주차장</a></li>
							<li><a href="${hpath }/traffic/come.jsp" class="dp2" id="sub5">오시는 길</a></li>
						</ul>
					</li>
					<li>
						<a href="" class="dp1" id="menu6">소통의섬</a>
						<ul class="sub">
							<li><a href="${hpath }/notice/notice.jsp" class="dp2" id="sub6">공지사항</a></li>
							<li><a href="${hpath }/qna/qna.jsp" class="dp2" id="sub6">건의사항</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</header>