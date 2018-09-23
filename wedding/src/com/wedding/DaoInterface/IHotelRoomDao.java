package com.wedding.DaoInterface;

import java.util.List;

import com.wedding.entity.HotelRoom;

public interface IHotelRoomDao {
  public List<HotelRoom> findHotelRoomById(int id);
  public void addHotelRoom();
}
