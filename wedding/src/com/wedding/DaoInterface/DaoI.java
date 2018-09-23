package com.wedding.DaoInterface;

import java.util.List;

import com.wedding.entity.User;

public interface DaoI {
	/**
	 * 添加用户
	 * @param user
	 */
	void addUser(User user);
	/**
	 * 更新用户，以user_id为条件，更新其它字段
	 * @param user
	 */
	void updateUser(User user);
	/**
	 * 删除用户
	 * @param user_id
	 */
	void deleteUser(int user_id);
	/**
	 * 查询所有用户
	 * @return
	 */
	List<User> selectAllUsers();
	/**
	 * 通过id查询用户
	 * @param user_id
	 * @return
	 */
	User selectUserById(int user_id);
	/**
	 * 通过电话查询用户
	 * @param user_tel
	 * @return
	 */
	User selectUserByTel(String user_tel);
}
