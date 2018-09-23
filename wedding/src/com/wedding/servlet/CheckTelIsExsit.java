package com.wedding.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wedding.entity.User;
import com.wedding.serviceImpl.ServiceImpl;

@WebServlet("/checkTelIsExit")
public class CheckTelIsExsit extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
		String user_tel= req.getParameter("user_tel");
		ServiceImpl serviceImpl=new ServiceImpl();
		User user=serviceImpl.findUserByTel(user_tel);
		if(user==null)
		{
			resp.getWriter().print("该手机号可以使用");			
		}else{
			resp.getWriter().print("该手机号已被注册");
			req.getSession().setAttribute("telIsExsit", "true");
		}
	}
}
