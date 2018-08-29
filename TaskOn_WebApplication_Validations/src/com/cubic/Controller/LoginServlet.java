package com.cubic.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession(true);
		session.setAttribute("errmsg", "Invalid User Name");
		session.setAttribute("errmsg1", "Invalid Password");	
		resp.sendRedirect("login.jsp");
		/*req.setAttribute("errmsg", "Invalid User Name");
		RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
				rd.forward(req, resp);*/
	}
}
