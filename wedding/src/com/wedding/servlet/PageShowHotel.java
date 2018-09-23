package com.wedding.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wedding.entity.Hotel;
import com.wedding.entity.HotelPageContent;
import com.wedding.serviceImpl.HotelPageServiceImpl;

/**
 * Servlet implementation class PageShowHotel
 */
@WebServlet("/pageShowHotel")
public class PageShowHotel extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public PageShowHotel() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HotelPageServiceImpl hotelPageServiceImpl=new HotelPageServiceImpl();
		HotelPageContent hotelPageContent=new HotelPageContent();
		int pageSize=10;
		int hotelCount=hotelPageServiceImpl.getHotelCount();
		int currentPage=Integer.valueOf(request.getParameter("currentPage"));
		List<Hotel> hotelList= hotelPageServiceImpl.findHotelPage(currentPage, pageSize);
		hotelPageContent.setHotelList(hotelList);
		hotelPageContent.setPageCurrent(currentPage);
		int pageTotal;
		if(hotelCount%pageSize==0)
			pageTotal=hotelCount/pageSize;
		else {
			pageTotal=hotelCount/pageSize+1;
		}
		hotelPageContent.setPageTotal(pageTotal);		
		request.getSession().setAttribute("hotelPageContent", hotelPageContent);
		//System.out.println(currentPage);
		request.getRequestDispatcher("hotel.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
