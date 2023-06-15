<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- jstl 라이브러리 불러오는 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Hi.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="resources/css/waitMe.css" />
<link rel="stylesheet" href="/resources/css/waitMe.min.css" />
<script src="/resources/js/waitMe.js"></script>
<script src="/resources/js/waitMe.min.js"></script>
</head>
<body>
<<<<<<< HEAD
	<div class="table-wrap">
		<table class="table table-striped">
<!-- 			<tr> -->
<!-- 				<th>제목</th> -->
<!-- 				<th>이름</th> -->
<!-- 				<th>내용</th> -->
<!-- 				<th>날짜</th> -->
<!-- 			</tr> -->
<!-- 			<tr class="content"> -->
<!-- 				<td>제목1</td> -->
<!-- 				<td>이름1</td> -->
<!-- 				<td>내용1</td> -->
<!-- 				<td>날짜1</td> -->
<!-- 			</tr> -->
		</table>
		<hr/>
		<button type="button" class="btn btn-primary btn-sm float-right">글쓰기</button>
		
		<div class="page-wrapper">
		  <ul class="pagination">
		    <li class="page-item disabled">
		      <span class="page-link">Previous</span>
		    </li>
		    <li class="page-item">
		    	<a class="page-link" href="#">1</a>
		    </li>
		    <li class="page-item active">
		      <a class="page-link" href="#">2</a>
		    </li>
		    <li class="page-item">
		    	<a class="page-link" href="#">3</a>
		    </li>
		    <li class="page-item">
		      <a class="page-link" href="#">Next</a>
		    </li>
		  </ul>
		</div>
	</div>
	<div id="container"></div>
=======
	<div class="jumbotron text-center" style="margin-bottom:0">
	 	<h1>Hi.com</h1>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="index">홈</a>
				</li>
				<li class="nav-item">
					<c:if test="${not empty signIn}">
					    <a class="nav-link" href='logout.do'>로그아웃</a>
					</c:if>
					<c:if test="${empty signIn}">
						<a class="nav-link" href='login'>로그인</a>
					</c:if>
				</li>
				<li class="nav-item">
					<a class="nav-link" href='join'>회원가입</a>
				</li>
			</ul>
			</div>  
		</nav>
		<div class="container" style="margin-top:30px">
		    <form action="/" method="GET" class="form-inline p-2 bd-highlight">
		        <div>
		            <input type="text" name="searchKeyword" class="form-control" placeholder="검색">
		            <button type="submit" class="btn btn-primary">Search</button>
		        </div>
		    </form>
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
>>>>>>> 5d896c1e3b776aa19447256aa5b8a8a9ea8fc1d4
</body>

<style>
.fakeimg {
  height: 200px;
  background: #aaa;
}
  .table-wrap{
  	width: 90%;
  	margin:0 auto; 
  }
</style>

<script>
//로딩바 함수 생성
var ajaxLoading = function(isLoading){
	if (isLoading == false) {
 		$("body").waitMe("hide");
	} else {
		$("body").waitMe({
			effect: "ios",
			text: "처리중입니다.",
			bg: 'rgba(255,255,255,0.7)',
			color: '#000',
			source: 'waitme/img.svg',
		});   
	}
};

// 문서 시작되자마자 실행 
$( document ).ready(function() {
	$.ajax({
	   type : 'get',           // 타입 (get, post, put 등등)
	   url : '/restBoard',           // 요청할 서버url
	   success : function(result) { // 결과 성공 콜백함수
	       console.log(result); //list로 넘어옴
	       setTimeout(ajaxLoading(false), 3000);
	       drawTable(result);
	   },
	   error : function(request, status, error) { // 결과 에러 콜백함수
	       console.log(error)
	   },
	   beforeSend: function( xhr ) {
			//ajax가 서버에 요청하기 전에 실행하는 로직
		   ajaxLoading(true);
		},
	});
});


function drawTable(list) {
	let content = document.querySelector(".table-striped");
	content.innerHTML = "<tr>"
					  	+ "<th>"
						+ "제목"
						+ "</th>"

						+ "<th>"
						+ "이름"
						+ "</th>"
	
						+ "<th>"
						+ "내용"
						+ "</th>"
		
						+ "<th>"
						+ "날짜"
						+ "</th>"
						+ "</tr>";
						
	list.forEach(item => {
		content.innerHTML += '<tr>'
			+ "<td>"
			+ item.board_title
			+ "</td>"
			+ "<td>"
			+ item.board_writer
			+ "</td>"
			+ "<td>"
			+ item.board_contents
			+ "</td>"
			+ "<td>"
			+ item.board_write_date
			+ "</td>"
			+"</tr>";
	});
}
</script>
</html>