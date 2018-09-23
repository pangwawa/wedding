package com.wedding.impl;

import java.util.List;

import com.wedding.DaoInterface.IHotel;
import com.wedding.entity.Hotel;
import com.wedding.utils.DBUtils;

public class HotelImpl implements IHotel{

	@Override
	public List<Hotel> findAllHotel() {		
		return DBUtils.queryList(Hotel.class, "select * from tb_hotel");
	}

	@Override
	public void addHotel(Hotel hotel) {		
		DBUtils.update("insert into tb_hotel(hotel_name,hotel_tel,hotel_star,hotel_img) values(?,?,?,?)",hotel.getHotel_name(),hotel.getHotel_tel(),hotel.getHotel_star(),hotel.getHotel_img());
	}

	@Override
	public Hotel findHotelById(int hotelId) {		
		return DBUtils.query(Hotel.class, "select * from tb_hotel where hotel_id=?", hotelId);
	}

}
