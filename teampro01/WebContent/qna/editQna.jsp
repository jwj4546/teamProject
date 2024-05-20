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
th.item1 { width:8% }
th.item2 { width:60% }
th.item3 { width:20% }
table#tb1 { width: 88%; margin-left:70px; margin-right:70px; margin-top:50px; border:1px solid #cdcdcd; }
thead.thead { background-color:#f3b8da; }

#btn1 { margin-left:70px; background-color:#a77fb1; border-color:#a77fb1; }
#btn3 { background-color:#d679b1; border-color:#d679b1; }
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
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/NoticeList.do">강화소통</a><span style="color:deeppink">공지사항</span>
                        </p>
                    </div>
                    <c:if test="${qna.plevel.equals('1') }">
			<h2 class="title">질문 수정</h2>
			</c:if>
			<c:if test="${qna.plevel.equals('2') }">
			<h2 class="title">답변 수정</h2>
			</c:if>
			<br>
			<form action="${path0 }/EditProQna.do" method="post">
				<table class="table table-striped" id="tb1">
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
				<br>
				<div class="button">
				  	<c:if test="${qna.plevel.equals('1') }">
					<button type="submit" class="btn btn-secondary" onclick="editQuestCheck()" id="btn1">질문 수정</button>
					</c:if>
					<c:if test="${qna.plevel.equals('2') }">
					<button type="submit" class="btn btn-secondary" onclick="editAnsCheck()" id="btn1">답변 수정</button>
					</c:if>
				 	<a href="${path0 }/GetQnaList.do" class="btn btn-danger">취소</a>
				 	<a href="${path0 }/GetQna.do?no=${qna.no} " class="btn btn-info" id="btn3">질문 및 답변 상세보기</a>
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
            </div>
        </div>
    </main>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>