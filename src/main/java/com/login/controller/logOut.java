package com.login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logOut")
public class logOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public logOut() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		HttpSession session = request.getSession(false);
	session.setMaxInactiveInterval(30);
	session.invalidate();
	RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/logOut.jsp");
	rd.forward(request, response);
	}catch(Exception e) {
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		try {
//			HttpSession session = request.getSession(false);
//		session.setMaxInactiveInterval(30);
//		session.invalidate();
//		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/logOut.jsp");
//		rd.forward(request, response);
//		}catch(Exception e) {
//			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
//			rd.forward(request, response);
//		}
		//it would work properly when you give the logout link in form and give action this servlet and method post
	
	}

}
