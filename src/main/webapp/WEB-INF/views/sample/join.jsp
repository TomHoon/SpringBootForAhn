<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ȸ������</h2>
	
	<form action="join.do" method="post">
		���̵�:<input type="text" name="board_writer"><br/>
		��й�ȣ:<input type="password" name="board_writer_pw"><br/>
		�̸�:<input type="text" name="board_writer_name"><br/>
		��ȭ��ȣ:
		<input type="text" name="board_writer_phone"><br/>
		�̸���:
		<input type="text" name="board_writer_email"><br/>
		<input type="submit" value="����">
	</form>
</body>
</html>