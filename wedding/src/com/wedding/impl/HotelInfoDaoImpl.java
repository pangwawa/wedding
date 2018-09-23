package com.wedding.impl;

import java.util.List;

import com.sun.xml.internal.bind.v2.model.core.ID;
import com.wedding.DaoInterface.IHotelInfoDao;
import com.wedding.entity.HotelInfo;
import com.wedding.utils.DBUtils;

public class HotelInfoDaoImpl implements IHotelInfoDao {

	public void addHotelInfo(HotelInfo hotelInfo) {
		
		DBUtils.update("insert into tb_hotelinfo (hotel_id,info_star_level,info_decorate_time,info_subscription,info_service_fee,info_enter_fee,info_dressing_room,info_bus,info_microphone,info_projector,info_tablecloth,info_electric_charge,info_amusement,info_coordinatesA,info_coordinatesB) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ",
				hotelInfo.getHotel_id(),hotelInfo.getInfo_star_level(),hotelInfo.getInfo_decorate_time(),hotelInfo.getInfo_subscription(),hotelInfo.getInfo_service_fee(),hotelInfo.getInfo_enter_fee(),hotelInfo.getInfo_dressing_room(),hotelInfo.getInfo_bus(),hotelInfo.getInfo_microphone(),hotelInfo.getInfo_projector(),hotelInfo.getInfo_tablecloth(),hotelInfo.getInfo_electric_charge(),hotelInfo.getInfo_amusement(),hotelInfo.getInfo_coordinatesA(),hotelInfo.getInfo_coordinatesB());
	}

	@Override
	public HotelInfo findHotelInfoById(int id) {
		
		return DBUtils.query(HotelInfo.class, "select * from tb_hotelinfo where hotel_id=?", id);
	}

	

}
