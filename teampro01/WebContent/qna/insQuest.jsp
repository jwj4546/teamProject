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
			    <li class="breadcrumb-item active" aria-current="page">질문 등록</li>
			  </ol>
			</nav>
			<hr>
			<h3 class="page_title"><i class="fas fa-comment-dots"></i>&nbsp;&nbsp;질문 등록</h3>
			<hr>
			<form action="${path0 }/QuestionIns.do" method="post">
				<table class="table table-striped">
					<tbody>
						<tr>
							<th><label for="title">제목</label></th>
							<td>
								<input type="text" name="title" id="title" class="form-control" maxlength="100" required>
							</td>
						</tr>
						<tr>
							<th><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="button">
				  <button type="submit" class="btn btn-primary" onclick="insQuestCheck()">질문 등록</button>
				  <a href="${path0 }/GetQnaList.do" class="btn btn-danger">취소</a>
				</div>
			</form>
			<script>
			function insQuestCheck() {
				alert("질문이 등록되었습니다.");
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