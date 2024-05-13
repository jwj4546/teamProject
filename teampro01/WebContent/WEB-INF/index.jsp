<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<c:set var="path0" value="<%=request.getContextPath() %>" />     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>

<div id="contents">
	<section class="page" id="page1">
		<figure id="vs">
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
			   		<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    	<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			    	<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			  	</ol>
			  	<div class="carousel-inner">
			    	<div class="carousel-item active">
			      		<img class="d-block w-100" src="${path0 }/images/img1.jpg" alt="">
			    	</div>
			  	</div>
			  	<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			    	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    	<span class="sr-only">Previous</span>
			  	</a>
			  	<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
			    	<span class="sr-only">Next</span>
				</a>
			</div>
		</figure>
		<h3 class="page_title"></h3>
	</section>
	<section class="page" id="page2">
		<div>	
			
		</div>		
	</section>
</div>

<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>