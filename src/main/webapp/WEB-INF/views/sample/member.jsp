<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- jstl ���̺귯�� �ҷ����� �ڵ� -->
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
<!--  	<h1>ȸ������</h1> -->
<!-- 	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> -->
<!-- 		<div class="collapse navbar-collapse" id="collapsibleNavbar"> -->
<!-- 			<ul class="navbar-nav"> -->
<!-- 				<li class="nav-item"> -->
<!-- 					<a class="nav-link" href="getBoard">Ȩ</a> -->
<!-- 				</li> -->
<!-- 				<li class="nav-item"> -->
<!-- 					<a class="nav-link" href="logout.do">�α׾ƿ�</a> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 		</div>   -->
<!-- 	</nav> -->
	<div class="container" style="margin-top:30px">
		<div class="row">
			<div class="col-sm-12">
		      <!-- <h2>�Խ���</h2> -->
		      <a href="excel/download">�����ٿ�ε�</a>
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

// �ε��� �Լ� ����
var ajaxLoading = function(isLoading){
	if (isLoading == false) {
 		$("body").waitMe("hide");
	} else {
		$("body").waitMe({
			effect: "ios",
			text: "ó�����Դϴ�.",
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
		   type : 'get',           // Ÿ�� (get, post, put ���)
		   url : '/getMember',           // ��û�� ����url
	// 	   headers : {              // Http header
	// 	     "Content-Type" : "application/json",
	// 	     "X-HTTP-Method-Override" : "POST"
	// 	   },
// 		   dataType : 'json',       // ������ Ÿ�� (html, xml, json, text ���)
	// 	   data : JSON.stringify({  // ���� ������ (Object , String, Array)
	// 	     "no" : no,
	// 	     "name" : name,
	// 	     "nick" : nick
	// 	   }),
		   success : function(result) { // ��� ���� �ݹ��Լ�
		       console.log(result); //list�� �Ѿ��
		       setTimeout(ajaxLoading(false), 3000);
		       drawTable(result);
		   },
		   error : function(request, status, error) { // ��� ���� �ݹ��Լ�
		       console.log(error)
		   },
		   beforeSend: function( xhr ) {
				//ajax�� ������ ��û�ϱ� ���� �����ϴ� ����
			   ajaxLoading(true);
			},
// 			complete: function (data) {
// 				//����, ���п� ������� �����ϰ� ���� ����
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