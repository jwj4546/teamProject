<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
	.container { width:1400px }
	.page { clear:both; height:100vh }
	#page1 { background-color:#c9dff2 }
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
			    <li class="breadcrumb-item"><a href="${hpath }/NoticeList.do">공지사항</a></li>
			    <li class="breadcrumb-item active" aria-current="page">공지사항 상세보기</li>
			  </ol>
			</nav>
			<hr>
			<h3 class="page_title"><i class="fas fa-bullhorn"></i>&nbsp;&nbsp;공지사항 상세보기</h3>
			<hr>
			<div>
				<table class="table table-striped">
					<tbody>
						<tr>
							<th>번호</th>
							<td>${notice.no }</td>
						</tr>
						<tr>
							<th>제목</th>
							<td>${notice.title }</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>${notice.content }</td>
						</tr>
						<tr>
							<th>작성 일시</th>
							<td>${notice.resdate }</td>
						</tr>
						<tr>
							<th>조회 수</th>
							<td>${notice.visited }</td>
						</tr>
							
					</tbody>
				</table>
				<hr>
				<div class="button-container" style="display: flex;">
					<c:if test="${sid.equals('admin') }">
					<div class="button">
						<a href="${path0 }/notice/notice_ins.jsp" class="btn btn-primary">등록</a>
						<a href="${path0 }/EditNotice.do?no=${notice.no }" class="btn btn-secondary">수정</a>
						<a href="${path0 }/DelNotice.do?no=${notice.no }" class="btn btn-danger" onclick="removeCheck()">삭제</a>
						
					</div>
					</c:if>
					<div class="button">
						&nbsp;<a href="${path0 }/NoticeList.do" class="btn btn-info">목록</a>
					</div>
				</div>
				<hr>
			</div>
			<script>
			function removeCheck() {
				alert("해당 공지사항이 삭제되었습니다.");
			}
			</script>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>