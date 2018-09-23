package com.wedding.DaoInterface;

import java.util.List;

import com.wedding.entity.Hotel;

public interface IHotel {
	public List<Hotel> findAllHotel();
	public void addHotel(Hotel hotel);	
	public Hotel findHotelById(int hotelId);
}
