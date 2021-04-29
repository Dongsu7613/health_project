<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>수강신청서</title>
		  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			
		
		</script>
		
		<style type="text/css">
		table,td{ border:1px solid black; border-collapse :collapse;
		text-align: center; margin: 0 auto;}
		
		input::placeholder{margin: 0 auto; text-align:center;}
		</style>
	</head>
	<body>
		<table width="660" border="0" align="center">
		<tr>
			<td align="center" backgroud="tomato">
				<h1>수강신청완료!</h1>
			</td>
		</tr>
	</table>
	<hr width="660" align="center">
	<table>
		<tr>
			<td>강사 이름</td>
			<!-- 세션에서 끌어와서 넣을예정 -->
			<td>하동수</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="50">
			&lt;수강 신청 입력사항&gt;
			</td>
		</tr>
		<%-- <!-- 파일넘겨와서 읽기 -->
		 <tr>
			<td width="100">사진 첨부 :</td>
			<td>
				${dto.getFilename()}
			</td>
		</tr>  --%>
		<!-- 세션에서 끌어와서 담음 -->
		<tr>
			<td width="330">이름</td>
			
			<td>
		${dto.getName()}
		</td>
		</tr>
		<!-- 세션에서 끌어와서 담음 -->
		<tr>
			<td width="100">성별</td>
			<td>
			${dto.getGender()}
			</td>
		</tr>
		<tr>
			<td width="420">운동의 목적은 무엇인가요?</td>
			<td>
				${dto.getAge()}
			</td>
		</tr>
		<tr>
			<td width="420">레슨생의 연령대는 어떻게 되나요?</td>
			<td>
			${dto.getGoal()}
			</td>
		</tr>
		<tr>
			<td width="420">수업 가능 요일을 모두 선택해주세요.</td>
			<td>
			${dto.getDay()}
			</td>
		</tr>
		<tr>
			<td width="420">희망하는 운동 시간대는 언제인가요?</td>
			<td>
			${dto.getWishtime()}
			</td>
		</tr>
		<tr>
			<td width="420">선호하는 능력자의 성별이 있나요?</td>
			<td>
			${dto.getTgender()}
			</td>
		</tr>
		<tr>
			<td width="420">운동 시작 희망일이 언제인가요?</td>
			<td>
			${dto.getWish()}
			</td>
		</tr>
		<tr>
			<td width="420">어떻게 진행하기 원하시나요?</td>
			<td>
			${dto.getPlace()}
			</td>
		</tr>
		
		</table>
		<hr width="657" align="center">
		<table width="657">
		<tr>
			<td>수업 관련 희망사항</td>
		</tr>
		<tr>			
		<td>
		${dto.getMemo()}
		</td>
		</table>
		<br>
		<table width="660">
			<tr>
			<td>
				<input type="button" onclick="javascript:location.href='/lessonBoardAccess'" value="메인페이지로 돌아가기 😎">
				<input type="button" onclick="javascript:location.href='/application'" value="수정하기 😎">
			</td>
			</tr>
		</table>
	</body>
</html>