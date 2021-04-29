<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 가입</title>
	<link rel="stylesheet" href="/resources/css/user/newMember.css">
</head>
<body>
	 <%-- 헤더 땡겨오기 --%>
	 <jsp:include page="../util/mainHeader.jsp"></jsp:include>
	 
	 <div class="full">
        <div class="container">
            <h1 class="intro_ment">회원가입</h1>
			<form></form>
            <div class="innerBox">
                <label for="userId" class="label labelid">ID</label>
                <div class="idBox">
                    <input type="text" id="userId" name="userId" placeholder="ID를 입력해주세요" maxlength="20">
                    <input type="button" id="idCheckBtn" value="중복확인">
                </div>

                <label for="userName" class="label labelName">이름</label>
                <input type="text" id="userName" name="userName" placeholder="이름을 입력해주세요" maxlength="10">
    
                <label for="userPw" class="label labelPw">비밀번호</label>
                <input type="password" id="userPw" name="userPw" placeholder="비밀번호" maxlength="30">
                <input type="password" id="userPw2" placeholder="비밀번호 확인" maxlength="30">

                <label for="userEmail" class="label labelEmail" >이메일</label>
                <div class="emailBox">
                    <input type="text" id="userEmail" name="userEmail" placeholder="이메일" maxlength="15">
                    <p>@</p>
                    <select id="userEmail2" name="userEmail2">
                            <option value="">이메일을 선택해주세요.</option>
                            <option value="naver.com">naver.com</option>
                            <option value="daum.net">daum.net</option>
                            <option value="gmail.com">gamil.com</option>                
                    </select>
                </div>
                
                <input type="button" id="submitBtn" value="가입하기" >
            </div>
        </div>
    </div>
</body>
</html>