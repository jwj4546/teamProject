<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<c:set var="hpath" value="<%=request.getContextPath() %>" />   
<%@ include file="/head.jsp" %>
<header>
	<div class="hd_wrap">
            <div class="wrap clr-fix">
                <nav id="gnb3">
                    <ul class="menu">
                        <li>
                            <a href="">
                                <img src="img/logo.png" alt="로고" id="logo">
                            </a>
                        </li>
                        <li>
                            <a href="" class="dp1" id="menu1">강화소개</a>
                            <ul class="sub">
                                <li><a href="" class="dp2" id="sub">일반현황/행정구역</a></li>
                                <li><a href="" class="dp2" id="sub">유래와 연혁</a></li>
                                <li><a href="" class="dp2" id="sub">특산물/특산품</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="" class="dp1" id="menu2">강화문화</a>
                            <ul class="sub">
                                <li><a href="" class="dp2" id="sub">도서관</a></li>
                                <li><a href="" class="dp2" id="sub">박물관</a></li>
                                <li><a href="" class="dp2" id="sub">전시관</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="" class="dp1" id="menu3">강화여행</a>
                            <ul class="sub">
                                <li><a href="" class="dp2" id="sub">명소</a></li>
                                <li><a href="" class="dp2" id="sub">축제</a></li>
                                <li><a href="" class="dp2" id="sub">체험여행</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="" class="dp1" id="menu4">강화생활</a>
                            <ul class="sub">
                                <li><a href="" class="dp2" id="sub">음식점</a></li>
                                <li><a href="" class="dp2" id="sub">숙박시설</a></li>
                                <li><a href="" class="dp2" id="sub">쇼핑</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="" class="dp1" id="menu5">강화정보</a>
                            <ul class="sub">
                                <li><a href="" class="dp2" id="sub">교통정보</a></li>
                                <li><a href="" class="dp2" id="sub">공영주차장</a></li>
                                <li><a href="" class="dp2" id="sub">오시는 길</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="" class="dp1" id="menu6">강화소통</a>
                            <ul class="sub">
                                <li><a href="" class="dp2" id="sub">공지사항</a></li>
                                <li><a href="" class="dp2" id="sub">건의사항</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
</header>