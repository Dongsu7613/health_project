<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 보기</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function commentWrite() {

		if ($("#sname").val() == "") {
			alert("작성자 이름을 입력해주세요.");
			$("#sname").focus();
			return false;
		} else if ($("#bcontent").val() == "") {
			alert("내용을 입력해주세요.");
			$("#bcontent").focus();
			return false;
		}

		var html = "";
		$.ajax({
			url : "/comment_Write",
			type : "post",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : {
				"bid" : $("#bid").val(),
				"sname" : $("#sname").val(),
				"bcontent" : $("#bcontent").val()
			},
			success : function(data) {

				html += '<tr>';
				html += '<td>' + data.commentNo + '</td>';
				html += '<td>' + data.sname + '</td>';
				html += '<td>' + data.bcontent + '</td>';
				html += '<td>' + data.bdate + '</td>';
				html += '</tr>';

				$('#list').prepend(html);
				alert('댓글을 업로드 하였습니다.');
				location.reload();
			},
			error : function() {
				alert('에러');
			}
		});
	}
</script>
</head>
<body>
	<input type="hidden" name="bid" id="bid" value="${map.togetherDto.bid }">
	<table>
		<tr>
			<td>작성자</td>
			<td>${map.togetherDto.bname }</td>
		</tr>
		<tr>
			<td>운동종류</td>
			<td>${map.togetherDto.subject }</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${map.togetherDto.title }</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${map.togetherDto.bcontent }</td>
		</tr>
		<tr>
			<td>첨부파일이름</td>
			<td>${map.togetherDto.fileName }</td>
		</tr>
		<tr>
			<td>첨부파일이미지</td>
			<td><img alt="첨부파일 이미지"	src="/resources/upload/${map.togetherDto.fileName}"></td>
		</tr>
	</table>
	<hr />
	<!-- 댓글창 -->
	<h4>댓글창</h4>
	<table id="list">
		<tr>
			<td>번호</td>
			<td>작성자</td>
			<td>내용</td>
			<td colspan="2">작성일</td>
		</tr>
		<c:forEach var="dto" items="${clist }">
			<tr>
				<td>${dto.commentNo }</td>
				<td>${dto.sname }</td>
				<td>${dto.bcontent }</td>
				<td>${dto.bdate }</td>
				<td><a href="comment_Delete?commentNo=${dto.commentNo}"><button>삭제하기</button></a></td>
			</tr>
		</c:forEach>
	</table>
	<hr />
	<ul>
		<li>작성자 : <input type="text" name="sname" id="sname"></li>
		<li>내용 : <input type="text" name="bcontent" id="bcontent"><input
			type="button" onclick="commentWrite()" value="댓글달기"></li>
	</ul>
	<hr />
	<div class="button-wrapper">
		<a href="/lessonBoardAccess"><button>리스트로 돌아가기</button></a> 
		<a 	href="/togetherEx_modifyView?search=${map.search }&bid=${map.togetherDto.bid }"><button>수정하기</button></a>
		<a	href="togetherEx_delete?search=${map.search }&bid=${map.togetherDto.bid }"><button>삭제하기</button></a>
	</div>
</body>
</html>