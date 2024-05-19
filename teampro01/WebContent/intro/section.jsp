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
    .wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 302px; height: 302px; 
    border: 1px solid #000; position: relative; }
    .wrap .box li:hover #cover { display: block; cursor: pointer; }

    .box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
    font-weight: bold; font-size: 17px; background-color: #eccfe9; }

    #img { width: 300px; height: 300px; position: absolute; z-index: 10; }
    #cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }
</style>
<title>일반현황/행정구역</title>
<style>
#contents { height: 1300px; }
.wrap .box li { margin-top:30px; margin-left: 70px; float: left; width: 300px; height: 300px; 
border: 1px solid #000; position: relative; }
.wrap .box li:hover #cover { display: block; cursor: pointer; }

.box .text { z-index: 10; position: absolute; width: 300px; height: 50px; line-height: 50px; text-align: center; 
font-weight: bold; font-size: 17px; background-color: #eccfe9; }

#img { width: 300px; height: 300px; position: absolute; z-index: 10; }
#cover { width: 300px; height: 300px; position: absolute; display: none; z-index: 11; }

.title2 { display: flex; margin-left: 70px; margin-top: 40px; }
#title_img { width: 30px; height: 30px; }
.sub_title { width: 400px; margin-left: 10px; padding-top: 5px; }

h3 { margin-left: 70px; margin-top: 40px; }
.box_img { display: flex; }
#intro_img1 { display: flex; width: 80%; height: auto; margin: 0 auto; margin-top: 30px; }
#intro_img2 { display: flex; width: 500px; height: 400px; margin-left: 70px; margin-right: 70px; margin-top: 40px; 
border:2px solid #000; }

.intro { margin-left: 70px; margin-top: 40px; margin-right: 70px; height: 200px; }

table { width: 88%; border-collapse: collapse; margin-left: 70px; margin-right: 70px; }
th { background-color: pink; }
th, td { border: 2px solid #000; padding: 8px; text-align: center; }
</style>

<style>
/* 탭 */
.tab_con { display:none; position:absolute; top:48px; left: 0; }
.tab_ra { display:none; }
.tab_ra:checked ~ .tab_con { display:block; }

.ra_item { display:none; }
.tab_con_box { display:none; }
#ra1:checked ~ .tab_con_wrap #tab_con_box1 { display:block; }
#ra2:checked ~ .tab_con_wrap #tab_con_box2 { display:block; }
#ra3:checked ~ .tab_con_wrap #tab_con_box3 { display:block; }
#ra4:checked ~ .tab_con_wrap #tab_con_box4 { display:block; }
#ra5:checked ~ .tab_con_wrap #tab_con_box5 { display:block; }
#ra6:checked ~ .tab_con_wrap #tab_con_box6 { display:block; }
#ra7:checked ~ .tab_con_wrap #tab_con_box7 { display:block; }
#ra8:checked ~ .tab_con_wrap #tab_con_box8 { display:block; }
#ra9:checked ~ .tab_con_wrap #tab_con_box9 { display:block; }
#ra10:checked ~ .tab_con_wrap #tab_con_box10 { display:block; }
#ra11:checked ~ .tab_con_wrap #tab_con_box11 { display:block; }
#ra12:checked ~ .tab_con_wrap #tab_con_box12 { display:block; }
#ra13:checked ~ .tab_con_wrap #tab_con_box13 { display:block; }

#tab2 { width: 1200px; height: 350px; clear:both; }
.tb_wrap { width: 1200px; margin-top: 50px; margin: 40px auto; display: flex; }

.btn_box { width: 500px; margin-bottom: 45px; margin-left: 70px; }
.btn_box .ra_btn { display:inline-block; width: 110px; margin-bottom: 30px;
height: 40px; line-height: 40px; text-align: center; background-color:#f3b8da; border-radius: 20px;
color:#000; position: relative; cursor: pointer; }

.tab_con_wrap .tab_con_box { position: relative; }
.tab_con_wrap .tab_con_box #img { display: flex; width: 500px; height: 400px; position: absolute; z-index: 990; }
.tab_con_wrap .tab_con_box #img1 { display: flex; position: absolute; z-index: 999;  width: 100px; height: 105px;
margin-top: 70px; margin-left: 380px; }
.tab_con_wrap .tab_con_box #img2 { display: flex; position: absolute; z-index: 999; width: 100px; height: 65px;
margin-top: 162px; margin-left: 380px; }
.tab_con_wrap .tab_con_box #img3 { display: flex; position: absolute; z-index: 999;  width: 162px; height: 107px;
margin-top: 22px; margin-left: 92px; }
.tab_con_wrap .tab_con_box #img4 { display: flex; position: absolute; z-index: 999;  width: 60px; height: 115px;
margin-top: 35px; margin-left: 375px; }
.tab_con_wrap .tab_con_box #img5 { display: flex; position: absolute; z-index: 999;  width: 105px; height: 135px;
margin-top: 255px; margin-left: 392px; }
.tab_con_wrap .tab_con_box #img6 { display: flex; position: absolute; z-index: 999;  width: 107px; height: 115px;
margin-top: 207px; margin-left: 310px; }
.tab_con_wrap .tab_con_box #img7 { display: flex; position: absolute; z-index: 999;  width: 120px; height: 85px;
margin-top: 140px; margin-left: 267px; }
.tab_con_wrap .tab_con_box #img8 { display: flex; position: absolute; z-index: 999;  width: 130px; height: 100px;
margin-top: -2px; margin-left: 267px; }
.tab_con_wrap .tab_con_box #img9 { display: flex; position: absolute; z-index: 999;  width: 120px; height: 120px;
margin-top: 185px; margin-left: 370px; }
.tab_con_wrap .tab_con_box #img10 { display: flex; position: absolute; z-index: 999;  width: 120px; height: 115px;
margin-top: 60px; margin-left: 270px; }
.tab_con_wrap .tab_con_box #img11 { display: flex; position: absolute; z-index: 999;  width: 210px; height: 180px;
margin-top: 128px; margin-left: 100px; }

.tab_con_wrap .tab_con_box #img12 { display: flex; position: absolute; z-index: 999;  width: 145px; height: 105px;
margin-top: 293px; margin-left: 280px; }

.tab_con_wrap .tab_con_box #img13 { display: flex; position: absolute; z-index: 999; width: 185px; height: 120px;
margin-top: 198px; }

#ra1:checked ~ .btn_box label[for="ra1"] { background-color: #DFB996; }
#ra2:checked ~ .btn_box label[for="ra2"] { background-color: #DFB996; }
#ra3:checked ~ .btn_box label[for="ra3"] { background-color: #DFB996; }
#ra4:checked ~ .btn_box label[for="ra4"] { background-color: #DFB996; }
#ra5:checked ~ .btn_box label[for="ra5"] { background-color: #DFB996; }
#ra6:checked ~ .btn_box label[for="ra6"] { background-color: #DFB996; }
#ra7:checked ~ .btn_box label[for="ra7"] { background-color: #DFB996; }
#ra8:checked ~ .btn_box label[for="ra8"] { background-color: #DFB996; }
#ra9:checked ~ .btn_box label[for="ra9"] { background-color: #DFB996; }
#ra10:checked ~ .btn_box label[for="ra10"] { background-color: #DFB996; }
#ra11:checked ~ .btn_box label[for="ra11"] { background-color: #DFB996; }
#ra12:checked ~ .btn_box label[for="ra12"] { background-color: #DFB996; }
#ra13:checked ~ .btn_box label[for="ra13"] { background-color: #DFB996; }
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
                                <a class="dp1">강화소개</a>
                                <ul class="sub">
                                    <li><a href="${path0 }/intro/section.jsp" class="dp2" style="background-color: #f3b8da;">일반현황/행정구역</a></li>
                                    <li><a href="${path0 }/intro/history.jsp" class="dp2">유래와연혁 </a></li>
                                    <li><a href="${path0 }/intro/special.jsp" class="dp2">특산물/특산품</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </aside>
                <div class="contents">
                    <div class="breadcrumb">
                        <p>
                            <a href="/teampro01">HOME</a><a href="${path0 }/intro/section.jsp">강화소개</a><span style="color:deeppink">일반현황/행정구역</span>
                        </p>
                    </div>
                    <h2 class="title">일반현황/행정구역</h2>
                    <div class="wrap">
                        <h3>1. 일반현황</h3>
                        <div class="box_img">
                            <img src="${path0 }/images/general.jpg" id="intro_img1" alt="intro1">
                        </div>
                        <br>
                        <h3>2. 행정구역</h3>
                        <nav id="tab2">
                            <div class="tb_wrap">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra1" checked>
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra2">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra3">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra4">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra5">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra6">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra7">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra8">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra9">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra10">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra11">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra12">
                                <input type="radio" class="ra_item" name="tb_ra2" id="ra13">
                                <div class="btn_box">
                                    <label for="ra1" class="ra_btn">강화읍</label>
                                    <label for="ra2" class="ra_btn">선원면</label>
                                    <label for="ra3" class="ra_btn">교동면</label>
                                    <label for="ra4" class="ra_btn">송해면</label>
                                    <label for="ra5" class="ra_btn">길상면</label>
                                    <label for="ra6" class="ra_btn">양도면</label>
                                    <label for="ra7" class="ra_btn">내가면</label>
                                    <label for="ra8" class="ra_btn">양사면</label>
                                    <label for="ra9" class="ra_btn">불은면</label>
                                    <label for="ra10" class="ra_btn">하점면</label>
                                    <label for="ra11" class="ra_btn">삼산면</label>
                                    <label for="ra12" class="ra_btn">화도면</label>
                                    <label for="ra13" class="ra_btn">서도면</label>
                                </div>
                                <div class="tab_con_wrap">
                                    <div class="tab_con_box" id="tab_con_box1">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section1.png" alt="section1" id="img1">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box2">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section2.png" alt="section2" id="img2">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box3">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section3.png" alt="section3" id="img3">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box4">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section4.png" alt="section4" id="img4">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box5">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section5.png" alt="section5" id="img5">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box6">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section6.png" alt="section6" id="img6">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box7">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section7.png" alt="section7" id="img7">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box8">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section8.png" alt="section8" id="img8">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box9">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section9.png" alt="section9" id="img9">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box10">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section10.png" alt="section10" id="img10">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box11">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section11.png" alt="section11" id="img11">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box12">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section12.png" alt="section12" id="img12">
                                    </div>
                                    <div class="tab_con_box" id="tab_con_box13">
                                        <img src="${path0 }/images/section.jpg" alt="section" id="img">
                                        <img src="${path0 }/images/section13.png" alt="section13" id="img13">
                                    </div>
                                </div>
                            </div>
                        </nav>
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