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
			    <li class="breadcrumb-item active" aria-current="page">질문 및 답변 수정</li>
			  </ol>
			</nav>
			<hr>
			<c:if test="${qna.plevel.equals('1') }">
			<h3 class="page_title"><i class="fas fa-edit"></i>&nbsp;&nbsp;질문 수정</h3>
			</c:if>
			<c:if test="${qna.plevel.equals('2') }">
			<h3 class="page_title"><i class="fas fa-edit"></i>&nbsp;&nbsp;답변 수정</h3>
			</c:if>
			<hr>
			<form action="${path0 }/EditProQna.do" method="post">
				<table class="table table-striped">
					<tbody>
						<tbody>
						<tr>
							<th><label for="title">제목</label></th>
							<td>
								<input type="hidden" name="no" id="no" value="${qna.no }">
								<input type="text" name="title" id="title" class="form-control" maxlength="100" value="${qna.title }" required>
							</td>
						</tr>
						<tr>
							<th><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control">${qna.content }</textarea>
							</td>
						</tr>
						<tr>
							<th><label for="resdate">작성 일시</label></th>
							<td>
								<input type="text" name="resdate" id="resdate" class="form-control" value="${qna.resdate }" disabled>
							</td>
						</tr>
						<tr>
							<th><label for="visited">조회 수</label></th>
							<td>
								<input type="text" name="visited" id="visited" class="form-control" value="${qna.visited }" disabled>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="button">
				  	<c:if test="${qna.plevel.equals('1') }">
					<button type="submit" class="btn btn-secondary" onclick="editQuestCheck()">질문 수정</button>
					</c:if>
					<c:if test="${qna.plevel.equals('2') }">
					<button type="submit" class="btn btn-secondary" onclick="editAnsCheck()">답변 수정</button>
					</c:if>
				 	<a href="${path0 }/GetQnaList.do" class="btn btn-danger">취소</a>
				 	<a href="${path0 }/GetQna.do?no=${qna.no} " class="btn btn-info">질문 및 답변 상세보기</a>
				</div>
			</form>
			<script>
			function editQuestCheck() {
				alert("해당 질문이 수정되었습니다.");
			}
			function editAnsCheck() {
				alert("해당 답변이 수정되었습니다.");
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