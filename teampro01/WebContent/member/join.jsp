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
<style>
    #contents { height: 1300px; }
    .wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 300px; height: 300px; 
    border: 1px solid #000; position: relative; }
    .wrap .box li:hover #cover { display: block; cursor: pointer; }

    .box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
    font-weight: bold; font-size: 17px; background-color: #eccfe9; }

    #img { width: 300px; height: 300px; position: absolute; z-index: 10; }
    #cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
</style>
<title>회원가입</title>

<style>
.contents { height: 1100px; }
#contents { height: 1100px; }
#left1 { height: 1100px; }
.wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 300px; height: 300px; 
border: 1px solid #000; position: relative; }
.wrap .box li:hover #cover { display: block; cursor: pointer; }

.box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
font-weight: bold; font-size: 17px; background-color: #eccfe9; }

#img { width: 300px; height: 300px; position: absolute; z-index: 10; }
#cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
</style>

<style>
/* 회원가입 폼 */
.register-container { background-color: #fff; padding: 20px 40px; border-radius: 10px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
max-width: 1000px; width: 100%; margin-left: 70px; margin-top: 50px; }
.register-container h2 { margin-bottom: 20px; font-size: 24px; color: #333; text-align: center; }
.register-container table { width: 100%; }
.register-container td { padding: 10px 0; }
.register-container input[type="text"],
.register-container input[type="password"],
.register-container input[type="email"],
.register-container input[type="date"],
.register-container input[type="tel"],
.register-container input[type="text"] {
    width: 80%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}
.register-container button { width: 120px; padding: 10px; border: none;
border-radius: 5px; background-color: #f3b8da; color: #000; font-size: 16px; cursor: pointer; }
.register-container button:hover { background-color: #d5a1c0; }
.register-container button[type="submit"] { margin-right: 30px; }
.register-container .btn-secondary, #post_btn { background-color: #e2acf0; }
.register-container .btn-secondary:hover, #post_btn:hover { background-color: #a77fb1; }
.register-container .btn-inline { display: inline-block; width: auto; margin-left: 10px; }
.register-container .text-center { text-align: center; }

td { font-weight: bold; }
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
                                    <li><a href="${path0 }/member/login.jsp" class="dp2" style="background-color: #f3b8da;">로그인/회원가입</a></li>
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
                            <a href="/teampro01">HOME</a><span style="color:deeppink">회원가입</span>
                        </p>
                    </div>
                   <h2 class="title">회원가입</h2>
                    <div class="register-container">
                        <form action="${path0 }/JoinPro.do" method="post" onsubmit="return joinCheck(this)">
                            <table>
                                <tr>
                                    <td><label for="id">아이디</label></td>
                                    <td>
                                        <input type="text" id="id" name="id" required>
                                        <button type="button" class="btn-secondary btn-inline" onclick="checkId()">아이디 중복검사</button>
                                        <input type="hidden" id="idCheck" name="idCheck" value="false">
                                        <div id="idMessage"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td><label for="pw">비밀번호</label></td>
                                    <td><input type="password" id="pw" name="pw" required></td>
                                </tr>
                                <tr>
                                    <td><label for="pw2">비밀번호 확인</label></td>
                                    <td><input type="password" id="pw2" name="pw2" required></td>
                                </tr>
                                <tr>
                                    <td><label for="name">이름</label></td>
                                    <td><input type="text" id="name" name="name" required></td>
                                </tr>
                                <tr>
                                    <td><label for="birth">생년월일</label></td>
                                    <td><input type="date" id="birth" name="birth" required></td>
                                </tr>
                                <tr>
                                    <td><label for="email">이메일</label></td>
                                    <td><input type="email" id="email" name="email" required></td>
                                </tr>
                                <tr>
                                    <td><label for="tel">연락처</label></td>
                                    <td><input type="tel" id="tel" name="tel" required></td>
                                </tr>
                                <tr>
                                    <td><label for="addr">주소</label></td>
                                    <td>
                                        <p>주소 입력은 우편번호를 검색하여 입력합니다.</p>
                                        <br>
                                        <div style="display: flex; align-items: center;">
                                            <input type="text" name="postcode" id="postcode" placeholder="우편번호 입력" class="form-control" onclick="findAddr()" style="width:160px" required>
                                            &nbsp;&nbsp;&nbsp;<button type="button" id="post_btn" class="btn-info" onclick="findAddr()">우편번호 검색</button>
                                        </div>
                                        <br>
                                        <input type="text" name="address1" id="address1" placeholder="기본 주소 입력" class="form-control" onclick="findAddr()" required>
                                        <br><br>
                                        <input type="text" name="address2" id="address2" placeholder="상세 주소 입력" class="form-control" required>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="text-center">
                                        <button type="submit">회원가입</button>
                                        <button type="reset" onclick="location.href='/teampro01'">취소</button>
                                    </td>
                                </tr>
                            </table>
                        </form>
                       </div>
                        <script>
			function joinCheck(f) {
				if(f.pw.value!=f.pw2.value) {
					alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
					f.pw.focus();
					return false;
				}
				if(f.idCheck.value!="true") {
					alert("아이디 중복 확인을 하지 않으셨습니다.");
					return false;
				}
				if(f.pw.value==f.pw2.value && f.idCheck.value!="false") {
					alert("환영합니다! 회원가입이 완료되었습니다!");
				}
			}
			function checkId() {
				if($("#id").val()=="") {
					alert("아이디를 입력하지 않으셨습니다.");
					$("#id").focus();
					return false;
				}
				
				var params = { id:$("#id").val() };
				
				$.ajax({
					url:"${path0 }/IdCheck.do",
					type:"post",
					dataType:"json",
					data:params,
					success:function(data) {
						var checkId = data.result;
						if(checkId==false) {
							$("#idCheck").val("true");
							$("#idMessage").html("<strong style='color:blue'> 사용 가능한 아이디입니다.</strong>");
						}
						else {
							$("#idCheck").val("false");
							$("#idMessage").html("<strong style='color:red'> 중복된 아이디입니다!</strong>");
						}
					}
				});
			}
			</script>
			<script>
            function findAddr(){
                new daum.Postcode({
                    oncomplete:function(data){
                        console.log(data);
                        var roadAddr = data.roadAddress;
                        var jibunAddr = data.jibunAddress;
                        document.getElementById("postcode").value = data.zonecode;
                        if(roadAddr !== ''){
                            document.getElementById("address1").value = roadAddr;
                        } else if(jibunAddr !== ''){
                            document.getElementById("address1").value = jibunAddr;
                        }
                        document.getElementById("address2").focus();
                    }
                }).open();
            }
			</script>
			<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                    </div>
                </div>
            </div>
    </main>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
<script src="http://code.jquery.com/jquery-latest.js"></script> 
</body>
</html>