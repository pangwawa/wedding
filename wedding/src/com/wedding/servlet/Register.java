package com.wedding.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wedding.entity.User;
import com.wedding.serviceImpl.ServiceImpl;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Register() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String user_tel=request.getParameter("user_tel");
		String user_password=request.getParameter("password");
		String user_realname=request.getParameter("user_realname");
		String user_city=request.getParameter("user_city");		
		User user=new User();		
		user.setUser_tel(user_tel);
		user.setUser_password(user_password);
		user.setUser_realname(user_realname);
		user.setUser_city(user_city);
		ServiceImpl serviceImpl=new ServiceImpl();		
		String c1=request.getParameter("vcode");
		String c2=(String) request.getSession().getAttribute("code");
		if(c1==null||!c1.equals(c2)){
			request.setAttribute("codeMess", "ÑéÖ¤Âë´íÎó");
			request.getRequestDispatcher("register.jsp").forward(request, response);
			return;
		}
		serviceImpl.register(user);
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
