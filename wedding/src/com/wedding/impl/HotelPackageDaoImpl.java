package com.wedding.impl;

import com.wedding.DaoInterface.IHotelPackageDao;
import com.wedding.entity.HotelPackage;
import com.wedding.utils.DBUtils;

public class HotelPackageDaoImpl implements IHotelPackageDao{

	@Override
	public HotelPackage findHotelPackageById(int hotelId) {
		return DBUtils.query(HotelPackage.class, "select * from tb_package where hotel_id=?", hotelId);
	}

	@Override
	public void addHotelPackage() {
		// TODO Auto-generated method stub
		
	}

}
