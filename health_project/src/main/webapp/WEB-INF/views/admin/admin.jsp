<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<script>
		function SiteClose(f){
			if (confirm('!! 주의 !! 사이트를 닫으시겠습니까?')){
				f.submit();
			}
		}
		function SiteOpen(f){
			if (confirm('!! 주의 !! 사이트를 여시겠습니까?')){
				f.submit();
			}
		}
		
	</script>
</head>
<body>
	관리자 페이지 임당
	
	
	
	<form action="/admin/AccessForSiteClose" id="siteCloseBtn" method="POST">
		<input type="button" value="사이트 닫기" onclick="SiteClose(this.form)">
	</form>
	<form action="/admin/AccessForSiteOpen" id="siteCloseBtn" method="POST">
		<input type="button" value="사이트 열기" onclick="SiteOpen(this.form)">
	</form>
</body>
</html>