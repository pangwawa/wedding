package com.wedding.DaoInterface;

import java.util.List;

import com.wedding.entity.HotelPackage;

public interface IHotelPackageDao {
	public HotelPackage findHotelPackageById(int hotelId);
	public void addHotelPackage();
}
