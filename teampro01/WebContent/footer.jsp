<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer>
	<div class="ft_wrap">
		<nav id="fnb">
			<ul>
				<li><a href="${hpath }.jsp">회원약관</a></li>
				<li><a href="${hpath }.jsp">개인정보처리방침</a></li>
				<li><a href="${hpath }/traffic/come.jsp">찾아오시는 길</a></li>
			</ul>
		</nav>
		<div id="loc">
			<select name="sel" id="sel" onchange="locate()">
				<option value="">유관기관</option>
				<option value="https://www.ganghwa.go.kr/open_content/tour/">강화군 문화관광</option>
				<option value="https://hwagaejungwon.ganghwa.go.kr/">화개정원</option>
				<option value="https://www.ganghwa.go.kr/open_content/museum/">강화 박물관</option>
				<option value="http://www.ganghwapension.kr/">강화 민박</option>
				<option value="https://blog.naver.com/ktourtop10">대한민국 테마여행 10선</option>
				<option value="https://www.ghss.or.kr/">강화군시설관리공단</option>
				<option value="https://korean.visitkorea.or.kr/main/main.do">대한민국구석구석</option>
			</select>
		</div>
		<div id="copyright">
			<p class="addr">
				[23037] 인천광역시 강화군 강화읍 강화대로 394 TEL. 032-930-3114 FAX. 032-930-3660
			</p>
			<p class="copy">COPYRIGHT(C) 2015 GANGHWA. ALL RIGHTS RESERVED.</p>
		</div>
	</div> 
	<script>
		function locate(){
			var sel = document.getElementById("sel");
			if(sel.value!=""){
				window.open(sel.value);
			}
		}
	</script>
</footer>