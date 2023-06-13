<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- jstl 라이브러리 불러오는 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  </style>
<script type="text/javascript">
$(document).ready(function() {
    $("#writeBtn").click(function(){
    	location.href ="write";
    })
    $.ajax({url: "sample/boardList", success: function(result){             
        var html = "";
    	result.forEach(function(item){
        	html+= "<tr> <td><a href = 'views?idx=" + item.board_idx + "'>" + item.board_title + "</a>"
        })
       $("#listArea").append(html)
       $('#example').DataTable();
     }});
     $("#deleteBtn").click(function(){
    	location.href ="write";
     })
} );
</script>
</head>
<body>
	<div class="jumbotron text-center" style="margin-bottom:0">
 	<h1>Hi.com</h1>
 	
 	
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="index">홈</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href='login'>로그인</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href='join'>회원가입</a>
				</li>
			</ul>
		</div>  
	</nav>
	<div class="container" style="margin-top:30px">
		<div class="row">
			<div class="col-sm-12">
		      <!-- <h2>게시판</h2> -->
				<table id="example" class="display" style="width:100%">
			        <thead>
			            <tr>
			                <th>제목</th>
			                <th>내용</th>
			                <th>작성자</th>
			                <th>작성일</th>
			            </tr>
			        </thead>
			        <tbody id = "listArea">
		                <c:forEach var="item" items="${BoardList}">
							<table>
								<tr>
									<td>${item.board_title}</td>
									<td>${item.board_contents}</td>
									<td>${item.board_writer}</td>
									<td>${item.board_write_date}</td>
									<td>${item.board_view_count}</td>
								</tr>
							</table>
						</c:forEach>
			        </tbody>
			    </table>
				<button type="button" class="btn btn-primary" id = "writeBtn">글쓰기</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>