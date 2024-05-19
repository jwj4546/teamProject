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
h3 { margin-left: 70px; margin-top: 30px; }
.form-check { margin-left: 70px; margin-top: 20px; }
.btn { margin-left: 70px; }
.btn .btn1 { width: 150px; height: 40px; line-height: 20px; border-radius: 20px; background-color: #cdcdcd; font-weight: bold; 
margin-right: 30px; cursor: pointer; }
.btn .btn1:hover { background-color: #a5a4a4; }
.btn .btn2 { width: 150px; height: 40px; line-height: 20px; border-radius: 20px; background-color: #f3b8da; font-weight: bold; 
cursor: pointer; }
.btn .btn2:hover { background-color: #f890cc; }


</style>

<style>
/* 회원약관 */
.terms-container {
width: 87%; /* 원하는 너비 */
height: 300px; /* 원하는 높이 */
overflow-y: scroll; /* 수직 스크롤바 추가 */
overflow-x: hidden; /* 수평 스크롤바 숨기기 */
resize: none; /* 크기 조절 막기 */
border: 1px solid #ccc; /* 테두리 추가 */
padding: 10px; /* 패딩 추가 */
box-sizing: border-box; /* 패딩과 테두리를 포함한 너비와 높이 계산 */
margin-left: 70px; margin-top: 30px;
}
</style>

<style>
/* 개인정보처리방침 */
.terms-container {
width: 87%; /* 원하는 너비 */
height: 300px; /* 원하는 높이 */
overflow-y: scroll; /* 수직 스크롤바 추가 */
overflow-x: hidden; /* 수평 스크롤바 숨기기 */
resize: none; /* 크기 조절 막기 */
border: 1px solid #ccc; /* 테두리 추가 */
padding: 10px; /* 패딩 추가 */
box-sizing: border-box; /* 패딩과 테두리를 포함한 너비와 높이 계산 */
margin-left: 70px; margin-top: 30px;
}
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
                    <div class="wrap">
                        <h3>회원약관</h3>
                        <textarea class="terms-container" rows="20" disabled>
제 1 장 총칙

제 1 조 (목적) 이 이용약관은 “강화소개 (이하 "당 사이트")”에서 제공하는 인터넷 서비스(이하 '서비스')의 가입조건, 당 사이트와 이용자의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 (용어의 정의)
1. "이용자"라 함은 당 사이트에 접속하여 이 약관에 따라 당 사이트가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
2. “강화소개”에서 제공하는 단체표준, 단체인증, 예고현황 정보를 말합니다.
3. "회원"이라 함은 서비스를 이용하기 위하여 당 사이트에 개인정보를 제공하여 아이디(ID)와 비밀번호를 부여 받은 자를 말합니다.
4. “비회원”이하 함은 회원으로 가입하지 않고 " 강화소개"에서 제공하는 서비스를 이용하는 자를 말합니다.
5. "회원 아이디(ID)"라 함은 회원의 식별 및 서비스 이용을 위하여 자신이 선정한 문자 및 숫자의 조합을 말합니다.
6. "비밀번호"라 함은 회원이 자신의 개인정보 및 직접 작성한 비공개 콘텐츠의 보호를 위하여 선정한 문자, 숫자 및 특수문자의 조합을 말합니다.

제 3 조 (이용약관의 효력 및 변경)
1. 당 사이트는 이 약관의 내용을 회원이 알 수 있도록 당 사이트의 초기 서비스화면에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
2. 당 사이트는 이 약관을 개정할 경우에 적용일자 및 개정사유를 명시하여 현행 약관과 함께 당 사이트의 초기화면 또는 초기화면과의 연결화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 회원에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 당 사이트는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.
3. 당 사이트가 전항에 따라 개정약관을 공지하면서 “개정일자 적용 이전까지 회원이 명시적으로 거부의 의사표시를 하지 않는 경우 회원이 개정약관에 동의한 것으로 봅니다.”라는 취지를 명확하게 공지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 않은 경우에는 개정약관에 동의한 것으로 봅니다. 회원이 개정약관에 동의하지 않는 경우 당 사이트 이용계약을 해지할 수 있습니다.

제 4 조(약관 외 준칙)
1. 이 약관은 당 사이트가 제공하는 서비스에 관한 이용안내와 함께 적용됩니다.
2. 이 약관에 명시되지 아니한 사항은 관계법령의 규정이 적용됩니다.

제 2 장 이용계약의 체결

제 5 조 (이용계약의 성립 등)
이용계약은 이용고객이 당 사이트가 정한 약관에 「동의합니다」를 선택하고, 당 사이트가 정한 회원가입양식을 작성하여 서비스 이용을 신청한 후, 당 사이트가 이를 승낙함으로써 성립합니다.

제 6 조 (회원가입)
서비스를 이용하고자 하는 고객은 당 사이트에서 정한 회원가입양식에 개인정보를 기재하여 가입을 하여야 합니다.

제 7 조 (개인정보의 보호 및 사용)
당 사이트는 관계법령이 정하는 바에 따라 회원 등록정보를 포함한 회원의 개인정보를 보호하기 위해 노력합니다. 회원 개인정보의 보호 및 사용에 대해서는 관련법령 및 당 사이트의 개인정보 보호정책이 적용됩니다. 다만, 당 사이트 이외에 링크된 사이트에서는 당 사이트의 개인정보 보호정책이 적용되지 않습니다.

제 8 조 (이용 신청의 승낙과 제한)
1. 당 사이트는 제6조의 규정에 의한 이용신청고객에 대하여 약관에 정하는 바에 따라 서비스 이용을 승낙합니다.
2. 당 사이트는 아래사항에 해당하는 경우에 대해서 회원가입을 승낙하지 아니하거나 이후 사전 통보 없이 취소할 수 있습니다.
- 회원가입 신청 시 내용을 허위로 기재한 경우
- 기타 규정한 제반사항을 위반하며 신청하는 경우
- 다른 사람의 당 사이트 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 경우
- 당 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우

제 9 조 (회원 아이디 부여 및 변경 등)
1. 당 사이트는 이용고객에 대하여 약관에 정하는 바에 따라 자신이 선정한 회원 아이디를 부여합니다.
2. 회원 아이디는 원칙적으로 변경이 불가하며 부득이한 사유로 인하여 변경 하고자 하는 경우에는 해당 아이디를 해지하고 재가입해야 합니다.
3. 회원은 회원가입 시 기재한 개인정보가 변경되었을 경우 온라인으로 직접 수정할 수 있습니다. 이때 변경하지 않은 정보로 인해 발생되는 문제에 대한 책임은 회원에게 있습니다.

제 3 장 계약 당사자의 의무

제 10 조 ("강화소개"의 의무)
1. 당 사이트는 이용고객이 희망한 서비스 제공 개시일에 특별한 사정이 없는 한 서비스를 이용할 수 있도록 하여야 합니다.
2. 당 사이트는 개인정보 보호를 위해 보안시스템을 구축하며 개인정보 보호정책을 공시하고 준수합니다.
3. 당 사이트는 회원으로부터 제기되는 의견이 합당하다고 판단될 경우에는, 적절한 조치를 취하여야 합니다.
4. 당 사이트는 전시, 사변, 천재지변, 비상사태, 현재의 기술로는 해결이 불가능한 기술적 결함 기타 불가항력적 사유 및 이용자의 귀책사유로 인하여 발생한 이용자의 손해, 손실, 기타 모든 불이익에 대하여 어떠한 책임도 지지 않습니다.

제 11 조 (회원의 의무)
1. 이용자는 회원가입 신청 또는 회원정보 변경 시 실명으로 모든 사항을 사실에 근거하여 작성하여야 하며, 허위 또는 타인의 정보를 등록할 경우 일체의 권리를 주장할 수 없습니다.
2. 당 사이트가 관계법령 및 개인정보 보호정책에 의거하여 그 책임을 지는 경우를 제외하고, 회원에게 부여된 아이디의 비밀번호 관리소홀, 부정사용 등에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.
3. 회원은 당 사이트 및 제 3자의 지식재산권을 침해해서는 안 됩니다.
4. 이용자는 당 사이트의 운영자, 직원, 기타 관계자를 사칭하는 행위를 하여서는 안 됩니다.
5. 이용자는 바이러스, 악성코드 등을 제작, 배포, 이용하여서는 아니 되고, 당 사이트의 승인 없이 광고하는 행위를 하여서는 안 됩니다.
6. 이용자는 당 사이트 및 제 3자의 명예를 훼손하거나 업무를 방해하거나, 외설적이거나, 폭력적이거나 기타 공서양속에 반하는 게시물, 쪽지, 메일 등을 게시, 전송, 배포하여서는 안 됩니다.

제 4 장 서비스의 이용

제 12 조 (서비스 이용 시간)
1. 회원의 이용신청을 승낙한 때부터 서비스를 개시합니다. 단, 일부 서비스의 경우에는 지정된 일자부터 서비스를 개시합니다.
2. 업무상 또는 기술상의 장애로 인하여 서비스를 개시하지 못하는 경우에는 사이트에 공시하거나 회원에게 이를 통지합니다.
3. 서비스의 이용은 연중무휴, 1일 24시간을 원칙으로 하며, 서비스 응대 및 처리 시간은 법정 근무일 근무시간(09:00~18:00, 법정공휴일 및 주말 제외)으로 합니다. 다만, 당 사이트의 업무상 또는 기술상의 이유로 서비스가 일시 중지 될 수 있습니다. 이러한 경우 당 사이트는 사전 또는 사후에 이를 공지합니다.
4. 회원으로 가입한 이후라도 일부 서비스 이용 시 서비스 제공자의 요구에 따라 특정회원에게만 서비스를 제공할 수 있습니다.
5. 서비스를 일정범위로 분할하여 각 범위별로 이용가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 사전에 공개합니다.

제 13 조 (홈페이지 저작권)
1. 당 사이트가 게시한 본 홈페이지의 모든 콘텐트에 대한 저작권은 당 사이트에 있습니다. 다만, 게시물의 원저작자가 별도로 있는 경우 그 출처를 명시하며 해당 게시물의 저작권은 원저작자에게 있습니다.
2. 회원이 직접 게시한 저작물의 저작권은 회원에게 있습니다. 다만, 회원은 당 사이트에 무료로 이용할 수 있는 권리를 허락한 것으로 봅니다.
3. 당 사이트 소유의 콘텐트에 대하여 제3자가 허락 없이 다른 홈페이지에 사용 또는 인용하는 것을 금지합니다.

제 14 조 (서비스의 변경, 중단)
1. 당 사이트는 기술상?운영상의 필요에 의해 제공하는 서비스의 일부 또는 전부를 변경하거나 중단할 수 있습니다. 당 사이트의 서비스를 중단하는 경우에는 30일 전에 홈페이지에 이를 공지하되, 다만 사전에 통지할 수 없는 부득이한 사정이 있는 경우는 사후에 통지를 할 수 있습니다.
2. 제1항의 경우에 당 사이트가 제공하는 서비스의 이용과 관련하여, 당 사이트는 이용자에게 발생한 어떠한 손해에 대해서도 책임을 지지 않습니다. 다만 당 사이트의 고의 또는 중대한 과실로 인하여 발생한 손해의 경우는 제외합니다.

제 5 장 계약 해지 및 이용 제한

제 15 조 (계약 해지)
1. 회원은 언제든지 마이페이지 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, 당 사이트는 관련법 등이 정하는 바에 따라 이를 즉시 처리하여야 합니다.
2. 회원이 계약을 해지할 경우, 관련법령 및 개인정보처리방침에 따라 당 사이트가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 회원의 모든 데이터는 소멸됩니다.
3. 회원이 계약을 해지하는 경우, 회원이 작성한 게시물(공용게시판에 등록된 게시물 등)은 삭제되지 아니합니다.

제 16 조 (서비스 이용제한)
1. 당 사이트는 회원이 서비스 이용에 있어서 본 약관 및 관련 법령을 위반하거나, 다음 각 호에 해당하는 경우 서비스 이용을 제한할 수 있습니다.
- 2년 이상 서비스를 이용한 적이 없는 경우
- 기타 정상적인 서비스 운영에 방해가 될 경우
2. 상기 이용제한 규정에 따라 서비스를 이용하는 회원에게 사전 통지 후 서비스 이용을 일시정지 등 제한하거나 이용계약을 해지 할 수 있습니다. 단, 불가피한 사유로 사전 통지가 불가능한 경우에는 그러하지 아니합니다.

제 6 장 손해배상 및 기타사항

제 17 조 (손해배상)
당 사이트는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 당 사이트가 고의 또는 과실로 인한 손해발생을 제외하고는 이에 대하여 책임을 부담하지 아니합니다.

제 18 조 (관할 법원)
서비스 이용으로 발생한 분쟁에 대해 소송이 제기되는 경우 민사 소송법상의 관할 법원에 제기합니다.

제 19 조 (서비스별 이용자 사전 동의 사항과 의무) 당 사이트에 ‘기술정보를 제공하는 이용자는 자신의 기술정보에 대한 권리(특허권, 실용신안권, 디자인권, 상표권 등)를 법적으로 보호받기 위해서 필요한 조치를 스스로 취하여야 합니다. 당 사이트는 이용자의 권리 보장이나 취득 등을 위한 어떠한 명목의 의무나 책임도 부담하지 않고, 이를 보장하지 않으며, 이용자 개인의 행위(당 사이트의 서비스 이용 행위 일체를 포함)로 인한 어떠한 분쟁이나 어떠한 명목의 손실, 손해에 대해서도 법적 책임을 지지 아니합니다.

제 7 장 " 강화소개" 게시물 운영정책

제 20 조 (운영정책)
"강화소개" 각종 게시물에 대한 운영정책은 방송통신심의위원회의 정보통신에 관한 심의규정에 기반하며 이를 위반할 경우, "강화소개" 운영정책에 의해 관련 게시물은 예고 없이 삭제, 이동될 수 있으며, 게시자(회원)는 아이디 이용제한 등 "강화소개" 이용에 제한을 받을 수 있습니다.

제 21 조 (게시물 등록)
게시물은 실명을 통해 등록합니다. 악성 글 등을 업로드 하실 경우 게시물 삭제 또는 게시자(회원)의 이용제한 등의 경고 조치가 가능합니다.
1. 주민등록번호 도용 타인의 개인정보를 이용한 활동이 발견될 경우, 해당 회원은 이용에 제한을 받을 수 있으며, 해당 계정은 본인인증 후에 정상적인 이용이 가능합니다. 또한 여러 개의 아이디를 생성하여 허위신고를 하거나, 타인 사칭을 통한 문제 발생 시, 그에 따른 이용 제한을 받을 수 있습니다.

제 22 조 (게시물의 저작권)
1. 게시물은 회원이 서비스를 이용하면서 게재한 글, 사진, 파일, 관련 링크 및 댓글 등을 말합니다.
2. 회원이 서비스에 등록하는 게시물로 인하여 본인 또는 타인에게 손해 및 기타 문제가 발생하는 경우, 회원은 이에 대한 책임을 질수 있으며 또한 명예훼손이나 개인정보 유출, 저작권과 같은 법률에 위배되는 게시물 및 댓글은 관련 법안에 따라 민형사상 처벌을 받을 수 있으니 이 점 유의하여 주시기 바랍니다.

제 23 조 (게시물 제한규정(삭제 및 이동))
1. 욕설/비속어 및 분란을 조장하는 게시물- 욕설 및 비속어가 담겨있거나, 연상시키는 내용- 이유 없이 회원 간의 분란을 발생시킬 여지가 있는 내용의 게시물 또는 댓글
2. 게시판 및 자료실과 관련 없는 게시물- 각 주제 분야별로 나뉘어 있는 게시판 및 자료실의 주제와 관련 없는 내용
3. 상업성 광고 및 홍보 글에 관한 게시물
4. 개인정보의 유포에 관한 게시물- 타인, 혹은 본인의 메일주소/실명/사진/전화번호/주민등록번호 등의 개인정보 또는 해당 정보가 담겨 있는 내용
5. 확인되지 않은 소문의 유포에 관한 게시물- 공개되었을 경우, 당사자의 권리침해가 우려되는 내용
6. 정치적 견해 차이 및 인종/성별/지역/종교에 대한 차별, 비하하는 게시물
- 인종/성별/지역/종교에 대한 차별적 발언 또는 비하하는 내용
- 상이한 정치적 견해를 비하하거나 폄하하는 내용
7. 타인을 사칭하거나 범죄행위에 관한 게시물
- 공인이나 특정이슈와 관련한 당사자 또는 지인, 주변인 등을 사칭하여 게시물을 작성하거나, "강화소개" 운영자를 사칭하여 작성된 내용
- 범죄와 관련 있거나 범죄를 유도하는 행위를 포함하는 내용
8. 저작권 위반에 관한 게시물
- 기사, 사진, 동영상, 음원, 영상물 등 저작권에 의해 보호받는 콘텐츠와 관련된 내용 뉴스의 경우, 기사 내용의 전부 혹은 일부를 게시하는 경우에는 저작권에 저촉될 수 있기 때문에 링크(URL)만을 허용합니다.
- 음원, 사진, 동영상 등 해당 자료에 대한 불법공유를 목적으로 작성한 내용 공유를 목적으로 이메일을 수집하는 행위도 동일하게 처리됩니다.
9. 악성코드/스파이웨어/혐오감 조성에 관한 게시물
- 악성코드 및 스파이웨어의 유포 및 유도 관련 게시물은 사전경고 없이 제재를 받을 수 있습니다.
- 시각 및 청각적으로 타인에게 혐오감을 줄 수 있는 게시물은 사전경고 없이 제재를 받을 수 있습니다.
10. 기타 서비스 운영에 지장을 초래할 수 있는 게시물

제 24 조 (이용제한)
1. 게시물 제한규정(3조)에 해당하는 내용을 게재하는 경우
2. 다량의 게시물 등록을 목적으로 의미 없는 제목을 사용하거나, 반복되는 제목을 사용하여 게재하는 경우
3. 비정상적인 방법으로 게시물을 등록, 조회 및 추천하는 경우 등

제 25 조 (게시중단 요청 서비스)
다른 회원의 게시물로 인하여 명예훼손, 저작권 침해 등의 피해를 입었을 경우, 운영담당자를 통해 해당 게시물에 대한 게시중단을 요청하실 수 있습니다.

[부 칙]
(시행일) 이 약관은 2024년 04월 11일부터 적용되며, 종전 약관은 본 약관으로 대체되며, 개정된 약관의 적용일 이전 가입자도 개정된 약관의 적용을 받습니다.
                        </textarea>
                        <br>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="check_item1" name="check_item1">
                            <label for="check_item1" class="form-check-label"> 위 이용약관에 동의합니다.</label>
                        </div>
                        <br><br>
                        <h3>개인정보처리방침</h3>
                        <textarea class="terms-container" rows="20" disabled>
강화소개에서 운영하는 강화소개홈페이지는 개인정보 보호법 제30조에 따라 정보주체의 개인정보를 보호 및 권익을 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 다음과 같이 개인정보 처리지침을 수립하여 공개합니다.

제1조(개인정보의 처리목적)
강화소개홈페이지는 개인정보를 다음 목적 이외의 용도로는 이용하지 않으며 이용 목적 등이 변경될 경우에는 동의를 받아 처리하겠습니다.
비회원 민원신청 및 Q&A : 민원처리, 고객응대

제2조(처리하는 개인정보 항목)
강화소개홈페이지는 다음의 개인정보 항목을 처리하고 있습니다.
비회원 민원신청 및 Q&A 관리 - 필수항목 : 성명, 생년월일, 이메일, 연락처

제3조(개인정보의 처리 및 보유기간)
강화소개홈페이지는 법령에 따른 개인정보 보유 이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유 이용기간 내에서 개인정보를 처리보유합니다.
민원신청 및 Q&A 신청 비회원 정보 : 3년 (전자상거래 등에서의 소비자보호에 관한 법률 및 시행령)

제4조(개인정보의 제3자 제공)
강화소개홈페이지는 개인정보 처리와 관련한 별도의 제3자 제공이 없음을 알려드립니다.

제5조(개인정보처리의 위탁)
강화소개홈페이지는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
제공받는 자	제공항목	이용목적	보유 및 이용기간
(주)월드리서치	성명,이메일,휴대폰번호	고객만족도 조사	위탁계약 종료시까지

제6조(정보주체의 권리의무 및 행사방법)
정보주체는 강화소개홈페이지에 대해 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.
강화소개홈페이지에 대해 개인정보보호법 시행령 제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며, 강화소개홈페이지는 이에 대해 지체없이 조치하겠습니다.
정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
개인정보 열람 및 처리정지 요구는 개인정보보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
한국표준정보망은 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.

제7조(개인정보의 파기)
강화소개대표홈페이지는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 다음과 같이 지체없이 해당 개인정보를 파기합니다.
파기절차 : 불필요한 개인정보 및 개인정보파일은 내부방침 절차에 따라 지체 없이 파기합니다.
파기방법 : 전자적 형태의 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하며, 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.

제8조(개인정보의 안전성 확보조치)
강화소개대표홈페이지는 「개인정보보호법」제29조에 따라 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.
관리적 조치 : 내부관리계획 수립ㆍ시행, 개인정보 담당자 대상 정기적 직원 교육 등
기술적 조치 : 개인정보처리시스템 등의 접근권한 관리, 접근통제시스템 설치, 비밀번호 등의 암호화, 보안프로그램 설치
물리적 조치 : 전산실, 자료보관실 등의 접근통제

제9조(개인정보 보호책임자)
강화소개대표홈페이지는 개인정보를 보호하고 개인정보와 관련된 사항을 처리하기 위하여 아래와 같이 개인정보보호책임자, 개인정보보호담당자 및 개인정보 열람청구를 접수ㆍ처리하는 부서 및 담당자를 지정하고 있습니다.
관리적 조치 : 내부관리계획 수립ㆍ시행, 개인정보 담당자 대상 정기적 직원 교육 등
기술적 조치 : 개인정보처리시스템 등의 접근권한 관리, 접근통제시스템 설치, 비밀번호 등의 암호화, 보안프로그램 설치
물리적 조치 : 전산실, 자료보관실 등의 접근통제

구분		개인정보보호 책임자	개인정보보호 담당자	개인정보 열람청구 접수ㆍ처리부서
부서명	경영지원본부		지식정보실			각 부서
성명		KH 팀프로젝트 본부장		KH 위원			각 부서담당자
전화번호	02-6240-4510	02-6240-4544	-

제10조(권익침해 구제방법)
정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.
개인정보 침해신고센터 (한국인터넷진흥원 운영) : (국번없이) 118 (privacy.kisa.or.kr) - 소관업무 : 개인정보 침해사실 신고, 상담 신청
개인정보 분쟁조정위원회 :(국번없이) 118 (www.kopico.go.kr)- 소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)
대검찰청 사이버범죄수사단 : (국번없이) 1301 (www.spo.go.kr)
경찰청 사이버안전국 : (국번없이) 182 (cyberbureau.police.go.kr)

제11조(개인정보 자동 수집 장치의 설치ㆍ운영 및 거부에 관한 사항)
강화소개홈페이지는 정보주체의 이용정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용하지 않습니다.

제12조(개인정보 처리방침 변경)
강화소개홈페이지의 개인정보처리방침은 시행일로부터 적용되며, 변경이력 및 내용은 아래에서 확인하실 수 있습니다.

시행일자 : 2021년 07월 16일 (제9조 변경)
                        </textarea>
                        <br>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="check_item2" name="check_item2">
                            <label for="check_item2" class="form-check-label"> 위 개인정보처리 방침에 동의합니다.</label>
                        </div>
                        <br><br>
                        <div class="btn">
                            <button type="button" onclick="all_check()" class="btn1">전체 약관에 동의</button>
                            <button type="button" onclick="term_check()" class="btn2">다음 단계</button>
                        </div>
                    </div>
                </div>
            </div>
           </div>
            <script>
			var ck_item1 = document.getElementById("check_item1");
			var ck_item2 = document.getElementById("check_item2");
			var sw = 1;
			function all_check(){
				if(sw==1){
					check_item1.checked = true;
					check_item2.checked = true;
					sw = 0;
				} else {
					check_item1.checked = false;
					check_item2.checked = false;
					sw = 1;
				}
			}
			function term_check(){
				if(check_item1.checked && check_item2.checked){
					location.href = "${path0 }/Join.do";
				} else {
					alert("회원 약관 및 개인정보처리 방침에 동의하지 않으셨습니다.");
					return;
				}
			}
			</script>
    </main>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>