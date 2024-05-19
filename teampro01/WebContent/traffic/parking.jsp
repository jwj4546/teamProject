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
    #contents { height: 2500px;}
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
<title>공영주차장</title>
</head>
<body>
	<%@ include file="/header.jsp" %>
	<main id="contents" class="clr-fix">
        <div class="wrap clr-fix">
            <div class="contents_wrap">
                <aside id="left1" style="height: 2500px;">
                    <nav id="lnb">
                        <ul class="menu">
                            <li>
                                <a class="dp1">강화정보</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/traffic/traffic.jsp" class="dp2">교통정보</a></li>
                                    <li><a href="${path0 }/traffic/parking.jsp" class="dp2" style="background-color: #f3b8da;">공영주차장</a></li>
                                    <li><a href="${path0 }/traffic/come.jsp" class="dp2">오시는 길</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents" style="height: 2500px;">
                    <div class="breadcrumb">
                        <p>
                            <a href="teampro01">HOME</a><a href="${path0 }/traffic/traffic.jsp">강화정보</a><span style="color:deeppink">공영주차장</span>
                        </p>
                    </div>
                    <h2 class="title">공영주차장안내</h2>
                
                <div id="detail_con">
                    <table class="data" summary="공영주차장안내를 연번, 읍·면, 주차장명, 주차장 위치, 주차면수로 나누어 작성한 표">
                        <thead>
                            <tr>
                                <th scope="col">연번</th>
                                <th scope="col">읍·면</th>
                                <th scope="col">주차장명</th>
                                <th scope="col">주차장 위치</th>
                                <th scope="col">주차면수</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <td>계</td>
                                <td>53개소</td>
                                <td></td>
                                <td></td>
                                <td>5,725</td>
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>강화읍</td>
                                <td>강화풍물시장</td>
                                <td class="left">강화읍 갑곳리 849</td>
                                <td>264</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>강화읍</td>
                                <td>강화종합전시관</td>
                                <td class="left">강화읍 남산리 14-5</td>
                                <td>87</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>강화읍</td>
                                <td>남산리(구,풍물시장)</td>
                                <td class="left">강화읍 남산리 571-2</td>
                                <td>82</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>강화읍</td>
                                <td>중앙로 노상주차장</td>
                                <td class="left">강화읍 관청리 170-3 일원</td>
                                <td>105</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>강화읍</td>
                                <td>신문리 공영주차장</td>
                                <td class="left">강화읍 신문리 596 일원</td>
                                <td>80</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>강화읍</td>
                                <td>용흥궁공원 공영주차장</td>
                                <td class="left">강화읍 관청리 405</td>
                                <td>22</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>강화읍</td>
                                <td>용흥궁공원 대체주차장</td>
                                <td class="left">강화읍 관청리 250-8 일원</td>
                                <td>70</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>강화읍</td>
                                <td>관청리(중앙시장B동)</td>
                                <td class="left">강화읍 관청리 523-5 일원</td>
                                <td>72</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>강화읍</td>
                                <td>신문리(중앙시장A동)</td>
                                <td class="left">강화읍 신문리 230 일원</td>
                                <td>38</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>강화읍</td>
                                <td>
                                <p>관청리 공영주차장</p>
                                </td>
                                <td class="left">
                                <p>강화읍 관청리 878</p>
                                </td>
                                <td>35</td>
                            </tr>
                            <tr>
                                <td>11</td>
                                <td>강화읍</td>
                                <td>관청 제1공영주차장</td>
                                <td class="left">강화읍 관청리 931</td>
                                <td>75</td>
                            </tr>
                            <tr>
                                <td>12</td>
                                <td>강화읍</td>
                                <td>관청 제2공영주차장</td>
                                <td class="left">강화읍 관청리 827-1일원</td>
                                <td>24</td>
                            </tr>
                            <tr>
                                <td>13</td>
                                <td>강화읍</td>
                                <td>관청 제3공영주차장</td>
                                <td class="left">강화읍 관청리 486-1</td>
                                <td>41</td>
                            </tr>
                            <tr>
                                <td>14</td>
                                <td>강화읍</td>
                                <td>관청근린공원주차장</td>
                                <td class="left">
                                <p>강화읍 관청리 855-2</p>
                                </td>
                                <td>54</td>
                            </tr>
                            <tr>
                                <td>15</td>
                                <td>강화읍</td>
                                <td>갑곳 공영주차장</td>
                                <td class="left">강화읍 갑곳리 441-1 일원</td>
                                <td>98</td>
                            </tr>
                            <tr>
                                <td>16</td>
                                <td>강화읍</td>
                                <td>갑곳 제1공영주차장</td>
                                <td class="left">강화읍 갑곳리 643 일원</td>
                                <td>119</td>
                            </tr>
                            <tr>
                                <td>17</td>
                                <td>강화읍</td>
                                <td>갑곳 제2공영주차장</td>
                                <td class="left">갑곳리 350-4</td>
                                <td>34</td>
                            </tr>
                            <tr>
                                <td>18</td>
                                <td>강화읍</td>
                                <td>
                                <p>갑곳돈대 주차장</p>
                                </td>
                                <td class="left">
                                <p>강화읍 갑곳리 1040</p>
                                </td>
                                <td>55</td>
                            </tr>
                            <tr>
                                <td>19</td>
                                <td>강화읍</td>
                                <td>남문 공영주차장</td>
                                <td class="left">강화읍 신문리 4-1 일원</td>
                                <td>174</td>
                            </tr>
                            <tr>
                                <td>20</td>
                                <td>강화읍</td>
                                <td>동문안 공영주차장</td>
                                <td class="left">강화읍 관청리 213-1일원</td>
                                <td>15</td>
                            </tr>
                            <tr>
                                <td>21</td>
                                <td>강화읍</td>
                                <td>신문 공영주차장</td>
                                <td class="left">강화읍 신문리 540</td>
                                <td>30</td>
                            </tr>
                            <tr>
                                <td>22</td>
                                <td>강화읍</td>
                                <td>
                                <p>신문 제1공영주차장</p>
                                </td>
                                <td class="left">
                                <p>강화읍 신문리 591</p>
                                </td>
                                <td>
                                <p>59</p>
                                </td>
                            </tr>
                            <tr>
                                <td>23</td>
                                <td>강화읍</td>
                                <td>신문 제2공영주차장</td>
                                <td class="left">
                                <p>강화읍 신문리 598-2</p>
                                </td>
                                <td>115</td>
                            </tr>
                            <tr>
                                <td>24</td>
                                <td>강화읍</td>
                                <td>
                                <p>신문 제3공영주차장</p>
                                </td>
                                <td class="left">
                                <p>강화읍 신문리 480</p>
                                </td>
                                <td>
                                <p>50</p>
                                </td>
                            </tr>
                            <tr>
                                <td>25</td>
                                <td>강화읍</td>
                                <td>강화역사관 공영주차장</td>
                                <td class="left">강화읍 갑곳리 1040</td>
                                <td>88</td>
                            </tr>
                            <tr>
                                <td>26</td>
                                <td>강화읍</td>
                                <td>
                                <p>강화공설운동장 제1주차장</p>
                                </td>
                                <td class="left">
                                <p>강화읍 국화리 224-1</p>
                                </td>
                                <td>
                                <p>59</p>
                                </td>
                            </tr>
                            <tr>
                                <td>27</td>
                                <td>강화읍</td>
                                <td>
                                <p>강화공설운동장 제2주차장</p>
                                </td>
                                <td class="left">
                                <p>강화읍 국화리 242-3</p>
                                </td>
                                <td>
                                <p>147</p>
                                </td>
                            </tr>
                            <tr>
                                <td>28</td>
                                <td>강화읍</td>
                                <td>
                                <p>신정체육시설 주차장</p>
                                </td>
                                <td class="left">
                                <p>선원면 신정리 50</p>
                                </td>
                                <td>
                                <p>127</p>
                                </td>
                            </tr>
                            <tr>
                                <td>29</td>
                                <td>선원면</td>
                                <td>창리 제1공영주차장</td>
                                <td class="left">선원면 창리 665-2</td>
                                <td>175</td>
                            </tr>
                            <tr>
                                <td>30</td>
                                <td>
                                <p>선원면</p>
                                </td>
                                <td>
                                <p>창리 제2공영주차장</p>
                                </td>
                                <td class="left">
                                <p>선원면 창리 606-10</p>
                                </td>
                                <td>
                                <p>154</p>
                                </td>
                            </tr>
                            <tr>
                                <td>31</td>
                                <td>불은면</td>
                                <td>덕진진 공영주차장</td>
                                <td class="left">불은면 덕성리 411</td>
                                <td>45</td>
                            </tr>
                            <tr>
                                <td>32</td>
                                <td>불은면</td>
                                <td>광성보 공영주차장</td>
                                <td class="left">불은면 덕성리 35-1</td>
                                <td>76</td>
                            </tr>
                            <tr>
                                <td>33</td>
                                <td>길상면</td>
                                <td>초지진 공영주차장</td>
                                <td class="left">
                                <p>길상면 초지리 624</p>
                                </td>
                                <td>34</td>
                            </tr>
                            <tr>
                                <td>34</td>
                                <td>길상면</td>
                                <td>
                                <p>온수리 공영주차장</p>
                                </td>
                                <td class="left">
                                <p>길상면 온수리 622-33</p>
                                </td>
                                <td>94</td>
                            </tr>
                            <tr>
                                <td>35</td>
                                <td>길상면</td>
                                <td>온수리 제2공영주차장</td>
                                <td class="left">길상면 온수리 546-34 일원</td>
                                <td>56</td>
                            </tr>
                            <tr>
                                <td>36</td>
                                <td>길상면</td>
                                <td>
                                <p>길상공설운동장 주차장</p>
                                </td>
                                <td class="left">
                                <p>길상면 온수리 605-2</p>
                                </td>
                                <td>
                                <p>184</p>
                                </td>
                            </tr>
                            <tr>
                                <td>37</td>
                                <td>화도면</td>
                                <td>함허동천 공영주차장</td>
                                <td class="left">화도면 사기리 301-2 일원</td>
                                <td>285</td>
                            </tr>
                            <tr>
                                <td>38</td>
                                <td>화도면</td>
                                <td>마니산 공영주차장</td>
                                <td class="left">화도면 상방리 361-8 일원</td>
                                <td>275</td>
                            </tr>
                            <tr>
                                <td>39</td>
                                <td>화도면</td>
                                <td>동막해수욕장 공영주차장</td>
                                <td class="left">
                                <p>화도면 동막리 17 일원</p>
                                </td>
                                <td>68</td>
                            </tr>
                            <tr>
                                <td>40</td>
                                <td>화도면</td>
                                <td>동막해변 공영주차장</td>
                                <td class="left">화도면 동막리 60-1 일원</td>
                                <td>96</td>
                            </tr>
                            <tr>
                                <td>41</td>
                                <td>
                                <p>내가면</p>
                                </td>
                                <td>
                                <p>외포리 공영주차장</p>
                                </td>
                                <td class="left">
                                <p>내가면 외포리 763-79</p>
                                </td>
                                <td>
                                <p>288</p>
                                </td>
                            </tr>
                            <tr>
                                <td>42</td>
                                <td>내가면</td>
                                <td>
                                <p>해누리 공원주차장</p>
                                </td>
                                <td class="left">
                                <p>내가면 황청리 산169-2</p>
                                </td>
                                <td>
                                <p>97</p>
                                </td>
                            </tr>
                            <tr>
                                <td>43</td>
                                <td>하점면</td>
                                <td>고인돌 공영주차장</td>
                                <td class="left">하점면 부근리 348 일원</td>
                                <td>80</td>
                            </tr>
                            <tr>
                                <td>44</td>
                                <td>하점면</td>
                                <td>
                                <p>고려산(백련사) 공영주차장</p>
                                </td>
                                <td class="left">
                                <p>하점면 부근리 230-7</p>
                                </td>
                                <td>
                                <p>44</p>
                                </td>
                            </tr>
                            <tr>
                                <td>45</td>
                                <td>양사면</td>
                                <td>강화평화전망대 공영주차장</td>
                                <td class="left">양사면 철산리 산 6-1</td>
                                <td>57</td>
                            </tr>
                            <tr>
                                <td>46</td>
                                <td>양사면</td>
                                <td>교산리 공영주차장</td>
                                <td class="left">양사면 교산리 861</td>
                                <td>90</td>
                            </tr>
                            <tr>
                                <td>47</td>
                                <td>교동면</td>
                                <td>대룡리 공영주차장</td>
                                <td class="left">교동면 대룡리 466-19 일원</td>
                                <td>154</td>
                            </tr>
                            <tr>
                                <td>48</td>
                                <td>
                                <p>교동면</p>
                                </td>
                                <td>
                                <p>화개정원 공영주차장</p>
                                </td>
                                <td class="left">
                                <p>교동면 고구리 1474-5 일원</p>
                                </td>
                                <td>
                                <p>519</p>
                                </td>
                            </tr>
                            <tr>
                                <td>50</td>
                                <td>삼산면</td>
                                <td>매음제 1공영주차장</td>
                                <td class="left">
                                <p>삼산면 매음리 641-10 일원</p>
                                </td>
                                <td>76</td>
                            </tr>
                            <tr>
                                <td>51</td>
                                <td>삼산면</td>
                                <td>석모도 미네랄스파 공영주차장</td>
                                <td class="left">삼산면 매음리 645-10 일원</td>
                                <td>156</td>
                            </tr>
                            <tr>
                                <td>52</td>
                                <td>
                                <p>삼산면</p>
                                </td>
                                <td>
                                <p>석모도만남의광장 공영주차장</p>
                                </td>
                                <td class="left">
                                <p>삼산면 석포리 547-15</p>
                                </td>
                                <td>
                                <p>126</p>
                                </td>
                            </tr>
                            <tr>
                                <td>53</td>
                                <td>삼산면</td>
                                <td>
                                <p>민머루해수욕장 공영주차장</p>
                                </td>
                                <td class="left">
                                <p>삼산면 매음리 872</p>
                                </td>
                                <td>199</td>
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