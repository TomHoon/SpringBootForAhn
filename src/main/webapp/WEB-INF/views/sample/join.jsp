<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입</h2>
	
	<form action="join.do" method="post">
		아이디:<input type="text" name="board_writer"><br/>
		비밀번호:<input type="password" name="board_writer_pw"><br/>
		이름:<input type="text" name="board_writer_name"><br/>
		전화번호:
		<input type="text" name="board_writer_phone"><br/>
		이메일:
		<input type="text" name="board_writer_email"><br/>
		<input type="submit" value="가입">
	</form>
</body>
</html>