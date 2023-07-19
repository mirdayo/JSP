<%@page import="java.io.FileInputStream"%>
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
	//Download Path 확인
	String realPath = pageContext.getServletContext().getRealPath("/") + "C05내장객체\\download";
	System.out.println("RealPath : " + realPath);
	try {
		//InputStream
		FileInputStream fin = new FileInputStream(realPath+"\\Text1.txt");
		
		//[오류해결] 이 응답을 위해 getOutputStream()이 이미 호출되었습니다.
		out.clear();					//response outstream을 닫고 버퍼를 비움
		out = pageContext.pushBody();	//현재 페이지 body 연결
		
		//OutputStream
		ServletOutputStream bout = response.getOutputStream();
		
		//Response 전달 파일타입 변경
		response.setHeader("Content-Type", "application/octet-stream;charset=utf-8");
		response.setHeader("Content-Disposition", "attachment; filename=Text1.txt");
		
		while(true) {
			int data = fin.read();
			if(data == -1)
				break;
			bout.write((byte)data);
			bout.flush();
		}
		bout.close();
		bout.flush();
		
	} catch(Exception e){
		e.printStackTrace();
	}
%>

</body>
</html>