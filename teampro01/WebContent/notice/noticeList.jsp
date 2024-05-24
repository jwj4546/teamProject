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
<title>공지사항</title>
<%@ include file="/head.jsp" %>
<!--  
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css" >
<script src="${path0 }/js/jquery.dataTables.js"></script>
-->
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- DataTables CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<!-- DataTables JS -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<style>
table#tb1 { border:1px solid #cdcdcd; }
thead.thead { background-color:#f3b8da; }
.thead th.item1 { width: 10%; }
.thead th.item2 { width: 60%; }
.thead th.item3 { width: 20%; }
.thead th.item4 { width: 10%; }

table { margin-left: 70px; }
#tb1_wrapper { width: 88%; margin-left:70px; margin-right:70px; margin-top:50px; }

#btn1 { margin-left:70px; background-color:#a77fb1; border-color:#a77fb1; }
/*
.breadcrumb { margin: 0; background-color:#fff; padding:0; height:66px; border-radius:0px; padding-top: 20px; }
#bc p { width:1200px; text-align:right; margin-right:30px; }
.breadcrumb p a:hover { text-decoration: none; }
*/
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
	                        <li><a href="${path0 }/NoticeList.do" class="dp2" style="background-color: #f3b8da;">공지사항</a></li>
							<li><a href="${path0 }/GetQnaList.do" class="dp2">건의사항</a></li>
	                		</ul>
	            		</li>
	        		</ul>
	    		</nav>
			</aside>
			<div class="contents">
	    		<div class="breadcrumb" id="bc">
	        		<p>
	            		<a href="/teampro01">HOME</a><a href="${path0 }/NoticeList.do">강화소통</a><span style="color:deeppink">공지사항</span>
	                </p>
				</div>
	            <h2 class="title">공지사항</h2>
	            <div>
					<table class="table table-hover" id="tb1">
						<thead class="thead">
							<tr>
								<th class="item1">번호</th>
								<th class="item2">제목</th>
								<th class="item3">작성 일시</th>
								<th class="item4">조회 수</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty noticeList }">
								<c:forEach var="dto" items="${noticeList }" varStatus="status">
									<tr>
										<td>${fn:length(noticeList) - status.index }</td>
										<td>
											<c:if test="${empty sid }">
												<a href="${path0 }/NoticeList.do" onclick="requireLogin()">${dto.title }</a>
											</c:if>
											<c:if test="${!empty sid }">
												<a href="${path0 }/GetNotice.do?no=${dto.no }">${dto.title }</a>
											</c:if>
										</td>
										<td>${dto.resdate }</td>
										<td>${dto.visited }</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty noticeList }">
								<tr>
									<td colspan="4"><strong>공지사항이 존재하지 않습니다.</strong></td>
								</tr>
							</c:if>
						</tbody>
					</table>
					<script>
					$(document).ready(function(){
						$("#tb1").DataTable({
							order:[[0,"desc"]]
						});
					});
					function requireLogin() {
						alert("로그인 후 이용이 가능합니다.");
					}
					</script>
					<br>
					<c:if test="${sid.equals('admin') }">
						<div class="btn-group">
							<a href="${path0 }/notice/notice_ins.jsp" class="btn btn-primary" id="btn1">등록</a>
						</div>
					</c:if>
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