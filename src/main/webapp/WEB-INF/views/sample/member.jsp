<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

<script type="text/javascript">
$(document).ready(function(){
	 
    $("#saveButton").click(function(){
 
        var params = "userId=" +$("#board_writer_idx").val() +
                    "&userPwd=" +$("#board_writer_pw").val();
 
        $.ajax({
 
            type:"POST",
            url:"member.jsp",
            data:params,
            success:function(args){
                $("#resultDIV").html(args);
            },
            beforeSend:showRequest,
 
            error:function(e){
 
                alert(e.responseText);//텍스트로 받음
 
            }
 
        });
 
    });
</script>
