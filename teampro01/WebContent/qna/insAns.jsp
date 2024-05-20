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
                                    <li><a href="${path0 }/NoticeList.do" class="dp2" style="background-color: #f3b8da;">공지사항</a></li>
                                    <li><a href="${path0 }/GetQnaList.do" class="dp2">건의사항</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <%
                int parno = Integer.parseInt(request.getParameter("parno"));
                pageContext.setAttribute("parno", parno);
                %>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/NoticeList.do">강화소통</a><span style="color:deeppink">공지사항</span>
                        </p>
                    </div>
                    <h2 class="title">답변 등록</h2>
                    <div>
				<form action="${path0 }/AnswerIns.do" method="post">
				<table class="table table-striped" id="tb1">
					<tbody>
						<tr>
							<th><label for="title">제목</label></th>
							<td>
								<input type="hidden" name="parno" id="parno" value="${parno }" />
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
				<br>
				<div class="button">
				  <button type="submit" class="btn btn-primary" onclick="insAnswerCheck()" id="btn1">답변 등록</button>
				  <a href="${path0 }/GetQnaList.do" class="btn btn-danger">취소</a>
				</div>
			</form>
			<script>
			function insAnswerCheck() {
				alert("답변 등록이 완료되었습니다.")
			}
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