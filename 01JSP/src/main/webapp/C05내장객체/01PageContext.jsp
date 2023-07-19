<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		System.out.println("pageContext : " + pageContext);
		System.out.println("pageContext : " + pageContext.getRequest());
		System.out.println("pageContext : " + pageContext.getSession());
		System.out.println("pageContext : " + pageContext.getServletContext());
		System.out.println("pageContext : " + pageContext.getServletContext().getContextPath());
	%>
</body>
</html>