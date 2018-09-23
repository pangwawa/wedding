package com.wedding.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wedding.entity.Hotel;
import com.wedding.serviceImpl.HotelServiceImpl;

/**
 * Servlet implementation class ShowHotel
 */
@WebServlet("/showHotel")
public class ShowHotel extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ShowHotel() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HotelServiceImpl hotelServiceImpl=new HotelServiceImpl();
		List<Hotel> hotelList=hotelServiceImpl.showHotel();
		request.getSession().setAttribute("hotelList", hotelList);
		request.getRequestDispatcher("hotel.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
