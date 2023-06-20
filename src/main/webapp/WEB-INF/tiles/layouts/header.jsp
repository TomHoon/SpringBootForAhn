<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hi.com</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

</head>
<body class="pt-5"> 
	<div>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<a class="navbar-brand" href="/etc">Hi.com</a>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="/etc">홈<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item">
						<c:if test="${empty signIn}">
							<a class="nav-link" href='login'>로그인</a>
						</c:if>
						<c:if test="${not empty signIn}">
							<a class="nav-link" href='logout.do'>로그아웃</a>
						</c:if>
					<li class="nav-item">
						<c:if test="${empty signIn}">
							<a class="nav-link" href='join'>회원가입</a>
						</c:if>
					</li>
					<li class="nav-item">
						<c:if test="${not empty signIn}">
							<a class="nav-link" href='userInfo'>나의정보</a>
						</c:if>
					</li>
					<li class="nav-item">
						<c:if test="${not empty signIn}">
							<a class="nav-link" href='memberList'>회원목록</a>
						</c:if>
					</li>
					<li class="nav-item">
						<c:if test="${not empty signIn}">
							<a class="nav-link" href='boardList'>게시판</a>
						</c:if>
					</li>
				</ul>
			</div>
		</nav>
	</div>
</body>

</html>