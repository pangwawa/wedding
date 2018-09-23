package com.wedding.impl;

import java.util.List;

import com.wedding.DaoInterface.IPage;
import com.wedding.entity.Hotel;
import com.wedding.utils.DBUtils;

public class HotelPage implements IPage{

	@Override
	public List<Hotel> selectByPage(int pageNum, int pageSize) {
		List<Hotel> hotels=DBUtils.queryList(Hotel.class, "select * from tb_hotel limit ?,?",( pageNum-1)*pageSize,pageSize);
		return hotels;
	}

	@Override
	public int hotelCount() {		
		return DBUtils.queryCount("select count(*) from tb_hotel");
	}

}
