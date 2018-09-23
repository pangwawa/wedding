package com.wedding.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import com.wedding.DaoInterface.DaoI;
import com.wedding.entity.User;
import com.wedding.impl.DaoImpl;
import com.wedding.serviceInterface.IService;
public class ServiceImpl implements IService {

	@Override
	public User login(String userTel, String password) {
		DaoImpl daoImpl=new DaoImpl();
		User user=daoImpl.selectUserByTel(userTel);
		if(user!=null&&user.getUser_password().equals(password))
			return user;
		else
			return null;
	}

	@Override
	public void register(User user) {
		DaoImpl daoImpl=new DaoImpl();
		daoImpl.addUser(user);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public User findUserById(int id) {		
		return null;
	}

	@Override
	public List<User> findAllUsers() {
		DaoImpl daoImpl=new DaoImpl();		
		return daoImpl.selectAllUsers();
	}

	@Override
	public User findUserByTel(String user_tel) {	
		DaoImpl daoImpl=new DaoImpl();
		return daoImpl.selectUserByTel(user_tel);
	}

}
