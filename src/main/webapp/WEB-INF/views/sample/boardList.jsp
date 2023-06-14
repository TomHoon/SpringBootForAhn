<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- jstl ���̺귯�� �ҷ����� �ڵ� -->
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
	<div class="table-wrap">
		<table class="table table-striped">
<!-- 			<tr> -->
<!-- 				<th>����</th> -->
<!-- 				<th>�̸�</th> -->
<!-- 				<th>����</th> -->
<!-- 				<th>��¥</th> -->
<!-- 			</tr> -->
<!-- 			<tr class="content"> -->
<!-- 				<td>����1</td> -->
<!-- 				<td>�̸�1</td> -->
<!-- 				<td>����1</td> -->
<!-- 				<td>��¥1</td> -->
<!-- 			</tr> -->
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
//�ε��� �Լ� ����
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

// ���� ���۵��ڸ��� ���� 
$( document ).ready(function() {
	$.ajax({
	   type : 'get',           // Ÿ�� (get, post, put ���)
	   url : '/restBoard',           // ��û�� ����url
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
	});
});


function drawTable(list) {
	let content = document.querySelector(".table-striped");
	content.innerHTML = "<tr>"
					  	+ "<th>"
						+ "����"
						+ "</th>"

						+ "<th>"
						+ "�̸�"
						+ "</th>"
	
						+ "<th>"
						+ "����"
						+ "</th>"
		
						+ "<th>"
						+ "��¥"
						+ "</th>"
						+ "</tr>";
						
	list.forEach(item => {
		content.innerHTML += '<tr>'
			+ "<td>"
			+ item.getBoard_title
			+ "</td>"
			+ "<td>"
			+ item.getBoard_writer
			+ "</td>"
			+ "<td>"
			+ item.getBoard_contents
			+ "</td>"
			+ "<td>"
			+ item.getBoard_write_date
			+ "</td>"
			+"</tr>";
	});
}
</script>
</html>