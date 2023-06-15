<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 라이브러리 불러오는 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hi.com.board</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
<link rel="stylesheet" href="resources/css/waitMe.css" />
<link rel="stylesheet" href="/resources/css/waitMe.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="/resources/js/waitMe.js"></script>
<script src="/resources/js/waitMe.min.js"></script>

</head>

<body>
	<div class="jumbotron text-center" style="margin-bottom:0">
		<div class="row">
			<div class="col-sm-12">
		      <!-- <h2>게시판</h2> -->
		      <a href="excel/download">엑셀다운로드</a>
				<table id="example" class="display" style="width:100%">
			        <thead>
			            <tr>
			                <th>제목</th>
			                <th>내용</th>
			                <th>작성자</th>
			                <th>작성일</th>
			                <th>조회수</th>
			            </tr>
			        </thead>
			        <tbody id="listArea">
			        </tbody>
			    </table>
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
	bringBoard();
});
 
// 	 ajaxLoading(true);
// 	 setTimeout(ajaxLoading(false), 2000);
	function bringBoard() {
		$.ajax({
		   type : 'get',           // 타입 (get, post, put 등등)
		   url : '/boardList',           // 요청할 서버url
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
	
	function drawTable(boardList) {
		console.log(boardList[0].board_writer);
		
		let target = document.querySelector("#listArea");
		
		target.innerHTML = '<table>'
		boardList.forEach(board => {
			target.innerHTML += '<tr>'
							  + '<td>' + board.board_title + '</td>'
							  + '<td>' + board.board_contents + '</td>'
							  + '<td>' + board.board_writer + '</td>'
							  + '<td>' + board.board_write_date + '</td>'
							  + '<td>' + board.board_view_count + '</td>'
							  + '</tr>'
		});
		target.innerHTML += '</table>'
	}
</script>
					<!-- <button type="button" class="btn btn-primary" id = "writeBtn">글쓰기</button> -->

</html>