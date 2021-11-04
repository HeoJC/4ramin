<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 이력서 수정</title>
</head>
<body>
	<div align="center">이력서 작성</div>
	<div>
		<form id=frm action="" method="post">
			<table border="1">
				<tr>
				<th>이름</th>
				<td><input type = "text" id="name" name="name"></td>
				<th>전화번호</th>
				<td><input type = "text" id="phone" name="phone"></td>
				<th>이메일</th>
				<td><input type = "text" id="email" name="email"></td>
				<th>유저아이디</th>
				<td><input type = "text" id="id" name="id"></td>
				<th>생년월일</th>
				<td><input type = "date" id="birthday" name="birthday">
				</tr>
				<tr>
				<th>학력</th>
				<td><input type = "text" id="education" name="education">
				</tr>
				<tr>
				<th>경력</th>
				<td><input type = "text" id="career" name="career"></td>
				</tr>
				<tr>
				<td><input type = "file" id = "photo" name="photo"></td>
				</tr>
				
			</table>
		</form>
	</div>

</body>
</html>