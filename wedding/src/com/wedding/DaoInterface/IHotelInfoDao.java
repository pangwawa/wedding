package com.wedding.DaoInterface;

import java.util.List;

import com.wedding.entity.HotelInfo;

public interface IHotelInfoDao {
	public HotelInfo findHotelInfoById(int id);
	public void addHotelInfo(HotelInfo hotelInfo);
}
