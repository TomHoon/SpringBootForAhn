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
<link rel="stylesheet" href="resources/css/waitMe.css" />
<link rel="stylesheet" href="/resources/css/waitMe.min.css" />
<script src="/resources/js/waitMe.js"></script>
<script src="/resources/js/waitMe.min.js"></script>
</head>
<body>
	<div class="jumbotron text-center" style="margin-bottom:0">
	<div id="container"></div>
<!--  	<h1>회원정보</h1> -->
<!-- 	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> -->
<!-- 		<div class="collapse navbar-collapse" id="collapsibleNavbar"> -->
<!-- 			<ul class="navbar-nav"> -->
<!-- 				<li class="nav-item"> -->
<!-- 					<a class="nav-link" href="getBoard">홈</a> -->
<!-- 				</li> -->
<!-- 				<li class="nav-item"> -->
<!-- 					<a class="nav-link" href="logout.do">로그아웃</a> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 		</div>   -->
<!-- 	</nav> -->
	<div class="container" style="margin-top:30px">
		<div class="row">
			<div class="col-sm-12">
		      <!-- <h2>게시판</h2> -->
		      <a href="excel/download">엑셀다운로드</a>
				<table id="example" class="display" style="width:100%">
			        <thead>
			            <tr>
			                <th>ID</th>
			                <th>NAME</th>
			                <th>PHONE</th>
			                <th>EMAIL</th>
			            </tr>
			        </thead>
			        <tbody id="listArea">
			        	
			        </tbody>
			    </table>
			</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">

// 로딩바 함수 생성
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

$( document ).ready(function() {
	bringMember();
});

// 	 ajaxLoading(true);
// 	 setTimeout(ajaxLoading(false), 2000);
	function bringMember() {
		$.ajax({
		   type : 'get',           // 타입 (get, post, put 등등)
		   url : '/getMember',           // 요청할 서버url
	// 	   headers : {              // Http header
	// 	     "Content-Type" : "application/json",
	// 	     "X-HTTP-Method-Override" : "POST"
	// 	   },
// 		   dataType : 'json',       // 데이터 타입 (html, xml, json, text 등등)
	// 	   data : JSON.stringify({  // 보낼 데이터 (Object , String, Array)
	// 	     "no" : no,
	// 	     "name" : name,
	// 	     "nick" : nick
	// 	   }),
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
// 			complete: function (data) {
// 				//성공, 실패와 상관없이 실행하고 싶은 로직
// 			}
		})
	}
	
	function drawTable(memberList) {
		console.log(memberList[0].board_writer);
		
		let target = document.querySelector("#listArea");
		
		target.innerHTML = '<table>'
		memberList.forEach(member => {
			target.innerHTML += '<tr>'
							  + '<td>' + member.board_writer + '</td>'
							  + '<td>' + member.board_writer_name + '</td>'
							  + '<td>' + member.board_writer_phone + '</td>'
							  + '<td>' + member.board_writer_email + '</td>'
							  + '</tr>'
		});
		target.innerHTML += '</table>'
	}
</script>


 <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  #container {
	  margin: 20px;
	  width: 200px;
	  height: 200px;
  }
  </style>

</html>