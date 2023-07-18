<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <!-- 
 	선언문
 	JSP -> Servlet파일(Java)로 변환될때 속성/Method를 구성하는데 사용
 	서블릿파일 위치 확인
 	C:\임베디드웹과정임시공유폴더\eclipse_Jsp_Servlet\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\01JSP\org\apache\jsp\C01선언문표현스클립틀릿
  -->
  <%! 
  	//변수추가
  	String name="Hong gil Dong";
  	//함수추가
  	public String testFunc(){
  		System.out.println("선언문 TEST");
  		return name;
  	}
  %>
  
  <%=name %><br/>
  <%=testFunc() %><br/>

</body>
</html>