package com.wedding.impl;

import java.util.List;

import com.wedding.DaoInterface.IRoomDao;
import com.wedding.entity.HotelRoom;
import com.wedding.utils.DBUtils;

public class RoomDaoImpl implements IRoomDao {

	@Override
	public HotelRoom findRoomById(int hotelId) {
		return DBUtils.query(HotelRoom.class, "select * from tb_room where hotel_id=?", hotelId);
	}

}
