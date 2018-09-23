package com.wedding.DaoInterface;

import java.util.List;

import com.wedding.entity.HotelRoom;

public interface IRoomDao {
	public HotelRoom findRoomById(int hotelId);
}
