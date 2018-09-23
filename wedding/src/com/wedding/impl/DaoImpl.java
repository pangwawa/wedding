package com.wedding.impl;

import java.util.List;

import com.wedding.DaoInterface.DaoI;
import com.wedding.entity.User;
import com.wedding.utils.DBUtils;

public class DaoImpl implements DaoI{

	@Override
	public void addUser(User user) {
		DBUtils.update("insert into tb_user(user_tel,user_password,user_realname,user_city) values(?,?,?,?)", user.getUser_tel(),user.getUser_password(),user.getUser_realname(),user.getUser_city());		
	}

	@Override
	public void updateUser(User user) {
		DBUtils.update("update tb_user set user_img=?,user_nickname=?,user_sex=?,user_city=?,user_IDcard=?,user_add=?,user_postcode=?,user_QQ=?,user_tel=?,user_password=?,user_realname=? where user_id=? ", user.getUser_img(),user.getUser_nickname(),user.getUser_sex(),
				user.getUser_city(),user.getUser_IDcard(),user.getUser_add(),
				user.getUser_postcode(),user.getUser_QQ(),user.getUser_tel(),
				user.getUser_password(),user.getUser_realname(),user.getUser_id());
	}

	@Override
	public void deleteUser(int user_id) {
		DBUtils.update("delete from tb_user where user_id=?", user_id);
	}

	@Override
	public List<User> selectAllUsers() {
		return DBUtils.queryList(User.class, "select * from tb_user");		
	}

	@Override
	public User selectUserById(int user_id) {
		return DBUtils.query(User.class, "select * from tb_user where user_id=?", user_id);
	}

	@Override
	public User selectUserByTel(String user_tel) {
		return DBUtils.query(User.class, "select * from tb_user where user_tel=?", user_tel);		
	}

}
