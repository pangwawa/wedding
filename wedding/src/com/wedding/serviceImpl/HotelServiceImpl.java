package com.wedding.serviceImpl;

import java.util.List;

import com.wedding.entity.Hotel;
import com.wedding.impl.HotelImpl;
import com.wedding.serviceInterface.HotelServiceInterface;

public class HotelServiceImpl implements HotelServiceInterface{

	@Override
	public List<Hotel> showHotel() {
		HotelImpl hotelImpl=new HotelImpl();
		return hotelImpl.findAllHotel();
	}

	@Override
	public Hotel findHotelById(int hotelId) {
		HotelImpl hotelImpl=new HotelImpl();
		return hotelImpl.findHotelById(hotelId);
	}

}
