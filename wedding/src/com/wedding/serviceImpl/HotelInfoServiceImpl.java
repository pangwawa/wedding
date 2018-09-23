package com.wedding.serviceImpl;

import java.util.List;

import com.wedding.entity.HotelInfo;
import com.wedding.impl.HotelInfoDaoImpl;
import com.wedding.serviceInterface.IHotelInfoService;

public class HotelInfoServiceImpl implements IHotelInfoService {

	@Override
	public HotelInfo showHotelinfoById(int hotelid) {
		HotelInfoDaoImpl hotelInfoDaoImpl=new HotelInfoDaoImpl();
		return hotelInfoDaoImpl.findHotelInfoById(hotelid);
	}

}
