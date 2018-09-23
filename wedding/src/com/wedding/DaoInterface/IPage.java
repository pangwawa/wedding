package com.wedding.DaoInterface;

import java.util.List;

import com.wedding.entity.Hotel;

public interface IPage {
	public <T> List<T> selectByPage(int pageNum,int pageSize);
	public int hotelCount();
}
