package com.wedding.serviceImpl;

import java.util.List;

import com.wedding.entity.HotelRoom;
import com.wedding.impl.RoomDaoImpl;
import com.wedding.serviceInterface.IRoomService;

public class RoomServiceImpl implements IRoomService{

	@Override
	public HotelRoom showRoomById(int hotelId) {
		RoomDaoImpl roomDaoImpl=new RoomDaoImpl();
		return roomDaoImpl.findRoomById(hotelId);
	}

}
