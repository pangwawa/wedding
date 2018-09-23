package com.wedding.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wedding.entity.User;
import com.wedding.impl.DaoImpl;
import com.wedding.serviceImpl.ServiceImpl;

/**
 * Servlet implementation class Login
 */
/*@WebServlet("/Login")*/
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Login() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String c1=request.getParameter("vcode");
		String c2=(String) request.getSession().getAttribute("code");
		String user_tel=request.getParameter("user_tel");
		String password=request.getParameter("password");
		/*response.getWriter().append(user_tel+password);*/
		ServiceImpl serviceImpl=new ServiceImpl();
		User user=serviceImpl.login(user_tel, password);
		if(c1==null||!c1.equals(c2)){
			request.setAttribute("codeMess", "—È÷§¬Î¥ÌŒÛ");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		if(user!=null)
			request.getRequestDispatcher("index.jsp").forward(request, response);
		else{
			request.setAttribute("errorMess", "’À∫≈ªÚ√‹¬Î¥ÌŒÛ");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
