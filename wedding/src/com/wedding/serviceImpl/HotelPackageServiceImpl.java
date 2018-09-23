package com.wedding.serviceImpl;

import com.wedding.entity.HotelPackage;
import com.wedding.impl.HotelPackageDaoImpl;
import com.wedding.serviceInterface.IHotelPackageService;

public class HotelPackageServiceImpl implements IHotelPackageService{

	@Override
	public HotelPackage findHotelPackageById(int hotelId) {
		HotelPackageDaoImpl hotelPackageDaoImpl=new HotelPackageDaoImpl();
		return hotelPackageDaoImpl.findHotelPackageById(hotelId);
	}
	
}
