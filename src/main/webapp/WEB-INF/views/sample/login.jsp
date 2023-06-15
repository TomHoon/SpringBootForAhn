<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Hi.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
<<<<<<< HEAD
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
					<input type="password" class="form-control" name="board_writer_pw" placeholder="Enter Pass	word">
				</div>
				<input type="submit" value="로그인">
			</form>
		</div>
		
<!-- 	<form action="join.do" method="post">
		아이디:<input type="text" name="board_writer"><br/>
		비밀번호:<input type="password" name="board_writer_pw"><br/>
		이름:<input type="text" name="board_writer_name"><br/>
		전화번호:
		<input type="text" name="board_writer_phone"><br/>
		이메일:
		<input type="text" name="board_writer_email"><br/>
		<input type="submit" value="가입">
	</form> -->
=======
	<div class="jumbotron text-center" style="margin-bottom:0">
	 	<h1>Hi.com</h1>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link" href="join">회원가입</a>
					</li>
				</ul>
			</div>  
		</nav>
		<br></br>
		<h2>로그인</h2>
		<div class="container">
			<form action="join.do" method="post">
				<div class="form-group">
					<label for="ID">ID:</label><input type="ID" class="form-control" placeholder="Enter ID" id="ID">
				</div>			
				<div class="form-group">
					<label for="PWD">Password:</label><input type="password" class="form-control" placeholder="Enter Password" id="PWD">
				</div>
			</form>
			<button type="submit" class="btn btn-primary">로그인</button>	
		</div>
>>>>>>> 5d896c1e3b776aa19447256aa5b8a8a9ea8fc1d4
	</div>
</body>
</html>

		
