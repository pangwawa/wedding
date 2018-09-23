package com.wedding.serviceInterface;

import java.util.List;

import org.junit.validator.PublicClassValidator;

import com.wedding.entity.Hotel;

public interface HotelServiceInterface {
	public List<Hotel> showHotel();
	public Hotel findHotelById(int hotelId);
}
