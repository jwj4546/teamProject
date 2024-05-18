<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="ipath" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>

<style>
.container{ width:1400px; }
.page { clear:both; height:100vh; }
#page { background-color:#42bcf5; }
#page { background-color:#fcb603; }
#page { background-color:#fcb603; }
#page { background-color:##fcb603; }
.page_title {font-size:36px; padding-top:2em; text-align:center;}
</style>
</head>

<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<hr>
<div id="contents">
	<h2 class="title">관리자 페이지</h2>
	<section class="row">
		<aside id="lnb" class="col-3">
			<nav>
				<ul>
					<li><a href="${path0 }/memberList.do" }>회원목록</a></li>
					<li><a href="${path0 }/notiList.do" }>게시판 관리</a></li>
				</ul>
			</nav>
			<h3 class="page_title">제작자: %{author }</h3>
		</div>
		<hr>
	</section>
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">
		<h3 class="page_title">임시 서버 애플리케이션 디렉토리: ${realPath }</h3>
		<h3>main 프로젝트 디렉토리: %{path0 }</h3>
		<h3>head 프로젝트 디렉토리: %{iPath }</h3>
		<h3>header 프로젝트 디렉토리: %{hPath } </h3>
		</div>
		<hr>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>