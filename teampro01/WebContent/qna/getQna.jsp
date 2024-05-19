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
			    <li class="breadcrumb-item"><a href="${hpath }/GetQnaList.do">묻고 답하기</a></li>
			    <li class="breadcrumb-item active" aria-current="page">질문 및 답변 상세보기</li>
			  </ol>
			</nav>
			<h3 class="page_title"><i class="fas fa-book"></i>&nbsp;&nbsp;질문 및 답변 상세보기</h3>
			<hr>
			<div>
				<table class="table table-striped">
					<tbody>
						<tr>
							<th>번호</th>
							<td>${qna.no }</td>
						</tr>
						<tr>
							<th>제목</th>
							<td>${qna.title }</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>${qna.content }</td>
						</tr>
						<tr>
							<th>작성 일시</th>
							<td>${qna.resdate }</td>
						</tr>
						<tr>
							<th>조회 수</th>
							<td>${qna.visited }</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="button">
				  <c:if test="${(not empty sid) and qna.plevel.equals('1') }">
				  <a href="${path0 }/qna/insAns.jsp?parno=${qna.no }" class="btn btn-primary">답변 등록</a>
				  </c:if>
				  <c:if test="${sid.equals(qna.aid)}">
				  	<c:if test="${qna.plevel.equals('1') }">
					<a href="${path0 }/EditQna.do?no=${qna.no }" class="btn btn-secondary">질문 수정</a>
					</c:if>
				  </c:if>
				  <c:if test="${sid.equals(qna.aid) || sid.equals('admin')}">
					<c:if test="${qna.plevel.equals('1') }">
					<a href="${path0 }/DelQuestion.do?parno=${qna.no }" class="btn btn-danger" onclick="delQuestCheck()">질문 삭제</a>
					</c:if>
					<c:if test="${qna.plevel.equals('2') }">
					<a href="${path0 }/EditQna.do?no=${qna.no }" class="btn btn-secondary">답변 수정</a>
					<a href="${path0 }/DelAnswer.do?no=${qna.no }" class="btn btn-danger" onclick="delAnsCheck()">답변 삭제</a>
					</c:if>
  				  </c:if>
				  <a href="${path0 }/GetQnaList.do" class="btn btn-info">질문 및 답변 목록</a>
				</div>
			</div>
			<script>
			function delQuestCheck() {
				alert("해당 질문이 삭제되었습니다.");
			}
			function delAnsCheck() {
				alert("해당 답변이 삭제되었습니다.");
			}
			</script>
		</div>
	</section>
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title"></h3>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>