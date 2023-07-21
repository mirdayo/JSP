package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Type.Role;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGET LoginServlet ------");
		req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPOST LoginServlet ------");
		
		//요청과 응답의 인코딩을 UTF-8로 설정
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		
		String userid = req.getParameter("userid");
		String pwd = req.getParameter("pwd");
		
		System.out.println("userid : " + userid);
		System.out.println("pwd : " + pwd);
		
//		PrintWriter out = resp.getWriter();
//		out.print("USERID : " + userid);
//		out.print("PWD : " + pwd);
		
		//Role 부여(in Sessin) - 일반계정 : user / 관리자 계정 : admin
		HttpSession session = req.getSession();
		if(userid.equals("user")) {
			session.setAttribute("ROLE", Role.ROLE_USER);
		} else if(userid.equals("admin")) {
			session.setAttribute("ROLE", Role.ROLE_ADMIN);
		}
		
		//Redirect /main.do로 이동
		resp.sendRedirect(req.getContextPath() + "/main.do");
	}
	
}
