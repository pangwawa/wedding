package com.wedding.serviceImpl;

import java.util.List;

import com.wedding.entity.Hotel;
import com.wedding.impl.HotelPage;
import com.wedding.serviceInterface.HotelPageService;
import com.wedding.serviceInterface.HotelServiceInterface;

public class HotelPageServiceImpl implements HotelPageService {

	@Override
	public List<Hotel> findHotelPage(int pageNum, int pageSize) {
		HotelPage hotelPage=new HotelPage();
		return hotelPage.selectByPage(pageNum, pageSize);
	}

	@Override
	public int getHotelCount() {
		HotelPage hotelPage=new HotelPage();
		return hotelPage.hotelCount();
	}			
}
