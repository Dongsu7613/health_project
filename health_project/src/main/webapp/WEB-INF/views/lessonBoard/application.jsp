<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>수강 신청서</title>
		 <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		function Check(){
			
			
			
			var getName= RegExp(/^[가-힣]+$/);

			if($("#name").val() == ""){
			alert("이름을 입력해주세요.");
			$("#name").focus();
			return false;
		}
		

			if(!getName.test($("#name").val())){
				alert("형식에 맞게 입력해주세요(ex=가-힣)");
				$("#name").val(""); 
				$("#name").focus();
				return false; 
				}
			if (!$("input:checked[id='gender']").is(":checked")){
				alert("성별을 체크해주세요."); 
				$("#gender").focus();
				return false; 
				}
			if (!$("input:checked[id='goal']").is(":checked")){
				alert("목적을 체크해주세요."); 
				$("#goal").focus();
				return false; 
				}
			if (!$("input:checked[id='age']").is(":checked")){
				alert("연령대를 체크해주세요."); 
				$("#age").focus();
				return false; 
				}
			if (!$("input:checked[id='day']").is(":checked")){
				alert("희망 요일을 체크해주세요."); 
				$("#day").focus();
				return false; 
				}
			if (!$("input:checked[id='wishtime']").is(":checked")){
				alert("희망시간대 를 체크해주세요."); 
				$("#wishtime").focus();
				return false; 
				}
			if (!$("input:checked[id='tgender']").is(":checked")){
				alert("원하는 성별을 체크해주세요."); 
				$("#tgender").focus();
				return false; 
				}
			if (!$("input:checked[id='place']").is(":checked")){
				alert("원하는 방식을 체크해주세요."); 
				$("#place").focus();
				return false; 
				}
			alert('수강신청이 완료되었습니다.');
			studyForm.submit();
		 } 
		
		</script>
		
		<style type="text/css">
		table,td{ border:1px solid black; border-collapse :collapse;
		text-align: center; margin: 0 auto;}
		
		input::placeholder{margin: 0 auto; text-align:center;}
		
		</style>
	</head>
	<body>
	<form action="application_write" method="post" name="studyForm" id="studyForm">
	<table width="660" border="0" align="center">
		<tr>
			<td align="center" backgroud="tomato">
				<h2>수강 신청서</h2>
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
		<!-- <tr>
			<td width="100">사진 첨부 :</td>
			<td>
				<input type="file" name="file" id="file" size="10"><br>
			</td>
		</tr> -->
		<!-- 세션에서 끌어와서 담음 -->
		<tr>
			<td width="330">이름</td>
			<td>
				<input type="text" name="name" id="name" size="10" autofocus>
			</td>
		</tr>
		<!-- 세션에서 끌어와서 담음 -->
		<tr>
			<td width="100">성별</td>
			<td>
				<input type="radio" name="gender" id="gender" size="10" value="man">남자
				<input type="radio" name="gender" id="gender" size="10" value="woman">여자
			</td>
		</tr>
		<tr>
			<td width="420">운동의 목적은 무엇인가요?</td>
			<td>
			<input type="checkbox" name="goal" id="goal" value="다이어트">다이어트<br/>
			<input type="checkbox" name="goal" id="goal" value="근력강화">근력강화<br/>
			<input type="checkbox" name="goal" id="goal" value="체중증가">체중증가<br/>
			<input type="checkbox" name="goal" id="goal" value="체력증진">체력증진<br/>
			<input type="checkbox" name="goal" id="goal" value="체형교정">체형교정<br/>
			</td>
		</tr>
		<tr>
			<td width="420">레슨생의 연령대는 어떻게 되나요?</td>
			<td>
			<input type="radio" name="age" id="age" value="10대 미만">10대 미만<br/>
			<input type="radio" name="age" id="age" value="10대">10대<br/>
			<input type="radio" name="age" id="age" value="20대">20대<br/>
			<input type="radio" name="age" id="age" value="30대">30대<br/>
			<input type="radio" name="age" id="age" value="40대">40대<br/>
			<input type="radio" name="age" id="age" value="50대 이상">50대 이상<br/>
			</td>
		</tr>
		<tr>
			<td width="420">수업 가능 요일을 모두 선택해주세요.</td>
			<td>
			<input type="checkbox" name="day" id="day" value="상담후결정">상담후결정<br/>
			<input type="checkbox" name="day" id="day" value="월요일">월요일<br/>
			<input type="checkbox" name="day" id="day" value="화요일">화요일<br/>
			<input type="checkbox" name="day" id="day" value="수요일">수요일<br/>
			<input type="checkbox" name="day" id="day" value="목요일">목요일<br/>
			<input type="checkbox" name="day" id="day" value="금요일">금요일<br/>
			<input type="checkbox" name="day" id="day" value="토요일">토요일<br/>
			<input type="checkbox" name="day" id="day" value="일요일">일요일<br/>
			</td>
		</tr>
		<tr>
			<td width="420">희망하는 운동 시간대는 언제인가요?</td>
			<td>
			<input type="checkbox" name="wishtime" id="wishtime" value="이른오전">이른오전(9시 이전)<br/>
			<input type="checkbox" name="wishtime" id="wishtime" value="오전">오전(9~12시)<br/>
			<input type="checkbox" name="wishtime" id="wishtime" value="오후">오후(12~3시)<br/>
			<input type="checkbox" name="wishtime" id="wishtime" value="늦은오후">늦은오후(3~6시)<br/>
			<input type="checkbox" name="wishtime" id="wishtime" value="저녁">저녁(6~9시)<br/>
			<input type="checkbox" name="wishtime" id="wishtime" value="늦은저녁">늦은저녁(9시후)<br/>
			</td>
		</tr>
		<tr>
			<td width="420">선호하는 능력자의 성별이 있나요?</td>
			<td>
			<input type="radio" name="tgender" id="tgender" value="무관">무관<br/>
			<input type="radio" name="tgender" id="tgender" value="남">남<br/>
			<input type="radio" name="tgender" id="tgender" value="여">여<br/>
			</td>
		</tr>
		<tr>
			<td width="420">운동 시작 희망일이 언제인가요?</td>
			<td>
			<input type="radio" name="wish" id="wish" value="협의가능">협의 가능해요<br/>
			<input type="radio" name="wish" id="wish" value="가능한빨리">가능한 빨리 진행하고 싶어요<br/>
			<input type="radio" name="wish" id="wish" value="원하는날짜">원하는 날짜가 있어요.<br/>
			</td>
		</tr>
		<tr>
			<td width="420">어떻게 진행하기 원하시나요?</td>
			<td>
			<input type="radio" name="place" id="place" value="갈게요">능력자가 있는곳으로 갈게요<br/>
			<input type="radio" name="place" id="place" value="방문수업">방문 수업원해요<br/>
			<input type="radio" name="place" id="place" value="온라인">온라인/화상수업 원해요<br/>
			<input type="radio" name="place" id="place" value="상관없어요">상관없어요<br/>
			</td>
		</tr>
		
		</table>
		<hr width="657" align="center">
		<table width="657">
		<tr>
			<td>수업 관련 희망사항을 알려주세요.</td>
		</tr>
		<tr>			
		<td>
			<textarea name="memo" id="memo" rows="3" cols="80" placeholder="달성 목표 또는 현재 몸 상태 등 자유롭게 남겨주세요."></textarea>
		</td>
		</table>
		<br>
		<table width="660">
			<tr>
				<td><input type="button" onclick="Check()" value="신청하기 😎">
				<input type="reset" value="다시쓰기 😎"></td>
			</tr>
		</table>
		</form>
	</body>
	</html>