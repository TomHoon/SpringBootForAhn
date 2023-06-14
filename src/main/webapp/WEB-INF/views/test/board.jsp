<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Table Test</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<table class="table table-striped">
			<tr>
				<th>제목</th>
				<th>이름</th>
				<th>내용</th>
				<th>날짜</th>
			</tr>
			<tr>
				<td>제목1</td>
				<td>이름1</td>
				<td>내용1</td>
				<td>날짜1</td>
			</tr>
			<tr>
				<td>제목2</td>
				<td>이름2</td>
				<td>내용2</td>
				<td>날짜2</td>
			</tr>
			<tr>
				<td>제목3</td>
				<td>이름3</td>
				<td>내용3</td>
				<td>날짜3</td>
			</tr>
		</table>
		
		<hr/>
		
		<button type="button" class="btn btn-primary btn-sm float-right">글쓰기</button>
		
		<div class="text-center">
		  <ul class="pagination">
		    <li class="page-item disabled">
		      <span class="page-link">Previous</span>
		    </li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item active">
		      <span class="page-link">
		        2
		        <span class="sr-only">(current)</span>
		      </span>
		    </li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item">
		      <a class="page-link" href="#">Next</a>
		    </li>
		  </ul>
		</div>
	</div>
</body>
</html>
