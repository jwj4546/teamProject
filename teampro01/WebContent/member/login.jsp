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
<title>로그인</title>

<style>
.contents { height: 300px; }
#contents { height: 300px; }
#left1 { height: 300px; }
.wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 300px; height: 300px; 
border: 1px solid #000; position: relative; }
.wrap .box li:hover #cover { display: block; cursor: pointer; }

.box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
font-weight: bold; font-size: 17px; background-color: #eccfe9; }

#img { width: 300px; height: 300px; position: absolute; z-index: 10; }
#cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
</style>
<style>
/* 로그인 */
.login-container {
    background-color: #fff;
    padding: 20px 40px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    width: 100%; margin: 0 auto; margin-top: 50px;
}
.login-container h2 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #333;
    text-align: center;
}
.login-container table {
    width: 100%;
}
.login-container td {
    padding: 10px 0;
}
.login-container input[type="text"],
.login-container input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}
.login-container button {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 5px;
    background-color: #f3b8da;
    color: #000;
    font-size: 16px;
    cursor: pointer;
}
.login-container button:hover {
    background-color: #d5a1c0;
}
.login-container .register-link {
    display: block;
    margin-top: 10px;
    text-align: center;
    color: #333;
    text-decoration: none;
}
.login-container .register-link:hover {
    text-decoration: underline;
}
.login-container .btn-secondary {
    margin-top: 20px;
    background-color: #e2acf0;
}
.login-container .btn-secondary:hover {
    background-color: #a77fb1;
}
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
                                    <li><a href="${path0 }/member/login.jsp" class="dp2" style="background-color: #f3b8da;">로그인/회원가입</a></li>
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
                            <a href="/teampro01">HOME</a><span style="color:deeppink">로그인</span>
                        </p>
                    </div>
                    <h2 class="title">로그인</h2>
                    <div class="login-container">
                        <form action="${path0 }/LogInPro.do" method="post">
                            <table>
                                <tr>
                                    <td><label for="id">아이디</label></td>
                                    <td><input type="text" id="id" name="id" required></td>
                                </tr>
                                <tr>
                                    <td><label for="pw">비밀번호</label></td>
                                    <td><input type="password" id="pw" name="pw" required></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <button type="submit">로그인</button>
                                        <button type="button" class="btn-secondary" onclick="window.location.href='${path0 }/member/join1.jsp'">회원가입</button>
                                    </td>
                                </tr>
                            </table>
                        </form>
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