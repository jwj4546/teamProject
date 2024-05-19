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
<title>${title }</title>
<%@ include file="/head.jsp" %>
<script src="${path0 }/js/jquery.dataTables.js"></script>
<link rel="stylesheet" href="${path0 }/css/jquery.dataTables.css" >
<style>
	.container { width:1400px }
	.page { clear:both; }
	#page1 { background-color:#c9dff2; min-height:150vh }
	#page2 { background-color:#5d97f5 }
	.page_title { font-size:36px; padding-top:2em; text-align:center; }
	th.item1 { width:8% }
	th.item2 { width:60% }
	th.item3 { width:20% }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<nav aria-label="breadcrumb d-flex justify-content-between">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="/pro01">Home</a></li>
			    <li class="breadcrumb-item"><a href="${hpath }/NoticeList.do">커뮤니티</a></li>
			    <li class="breadcrumb-item active" aria-current="page">공지사항</li>
			  </ol>
			</nav>
			<hr>
			<div id="tab1">
			<ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" href="${path0 }/NoticeList.do">공지사항</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/GetQnaList.do">묻고 답하기</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="${path0 }/">자료실</a>
			  </li>
			</ul>
			</div>
			<hr>
			<h3 class="page_title"><i class="fas fa-bullhorn"></i>&nbsp;&nbsp;공지사항</h3>
			<hr>
			<div>
				<table class="table table-hover" id="tb1">
					<thead class="thead-dark">
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
				<hr>
				<c:if test="${sid.equals('admin') }">
				<div class="btn-group">
					<a href="${path0 }/notice/notice_ins.jsp" class="btn btn-primary">등록</a>
				</div>
				</c:if>
			</div>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>