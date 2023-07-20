<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>JOIN PAGE</h1>

<form action= <c:url value="/join.do"/> method="post">
	<input type="text" name="email" placeholder="이메일 입력" /><br>
	<input type="password" name="pwd" placeholder="패스워드 입력" /><br>
	<input type="submit" value="전송">
</form>

</body>
</html>