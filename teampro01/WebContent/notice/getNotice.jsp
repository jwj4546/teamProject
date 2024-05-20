<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세보기</title>
<%@ include file="/head.jsp" %>
<style>
#tb1 { width:88%; margin-left:70px; margin-top:50px; }
th.item1 { width:8% }
th.item2 { width:60% }
th.item3 { width:20% }

#btn1 { margin-left:70px; background-color:#a77fb1; border-color:#a77fb1; }
#btn2 { background-color:#a77fb1; border-color:#a77fb1; }
#btn4 { background-color:#d679b1; border-color:#d679b1; }
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
                    <h2 class="title">공지사항 상세보기</h2>
                    <div>
				<table class="table table-striped" id="tb1">
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
				<br>
				<div class="button-container" style="display: flex;">
					<c:if test="${sid.equals('admin') }">
					<div class="button">
						<a href="${path0 }/notice/notice_ins.jsp" class="btn btn-primary" id="btn1">등록</a>
						<a href="${path0 }/EditNotice.do?no=${notice.no }" class="btn btn-secondary" id="btn2">수정</a>
						<a href="${path0 }/DelNotice.do?no=${notice.no }" class="btn btn-danger" onclick="removeCheck()">삭제</a>
						
					</div>
					</c:if>
					<div class="button">
						&nbsp;<a href="${path0 }/NoticeList.do" class="btn btn-info" id="btn4">목록</a>
					</div>
				</div>
				<br>
			</div>
			<script>
			function removeCheck() {
				alert("해당 공지사항이 삭제되었습니다.");
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