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
    #contents { height: 1300px;}
    .wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 302px; height: 302px; 
    border: 1px solid #000; position: relative; }
    .wrap .box li:hover #cover { display: block; cursor: pointer; }

    .box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
    font-weight: bold; font-size: 17px; background-color: #eccfe9; }

    #img { width: 300px; height: 300px; position: absolute; z-index: 10; }
    #cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
    
    .title2 { display: flex; margin-left: 70px; margin-top: 40px; }
    #title_img { width: 30px; height: 30px; }
    .sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }
    .box_img { display: flex; }
    #intro_img1 { display: flex; width: 500px; height: auto; margin-left: 70px; margin-top: 40px; border:2px solid #000; }
    #intro_img2 { display: flex; width: 500px; height: auto; margin-left: 60px; margin-right: 70px; margin-top: 40px; 
    border:2px solid #000; }
    .intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 400px; }
    .btn1 { width: 900px; margin: 0 auto; }
    .btn1 button { margin-left: 70px; margin-top: 40px; width: 200px; height: 70px; cursor: pointer; background-color: #F3B8DA; 
    border: 2px dotted #FF9898; }
    .btn1 button:hover { background-color: #FF9898; border: 2px solid deeppink; }
    .btn1 #map_img { width: 50px; height: 50px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 #btn_img { width: 30px; height: 30px; line-height: 50px; vertical-align: middle; margin-right: 10px; }
    .btn1 span { width: 20px; height: 20px; vertical-align: middle; font-weight: bold; font-size: 20px; }

    #left1 { float:left; width: 200px; min-height:100vh; height: 2500px; border-left:2px solid #000; box-sizing: border-box; }     
    .contents { float:right; width: 1204px; box-sizing: border-box; height: 2500px; 
    border-left:2px solid #000; border-right: 2px solid #000; }  
    /* 부모 요소를 가운데 정렬 */
    #detail_con {
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 20px 0;
    }

    table.data {
        border-collapse: collapse;
        width: 80%;
        max-width: 1400px; /* 최대 너비를 설정하여 큰 화면에서 표가 너무 커지지 않도록 합니다. */
        text-align: center;
    }

    table.data th, table.data td {
        border: 1px solid #ddd; /* 표 셀에 테두리를 추가 */
        padding: 4px; /* 셀 안의 패딩을 설정 */
    }

    table.data th {
        background-color: #f2f2f2; /* 헤더 셀 배경색 */
        font-weight: bold; /* 헤더 텍스트를 굵게 */
    }

    table.data tfoot td {
        font-weight: bold; /* 푸터 텍스트를 굵게 */
        background-color: #f9f9f9; /* 푸터 셀 배경색 */
    }

    .left {
        text-align: left; /* 좌측 정렬이 필요한 셀에 적용 */
    }

    p {
        margin: 0; /* <p> 태그의 기본 마진을 제거 */
    }
</style>
<title>교통정보</title>
</head>
<body>
	<%@ include file="/header.jsp" %>
	<main id="contents" class="clr-fix">
        <div class="wrap clr-fix">
            <div class="contents_wrap">
                <aside id="left1">
                    <nav id="lnb">
                        <ul class="menu">
                            <li>
                                <a class="dp1">강화정보</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/traffic/traffic.jsp" class="dp2" style="background-color: #f3b8da;">교통정보</a></li>
                                    <li><a href="${path0 }/traffic/parking.jsp" class="dp2">공영주차장</a></li>
                                    <li><a href="${path0 }/traffic/come.jsp" class="dp2">오시는 길</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="teampro01">HOME</a><a href="${path0 }/traffic/traffic.jsp">강화정보</a><span style="color:deeppink">교통정보</span>
                        </p>
                    </div>
                    <h2 class="title" style="margin-left:70px;">교통정보 안내</h2>
                
                <div id="detail_con">
                    <table class="data">
                        <thead>
                            <tr>
                                <th scope="col">노선번호</th>
                                <th scope="col">방면(종점)</th>
                                <th scope="col">운송</th>
                                <th scope="col">노선현황</th>
                                <th scope="col">운행횟수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>03(순환)</td>
                                <td>순환노선</td>
                                <td>군내버스</td>
                                <td class="left">○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 주요경유지 : (순환)강화터미널~세광아파트~선원초등학교~불은면사무소~온수리~전등사~장흥리입구~함허동천~정수사입구~흥왕리~화도터미널~건평항~외포항~인산저수지~농업기술센터~세광아파트~강화터미널</td>
                                <td>9회</td>
                            </tr>
                            <tr>
                                <td>04(순환)</td>
                                <td>순환노선</td>
                                <td>군내버스</td>
                                <td class="left">	○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 주요경유지 : (순환) 강화터미널~세광아파트~농업기술센터~인산저수지~외포터미널~건평항~화도터미널~흥왕리~동막해변~정수사입구~함허동천~장흥리입구~전등사~온수리~불은면~선원초등학교~세광아파트~강화터미널</td>
                                <td>8회</td>
                            </tr>
                            <tr>
                                <td>09(강화)</td>
                                <td>강화산업단지</td>
                                <td>군내버스</td>
                                <td class="left">○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 9번 버스 : 개편 전 4회 → 개편 후 4회 (변동없음) ○ 주요경유지 : 강화터미널~강화중학교~옥림슈퍼~강화산단입구~풍산특수금속~옥림슈퍼~강화중학교~강화터미널</td>
                                <td>4회</td>
                            </tr>
                            <tr>
                                <td>10(강화)</td>
                                <td>대산리</td>
                                <td>군내버스</td>
                                <td class="left">○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 10번 버스 : 개편 전 11회 → 개편 후 11회 (변동없음) ○ 주요경유지 : 강화터미널~축협~강화경찰서~강화중학교~장승마을~강화산단~월곳리~대산리(회차)~월곳리~강화산단~장승마을~강화중학교~강화군청~수협~강화터미널	</td>
                                <td>11회</td>
                            </tr>
                            <tr>
                                <td>10A(강화)	</td>
                                <td>대산리</td>
                                <td>군내버스</td>
                                <td class="left">	○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 10A번 버스 : 개편 전 2회 → 개편 후 2회 (변동없음) ○ 주요경유지 : 강화터미널~강화경찰서~강화중학교~장승마을~강화산단~월곳삼거리~돌머루~월곳삼거리~강화경찰서~중앙시장~여고입구~강화서문(회차)~강화군청~수협~강화터미널</td>
                                <td>2회</td>
                            </tr>
                            <tr>
                                <td>11(강화)</td>
                                <td>용정리</td>
                                <td>군내버스</td>
                                <td class="left">○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 11번 버스 : 개편 전 10회 → 개편 후 9회 (총1회 감회) ○ 주요경유지 : 강화터미널~강화문화원~수협~설호아파트~용정리마을회관~용구물입구~용정리마을회관~설호아파트~강화병원~축협~강화문화원~강화터미널</td>
                                <td>9회</td>
                            </tr>
                            <tr>
                                <td>11A(강화)</td>
                                <td>용정리</td>
                                <td>군내버스</td>
                                <td class="left">	○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 11A번 버스 : 개편 전 3회 → 개편 후 3회 (총1회 증회) ○ 주요경유지 : 강화터미널~강화문화원~수협~설호아파트~용정리마을회관~용구물입구~용정리마을회관~설호아파트~중앙시장~여고입구~강화서문(회차)~수협~강화터미널	</td>
                                <td>3회</td>
                            </tr>
                            <tr>
                                <td>12(선원)</td>
                                <td>더리미</td>
                                <td>군내버스</td>
                                <td class="left">	○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 12번 버스 : 개편 전 6회 → 개편 후 5회 (총1회 감회) ○ 주요경유지 : 강화터미널~세광아파트~선원초등학교~선원면사무소~선우너사~더리미미술관~더리미경로당~더리미장어마을~갑곶돈대~청소년수련관~강화병원~강화터미널</td>
                                <td>5회</td>
                            </tr>
                            <tr>
                                <td>12A(선원)</td>
                                <td>더리미</td>
                                <td>군내버스</td>
                                <td class="left">	○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 12A번 버스 : 개편 전 1회 → 개편 후 1회 (변동없음) ○ 주요경유지 : 강화터미널~세광아파트~선원면사무소~더리미경로당~청소년수련관~강화병원~강화군청~여고입구~강화서문(회차)~여고입구~수협~강화터미널</td>
                                <td>1회</td>
                            </tr>
                            <tr>
                                <td>13(선원)</td>
                                <td>더리미</td>
                                <td>군내버스</td>
                                <td class="left">○ 2020년 3월 9일부터 군내버스 노선 개편 ○ 13번 버스 : 개편 전 4회 → 개편 후 5회 (총1회 증회) ○ 주요경유지 : 강화터미널~강화병원~현대아파트~갑곳돈대입구~더리미경로당~선원사~선원면사무소~선원초교~세광아파트~강화문화원~수협~강화터미널</td>
                                <td>5회</td>
                            </tr>
                        </tbody>
                    </table>
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