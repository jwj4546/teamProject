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
<%@ include file="/head.jsp" %>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- DataTables CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
<!-- DataTables JS -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

<style>
#contents { height: 1300px; }
.wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 300px; height: 300px; 
border: 1px solid #000; position: relative; }
.wrap .box li:hover #cover { display: block; cursor: pointer; }

.box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
font-weight: bold; font-size: 17px; background-color: #eccfe9; }

#img { width: 300px; height: 300px; position: absolute; z-index: 10; }
#cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
th.item1 { width:10%; }
th.item2 { width:10%; }
th.item3 { width:25%; }
th.item4 { width:10%; }
th.item5 { width:10%; }
th.item6 { width:20%; }
th.item7 { width:15%; }
</style>
<title>회원관리</title>

<style>
.contents { height: 1000px; }
#contents { height: 1000px; }
#left1 { height: 1000px; }
.wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 300px; height: 300px; 
border: 1px solid #000; position: relative; }
.wrap .box li:hover #cover { display: block; cursor: pointer; }

.box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
font-weight: bold; font-size: 17px; background-color: #eccfe9; }

#img { width: 200px; height: 200px; position: absolute; z-index: 10; margin-left: 50px; margin-top: 75px; }
#cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }

table#tb1 { border:1px solid #cdcdcd; }
thead.thead { background-color:#f3b8da; }

#tb1_wrapper { width: 88%;margin-left:70px; margin-right:70px; margin-top:50px; }
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
                                    <li><a href="${path0 }/admin/index.jsp" class="dp2" style="background-color: #f3b8da;">시스템관리자</a></li>
                                    <li><a href="${path0 }/NoticeList.do" class="dp2">공지사항</a></li>
                                    <li><a href="${path0 }/GetQnaList.do" class="dp2">건의사항</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="">강화소통</a><span style="color:deeppink">시스템관리자</span>
                        </p>
                    </div>
                    <h2 class="title">시스템관리자</h2>
                    <div class="wrap">
                        <table class="table table-striped" id="tb1">
						<thead class="thead">
							<tr>
								<th class="item1">번호</th>
								<th class="item2">아이디</th>
								<th class="item3">비밀번호</th>
								<th class="item4">이름</th>
								<th class="item5">생년월일</th>
								<th class="item6">이메일</th>
								<th class="item7">연락처</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty memberList }">
								<c:forEach var="dto" items="${memberList }" varStatus="status">
								<tr>
									<td>
										<input type="checkbox" name="id" id="id${status.count }" value="${dto.id }">
										${status.count }
									</td>
									<td>${dto.id }</td>
									<td>${dto.pw }</td>
									<td>${dto.name }</td>
									<td>${dto.birth }</td>
									<td>${dto.email }</td>
									<td>${dto.tel }</td>
								</tr>
								</c:forEach>
							</c:if>
							<c:if test="${empty memberList }">
								<tr>
									<td colspan="7"><strong>회원이 존재하지 않습니다.</strong></td>
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
					</script>
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