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
<<<<<<< HEAD
<link rel="stylesheet" href="resources/css/waitMe.css" />
<link rel="stylesheet" href="/resources/css/waitMe.min.css" />
<script src="/resources/js/waitMe.js"></script>
<script src="/resources/js/waitMe.min.js"></script>
</head>
<body>
	<div class="table-wrap">
		<table class="table table-striped">
			<tr>
				<th>����</th>
				<th>�̸�</th>
				<th>����</th>
				<th>��¥</th>
			</tr>
			<tr>
				<td>����1</td>
				<td>�̸�1</td>
				<td>����1</td>
				<td>��¥1</td>
			</tr>
			<tr>
				<td>����2</td>
				<td>�̸�2</td>
				<td>����2</td>
				<td>��¥2</td>
			</tr>
			<tr>
				<td>����3</td>
				<td>�̸�3</td>
				<td>����3</td>
				<td>��¥3</td>
			</tr>
		</table>
		
		<hr/>
		
		<button type="button" class="btn btn-primary btn-sm float-right">�۾���</button>
		
		<div class="page-wrapper">
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
	<div id="container"></div>
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
  #loading-container{
	  margin: 20px;
	  width: 200px;
	  height: 200px;
  }
  .table-wrap{
  	width: 90%;
  	margin:0 auto; 
  }
  </style>

=======
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
    $.ajax({url: "sample/", success: function(result){             
        var html = "";
    	result.forEach(function(item){
        	html+= "<tr> <td><a href = 'views?idx=" + item.board_writer_idx + "'>" + item.board_writer + "</a>"
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
 	<h1>ȸ������</h1>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="home">Ȩ</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="logout">�α׾ƿ�</a>
				</li>
			</ul>
		</div>  
	</nav>
	<div class="container" style="margin-top:30px">
		<div class="row">
			<div class="col-sm-12">
		      <!-- <h2>�Խ���</h2> -->
				<table id="example" class="display" style="width:100%">
			        <thead>
			            <tr>
			                <th>ID</th>
			                <th>PW</th>
			                <th>PHONE</th>
			                <th>EMAIL</th>
			            </tr>
			        </thead>
			        <tbody id = "listArea">
		                <c:forEach var="item" items="${MemberList}">
							<table>
								<tr>
									<td>${item.board_writer}</td>
									<td>${item.board_writer_pw}</td>
									<td>${item.board_writer_phone}</td>
									<td>${item.board_writer_email}</td>
								</tr>
							</table>
						</c:forEach>
			        </tbody>
			    </table>
			</div>
		</div>
	</div>
</div>
</body>
>>>>>>> 5d896c1e3b776aa19447256aa5b8a8a9ea8fc1d4
</html>