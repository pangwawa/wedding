package com.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.wedding.entity.Hotel;
import com.wedding.entity.User;
import com.wedding.impl.HotelImpl;
import com.wedding.serviceImpl.HotelPageServiceImpl;
import com.wedding.serviceImpl.ServiceImpl;

public class Test {

	@org.junit.Test
	public void test() throws SQLException {
		ComboPooledDataSource pooledDataSource=new ComboPooledDataSource();
		Connection connection= pooledDataSource.getConnection();
		System.out.println(connection);
	}
	@org.junit.Test
	public void test1(){
		//创建连接池
		ComboPooledDataSource pool = new ComboPooledDataSource();
		//创建SQL执行器
		QueryRunner runner = new QueryRunner(pool);
		try {
			//查询多条数据,参数1 SQL语句，参数2 处理器的参数是实体类的类型，参数3 是占位符参数
			List<User> users = (List<User>) runner.query("select * from tb_user", new BeanListHandler(User.class));
			for(User user : users){
				System.out.println("user--->"+user);
			}
			//查询单条数据
			User user = (User) runner.query("select * from tb_user where user_id=?", new BeanHandler(User.class),1);
			System.out.println("单条user--->"+user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@org.junit.Test
	public void test2(){
		ServiceImpl s=new ServiceImpl();
		User user=s.findUserByTel("222");
		System.out.println("查询"+user);
	}

}
