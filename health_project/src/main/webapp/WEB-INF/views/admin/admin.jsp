<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<script>
		function SiteClose(f){
			if (confirm('!! ���� !! ����Ʈ�� �����ðڽ��ϱ�?')){
				f.submit();
			}
		}
		function SiteOpen(f){
			if (confirm('!! ���� !! ����Ʈ�� ���ðڽ��ϱ�?')){
				f.submit();
			}
		}
		
	</script>
</head>
<body>
	������ ������ �Ӵ�
	
	
	
	<form action="/admin/AccessForSiteClose" id="siteCloseBtn" method="POST">
		<input type="button" value="����Ʈ �ݱ�" onclick="SiteClose(this.form)">
	</form>
	<form action="/admin/AccessForSiteOpen" id="siteCloseBtn" method="POST">
		<input type="button" value="����Ʈ ����" onclick="SiteOpen(this.form)">
	</form>
</body>
</html>