package com.wedding.serviceInterface;

import java.util.List;

import org.junit.validator.PublicClassValidator;

import com.wedding.entity.Hotel;

public interface HotelPageService {
	public List<Hotel> findHotelPage(int pageNum,int pageSize);
	public int getHotelCount();
}
