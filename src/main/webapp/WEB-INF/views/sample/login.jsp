<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Hi.com.login</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center">
		<h2>로그인</h2>
		<div class="container">
			<form action="login.do" method="post">
				<div class="form-group">
					<label for="ID">ID:</label>
					<input type="text" class="form-control" name="board_writer" placeholder="Enter ID">
				</div>			
				<div class="form-group">
					<label for="PWD">Password:</label>
					<input type="password" class="form-control" name="board_writer_pw" placeholder="Enter Password">
				</div>
				<input type="submit" value="로그인">
			</form>
		</div>
	</div>
</body>
</html>

		
