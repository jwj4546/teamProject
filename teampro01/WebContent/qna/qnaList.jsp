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
<title>건의사항</title>
<%@ include file="/head.jsp" %>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- DataTables CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<!-- DataTables JS -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<style>
table#tb1 { border:1px solid #cdcdcd; }
thead.thead { background-color:#f3b8da; }
th.item1 { width:8% }
th.item2 { width:50% }
th.item3 { width:20% }
th.item4 { width:10% }

#tb1_wrapper { width: 88%;margin-left:70px; margin-right:70px; margin-top:50px; }
#btn1 { margin-left:70px; background-color:#a77fb1; border-color:#a77fb1; }
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
                                    <li><a href="${path0 }/NoticeList.do" class="dp2">공지사항</a></li>
                                    <li><a href="${path0 }/GetQnaList.do" class="dp2" style="background-color: #f3b8da;">건의사항</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/NoticeList.do">강화소통</a><span style="color:deeppink">건의사항</span>
                        </p>
                    </div>
                    <h2 class="title">건의사항</h2>
                    <div>
				<table class="table table-hover" id="tb1">
					<thead class="thead">
						<tr>
							<th class="item1">번호</th>
							<th class="item2">제목</th>
							<th class="item3">작성일</th>
							<th class="item4">조회 수</th>
							<th class="item5">작성자</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty qnaList }">
							<c:forEach var="dto" items="${qnaList }" varStatus="status">
							<tr>
								<td>${fn:length(qnaList) - status.index }</td>
								<td>
									<c:if test="${(empty sid)}">
										<c:if test="${dto.plevel.equals('1') }">
										<a href="${path0 }/GetQnaList.do" onclick="requireLogin()">${dto.title }</a>
										</c:if>
										<c:if test="${dto.plevel.equals('2') }">
										<a href="${path0 }/GetQnaList.do" onclick="requireLogin()"><span style="padding-left:30px">↳ [답변]</span> ${dto.title }</a>
										</c:if>
									</c:if>
									<c:if test="${(not empty sid) and dto.plevel.equals('1')}">
									<a href="${path0 }/GetQna.do?no=${dto.no }">${dto.title }</a>
									</c:if>
									<c:if test="${(not empty sid) and dto.plevel.equals('2')}">
									<a href="${path0 }/GetQna.do?no=${dto.no }"><span style="padding-left:30px">↳ [답변]</span> ${dto.title }</a>
									</c:if>
								</td>
								<td>
									<fmt:parseDate value="${dto.resdate }" var="res" pattern="yyyy-MM-dd HH:mm:ss" />
									<fmt:formatDate value="${res }" var="resdate" pattern="yyyy년 MM월 dd일" />
									${resdate }
								</td>
								<td>${dto.visited }</td>
								<td>${dto.aid }</td>
							</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty qnaList }">
							<tr>
								<td colspan="5"><strong>질문 및 답변이 존재하지 않습니다.</strong></td>
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
				<c:if test="${not empty sid }">
				<div class="btn-group">
				  <a href="${path0 }/qna/insQuest.jsp" class="btn btn-primary" id="btn1">질문 등록</a>
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