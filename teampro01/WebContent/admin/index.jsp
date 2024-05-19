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
<title>시스템관리자</title>

<style>
.contents { height: 1000px; }
#contents { height: 1000px; }
#left1 { height: 1000px; }
.wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 302px; height: 302px; 
border: 1px solid #000; position: relative; }
.wrap .box li:hover #cover { display: block; cursor: pointer; }

.box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
font-weight: bold; font-size: 17px; background-color: #eccfe9; }

#img { width: 200px; height: 200px; position: absolute; z-index: 10; margin-left: 50px; margin-top: 75px; }
#cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
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
                                <a class="dp1">강화소통</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/admin/index.jsp" class="dp2" style="background-color: #f3b8da;">시스템관리자</a></li>
                                    <li><a href="${path0 }/NoticeList.do" class="dp2">공지사항</a></li>
                                    <li><a href="${path0 }/GetQnaList.do" class="dp2">건의사항</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="">강화소통</a><span style="color:deeppink">시스템관리자</span>
                        </p>
                    </div>
                    <h2 class="title">시스템관리자</h2>
                    <div class="wrap">
                        <div class="box">
                            <li>
                                <a href="${path0 }/MemberList.do"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/member.png" alt="member" id="img">
                                <span class="text">회원관리</span>
                            </li>
                            <li>
                                <a href="${path0 }/NoticeList.do"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/notice.png" alt="notice" id="img">
                                <span class="text">공지사항 관리</span>
                            </li>
                            <li>
                                <a href="${path0 }/GetQnaList.do"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/qna.png" alt="qna" id="img">
                                <span class="text">건의사항 관리</span>
                            </li>
                            <li>
                                <a href="${path0}/EditMember.do?id=${sid}"><img src="${path0 }/images/look4.png" id="cover" alt="cover"></a>
                                <img src="${path0 }/images/memberInfo.png" alt="memberInfo" id="img">
                                <span class="text">회원정보수정</span>
                            </li>
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