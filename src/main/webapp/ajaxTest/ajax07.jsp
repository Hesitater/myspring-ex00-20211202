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
$(document).ready(function() {
	const appRoot = "${pageContext.request.contextPath}";
	
	$("#btn01").click(function() {
		$.ajax({
			url : appRoot + "/cont16/met08",
			success : function(data) {
				//$("#result01").html(data[0].nickName);
			let ulElem = $("<ul />");	
			
			for(let i = 0; i < data.length; i++) {
				let listItem = `<li>\${data[i].nickName}</li>`;
				ulElem.append(listItem);
			}
				
			$("#result01").html(ulElem);
			
			
			}
		});
	});
	
	
	$("#btn02").click(function() {
		$.ajax({
			url : appRoot + "/cont16/met07",
			success : function(data) {
	//			$("#result02").html(data[0].id + ' : ' +data[0].title);
	//			console.log(data[0].id + " : " + data[0].title);
			let ulElem =$("<ul />");	
			for(let i = 0; i < data.length; i++) {
				console.log(data[i].id + ' : ' +data[i].title);

//				let listItem = `<li>\${data[i].id} : \${data[i].title}</li>`;
//				ulElem.append(listItem);				
				
				let listItemContent = `\${data[i].id} : \${data[i].title}`;
				let listItem = $("<li></li >").text(listItemContent);
				ulElem.append(listItem);
			}
				$("#result02").html(ulElem);
			}
		});
	});
	
	$("#btn03").click(function() {
		$.ajax({
			url : appRoot + "/cont16/met07",
			success : function(data) {
				let ulElem =$("<ul />");
				for (let i = 0; i < data.length; i++) {
					let listItem = `<li>\${data[i].id} : \${data[i].title}<li />`
					ulElem.append(listItem);				
				}
				$("#result03").html(ulElem);
			}
		});
	});
	
});

</script>
</head>
<body>
<button id="btn03">/cont16/met07 요청 3개의 Board 응답 받은 data를 HTML 출력 스크립 먹힘</button>
<div class="" id="result03"></div>

<hr>

<button id="btn02">/cont16/met07 요청 3개의 Board 응답 받은 data를 HTML 출력</button>
<div class="" id="result02"></div>

<!--  
	<ul>
		<li> 2035 : sql,spring help me</li>
		<li>2034 : 안녕하세요~</li>
		<li>2033 : 시간체크용</li>
	</ul>
-->

<hr>

<button id="btn01">/cont16/met08 요청 3개의 Member 응답 받은 것을 HTML에 출력 (ul>li*3)</button>
<div class="" id="result01"></div>
<hr>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>
</html>













