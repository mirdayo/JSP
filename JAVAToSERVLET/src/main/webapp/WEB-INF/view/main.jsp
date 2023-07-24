<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>MAIN</h1>
Account : ${ID} <br/>
Role : ${ROLE} <br/>

<!-- 도서 조회하기 -->
<hr>
<div>
	<div class="search_block">
		<input placeholder="keyfield" />
		<input placeholder="keyword" />
		<button class=search_btn>조회</button>
	</div>
	<div class="show_block" style="width:500px;height:500px;border:1px solid;"></div>
</div>

<hr>

<!-- 사서 메뉴로 이동하기 -->
<!-- 회원 메뉴로 이동하기 -->


<hr/>
<c:if test="${empty ROLE}">
	<a href=<c:url value="/login.do" /> >LOGIN</a></br>
</c:if>
<c:if test="${not empty ROLE}">
	<a href=<c:url value="/logout.do" /> >LOGOUT</a></br>
</c:if>

<hr/>
<div class=msg>
${msg}
</div>

EL's Project PATH : ${pageContext.request.contextPath}<br/>

<!-- axios cdn -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.4.0/axios.min.js" integrity="sha512-uMtXmF28A2Ab/JJO2t/vYhlaa/3ahUOgj1Zf27M5rOo8/+fcTUVH0/E0ll68njmjrLqOBjXM3V9NiPFL5ywWPQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script>
	const search_btn_el=document.querySelector('.search_btn');
	search_btn_el.addEventListener('click',function(){
		const projectPath='${pageContext.request.contextPath}';
		console.log("search_btn_el click..",projectPath);
		
		//ajax , fetch , promise , axios 선택해서 비동기 요청
		//axios Cdn 연결이후에 작업하세요(https://cdnjs.com/libraries/axios)
		
		axios.get("http://localhost:8080"+ projectPath +"/book/search.do")
		.then(response=>{ 
			console.log("success!",response.data);  
			
		})	//성공시 처리로직
		.catch(error=>{ console.log("fail.."); })			//실패시 처리로직
	})
</script>

</body>
</html>