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
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div id="contents">
	<section class="page" id="page1">
		<div style="width:1400px; margin:0 auto;">
			<h3 class="page_title"><i class="fas fa-edit"></i>&nbsp;&nbsp;공지사항 글 수정</h3>
			<hr>
			<form action="${path0 }/EditProNotice.do" method="post">
				<table class="table table-striped">
					<tbody>
						<tr>
							<th><label for="no">번호</label></th>
							<td>
								<input type="text" name="no" id="no" class="form-control" maxlength="100" value="${notice.no }" readonly>
							</td>
						<tr>
							<th><label for="title">제목</label></th>
							<td>
								<input type="text" name="title" id="title" class="form-control" maxlength="100" value="${notice.title }" required>
							</td>
						</tr>
						<tr>
							<th><label for="content">내용</label></th>
							<td>
								<textarea name="content" id="content" rows="8" cols="80" class="form-control">${notice.content }</textarea>
							</td>
						</tr>
						<tr>
							<th><label for="resdate">작성 일시</label></th>
							<td>
								<input type="text" name="resdate" id="resdate" class="form-control" maxlength="100" value="${notice.resdate }" disabled>
							</td>
						</tr>
						<tr>
							<th><label for="visited">조회 수</label></th>
							<td>
								<input type="text" name="visited" id="visited" class="form-control" maxlength="100" value="${notice.visited }" disabled>
							</td>
						</tr>
					</tbody>
				</table>
				<hr>
				<div class="button">
					<button type="submit" class="btn btn-secondary" onclick="editCheck()">수정</button>
					<a href="${path0 }/NoticeList.do" class="btn btn-danger">취소</a>
					<a href="${path0 }/GetNotice.do?no=${notice.no }" class="btn btn-info">상세보기</a>
				</div>
			</form>
			<script>
			function editCheck() {
				alert("해당 공지사항이 수정되었습니다.");
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