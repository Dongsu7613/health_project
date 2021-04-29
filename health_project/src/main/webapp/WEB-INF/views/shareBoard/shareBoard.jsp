<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/resources/css/shareBoard/shareBoard.css">
</head>
<body>
	<%-- 나중에 프로젝트 끝날때 지우면 것 --%>
	<h1 class="introduce">장비 공유 게시판</h1>
	
	
	<%-- 헤더 땡겨오기 --%>
	<jsp:include page="../util/mainHeader.jsp"></jsp:include>
	
	<div class="full">
    	<div class="inner">
            <div class="top">
                <div class="topinner ti01"><h1>구매</h1></div>
                <div class="topinner ti02"><h1>판매</h1></div>
                <div class="topinner ti03"><h1>빌려드려요</h1></div>
                <div class="topinner ti04"><h1>빌려주세요</h1></div>
            </div>
            <div class="searchBox">
	            <input id="search" type="text" name="search" placeholder="검색">
            </div>
            <div class="list">
            	<div class="item 01"></div>
            	<div class="item 02"></div>
            	<div class="item 03"></div>
            	<div class="item 04"></div>
            	<div class="item 05"></div>
            	<div class="item 06"></div>
            	<div class="item 06"></div>
            	<div class="item 06"></div>
            	<div class="item 06"></div>
            	<div class="item 06"></div>
            	<div class="item 06"></div>
            	<div class="item 06"></div>
            	<div class="item 06"></div>
            	<div class="item 06"></div>
            </div>
        </div>
        
        
        
    </div>
</body>
</html>