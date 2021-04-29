<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<style>
		body{
			width: 100vw;
			height: 100vh;
			overflow: hidden;
			margin: 0;
			padding: 0;
			box-sizing: border-box;		
		}
		.sorryBox{
			position: absolute;
			left:50%;
			top:50%;
			transform:translate(-50%,-50%);
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: space-between;
			border: 5px solid #26292d;
			border-radius: 15px;
			padding:20px;
			
		}
		.sorryBox > img{
			width: 300px;
			height: 300px;
		}
	</style>
</head>
	<body>
		<div class="sorryBox">
			<h1>죄송합니다. 사이트 점검 중입니다.</h1>
			<img src="/resources/img/util/siteClose.png">
		</div>
	</body>
</html>