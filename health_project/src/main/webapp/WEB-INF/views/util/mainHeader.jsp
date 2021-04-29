<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/resources/css/util/mainHeader.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
	<%-- 토글식 버튼을 위한 변수 --%>
	var check = 'BEFORE'
		<%-- 상단 화면 내려옴 --%>
	function topOpen(){
		$('.Move').css("transform","translateY(0%)")
		$('.nav').css("background-color","#ed2823")
		$('.nav').css("border","none")
		$('.nav_right').css("background-color","white")
		$('.nav_left').html("<img src='/resources/img/headerimg/logo_white.png'>"+
							"<img src='/resources/img/headerimg/ment_after.png'>")
		$('.nav_right').html("<img src='/resources/img/headerimg/cancel.png'>")
		$('.full').css("transform","translateY(100%)")
		check = 'AFTER';
	}
	
	<%-- 상단 화면 닫음 --%>
	function topClose(){
		$('.Move').css("transform","translateY(-100%)")
		$('.full').css("transform","translateY(0%)")
		$('.nav_right').css("background-color","#ee2c3c")
		setTimeout(function() {
			$('.nav_left').html("<img src='/resources/img/headerimg/logo_red.png'>"+
								"<img src='/resources/img/headerimg/ment01.png'>")
			$('.nav_right').html("<img src='/resources/img/headerimg/menuIcon.png'>")
			$('.nav').css("background-color","#fff")
			$('.nav').css("border-bottom","1px solid #ddd")
		}, 380);
		check = 'BEFORE'
	}
	<%-- 상단 화면 토글 버튼 --%>
	function TopToggle(){
		if (check == 'BEFORE'){
			topOpen()
		}else {
			topClose()
		}
	}
	
	
	
	
	<%--모달 js --%>
	function modal(){
		$('.loginModal').css("visibility","visible");
		$('.loginModal').css("opacity","1");
		$('.nav').css("opacity","0.3");
		$('.Move').css("opacity","0.3");
		$('.full').css("opaciry","0")
	}
	
	function modalClose(){
		$('.loginModal').css("visibility","hidden");
		$('.loginModal').css("opacity","0");
		$('.nav').css("opacity","1");
		$('.Move').css("opacity","1");
		$('.full').css("opaciry","1")
	}
	$(function(){
		$('body').css("visibility","visible")
		$('body').css("opacity","1")
	})
	$(function(){
		$('body').click(function(event){
			var t = $(event.target);
			if (!($(t).attr('class') == 'login' || $(t).parents('div').is('.loginModal'))){
				<%-- 클릭한 타겟이 로그인 버튼이 아니거나,모달을 누른게 아니라면 모달 닫음 --%>
				modalClose()
			}else{
				if ($(t).attr('class') == 'modalclose'){
					<%-- 모달에서 모달 닫기 버튼을 누르면 닫아짐 --%>
					modalClose()	
				}
			}
		
			
		});	
	})
	
	function loginCheck(f){
		var id = f.userId.value;
		var pw = f.userPw.value;
		if (id == ''){
			alert('아이디를 입력해주세요.')
			$(f.userId).focus();
			return
		}
		if (pw == ''){
			alert('비밀번호를 입력해주세요.')
			$(f.userPw).focus();
			return;
		}
		$('#loginForm').submit();
		
	}
	</script>
</head>
<body>
	<div class="nav">
		<a href="/user/rootAccess" class="nav_left" >
			<img src="/resources/img/headerimg/logo_red.png" >
			<img src="/resources/img/headerimg/ment01.png">
		</a>
		<div class="nav_right" onclick="TopToggle()">
			<img src="/resources/img/headerimg/menuIcon.png">
		</div>
	</div>
	
	<%-- 위쪽 화면 --%>
	<div class="Move">
			<div class="Move_In">
				<div class="Move_header">
					<a>Magazine</a>
					<a>Facebook</a>	
				</div>
				<div class="Move_Body">
					<div class="Move_Body_left">
					<% if (session.getAttribute("userDto") == null){ %>
						<a onclick="modal()" class="login">Login</a>
						<a href="/user/newMember">Join-Us</a>
						<a href="">Search</a>
						<a href="">News</a>
					<%}else { %>
						<a href="#">로그아웃</a>
						<a href="/shareBoardAccess">마이 페이지</a>
						<a href="/lessonBoardAccess">강사</a>
						<a href="">중고</a>
					<%} %>
					</div>
					<div class="Move_Body_right">
						<div class="Move_Body_rightIn">
							<img src="/resources/img/headerimg/download.png">
						<strong>MAKE∴GREATENESS</strong><br />
						위대함을 만들어 갑니다
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<%-- 로그인 모달 --%>
		<div class="loginModal">
			<div class="modal_head">
				<h1>로그인</h1>
				<img class="modalclose" src="/resources/img/headerimg/close.png">
			</div>
			<div class="modal_body">
				<form action="/user/loginCheck" id="loginForm" method="POST">
					<label for="id">아이디</label>
					<input type="text"  id="id" name="userId" placeholder="아이디를 입력하세요" maxlength="17"><br />
					<label for="pw">비밀번호</label>
					<input type="password"  id="pw" name="userPw" placeholder="비밀번호를 입력하세요" maxlength="30"><br />
					<div class="modal_body_foot">
						<label><input type="checkbox" name="rememberId" id="rememberId"> 자동로그인</label>
						<ul>
							<li><a href="">아이디 찾기</a></li>
							<li>|</li>
							<li><a href="">비밀번호 찾기</a></li>
						</ul>
					</div>
					<input type="button" class="submitBtn" onclick="loginCheck(this.form)" value="로그인">
				</form>
					<div class="mbf">
						<a href="#" class="mbfIn01"><img src="/resources/img/headerimg/naverIcon.png">네이버 로그인</a>
						<a href="#" class="mbfIn02"><img src="/resources/img/headerimg/kakaoIcon.png">카카오 로그인</a>
					</div>
			</div>
			<div class="modal_foot">
				<div class="modal_foot_left">신규지원자신가요?<br />지원 전 회원가입은 필수!</div>
				<div class="modal_foot_right">
					<a href="/user/newMember" class="mfr_Btn">
						회원가입 >
					</a>
				</div>
			</div>
		</div>
</body>
</html>