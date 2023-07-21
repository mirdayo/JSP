package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Test_Context_Attr")
public class C02Servlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, NullPointerException {
		
		PrintWriter out =  resp.getWriter();
		
		//add시 Listener동작확인
//		Integer CtxVal =  (Integer)req.getServletContext().getAttribute("CL_2");
//		CtxVal++;
//		req.getServletContext().setAttribute("CL_2", CtxVal);
//		out.print("CtxVal : " + CtxVal);
		
		//remove시 Listner동작확인
		req.getServletContext().removeAttribute("CL");
		
	}

}
