<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<title>Insert title here</title>
<script>
const appRoot = "${pageContext.request.contextPath}";

$(document).ready(function() {
	$("#btn01").click(function() {
		$.ajax({
			url : appRoot + "/cont14/met01",
			data : {
				name : "donald"
				
			}
		});
	});
	
	$("#btn02").click(function() {
		$.ajax({
			url : appRoot + "/cont14/met02",
			success : function() {
				console.log("/cont14/met02 요청 성공");
			},
			error : function() {
				alert("/cont14/met02 요청 실패")
			},
			complete : function() {
				console.log("/cont14/met02  버튼 눌렀꾸우나");
			},
			data : {
				name : "ana",
				city : "seoul"
				
			}
		});
	});
	
	$("#btn03").click(function() {
		$.ajax({
			url : appRoot + "/cont14/met03",
			data : {
				city : "busan",
				name : "trump"
			},
			complete : function() {
				console.log("/cont14.met03 버튼 누름");
			}
		});
	});
	
	$("#btn04").click(function() {
		const val =$("#input04").val();
		
		$.ajax({
			url : appRoot + "/cont14/met04",
			data : {
				data1 : val
			}
		});
	});
	
	$("#btn05").click(function() {
		const name = $("#input05").val();
		const address = $("#input06").val();
		
		$.ajax({
			url : appRoot + "/cont14/met05",
			data : {
				name : name,
				address : address
			},
			complete : function() {
				console.log("#btn05 버튼 클릭");
			}
		});
	});
	
});

</script>



</head>
<body>

<input type="text" placeholder="name" id="input05">
<input type="text" placeholder="address" id="input06">
<button id="btn05">/cont14/met05 ajax요청 : 
위 2개의 인풋 요소의 값이 전송 되도록 AND server에서는 두 값을 출력
</button>

<hr>

<input type="text" id="input04"><br>
<button id="btn04">/cont14/met04 요청 : input 요소에 입력된값 보내기</button><br>

<hr>

<button id="btn01">/cont14/met01요청</button> <br>
<hr>
<button id="btn02">
/cont14/met02 ajax요청 "city" request parameter 서버로 전송 
AND 서버에서는 "city" request parameter의 값을 sysout으로 출력
</button> <br>
<hr>
<button id="btn03">
/cont14/met03 ajax요청 
</button>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>
















