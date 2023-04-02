package com.login.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.student.model.DAOServiceImpl;
import com.student.model.DAOServices;
@WebServlet("/login")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public loginController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String email = request.getParameter("email");
	String password = request.getParameter("password");
		DAOServices dao=new DAOServiceImpl();
	dao.connectionDB();
	boolean status = dao.verifyCredentials(email, password);
	if(status==true) {
		HttpSession session = request.getSession(true);
		session.setAttribute("email",email);
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/saveRegistration.jsp");
		rd.forward(request, response);
	
	}else {
		request.setAttribute("status", "X Invalid Username&Password");
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}

	}
}
