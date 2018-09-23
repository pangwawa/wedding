package com.wedding.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wedding.entity.Hotel;
import com.wedding.entity.HotelInfo;
import com.wedding.entity.HotelPackage;
import com.wedding.entity.HotelRoom;
import com.wedding.impl.HotelPackageDaoImpl;
import com.wedding.serviceImpl.HotelInfoServiceImpl;
import com.wedding.serviceImpl.HotelPageServiceImpl;
import com.wedding.serviceImpl.HotelServiceImpl;
import com.wedding.serviceImpl.RoomServiceImpl;

/**
 * Servlet implementation class HotelDetails
 */
@WebServlet("/hotelDetails")
public class HotelDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HotelDetails() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int hotelid=Integer.valueOf(request.getParameter("hotelId"));
		HotelServiceImpl hotelServiceImpl=new HotelServiceImpl();
		Hotel hotel=hotelServiceImpl.findHotelById(hotelid);
		HotelInfoServiceImpl hotelInfoServiceImpl=new HotelInfoServiceImpl();
		HotelInfo hotelInfo=hotelInfoServiceImpl.showHotelinfoById(hotelid);
		RoomServiceImpl roomServiceImpl=new RoomServiceImpl();
		HotelRoom hotelRoom=roomServiceImpl.showRoomById(hotelid);
		HotelPackageDaoImpl hotelPackageDaoImpl=new HotelPackageDaoImpl();
		HotelPackage hotelPackage=hotelPackageDaoImpl.findHotelPackageById(hotelid);
		request.getSession().setAttribute("hotel", hotel);
		request.getSession().setAttribute("hotelInfo", hotelInfo);
		request.getSession().setAttribute("hotelRoom", hotelRoom);
		request.getSession().setAttribute("hotelPackage", hotelPackage);
		request.getRequestDispatcher("hotelDetails.jsp").forward(request, response);
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
