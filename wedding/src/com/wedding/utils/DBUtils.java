package com.wedding.utils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.wedding.entity.User;

public class DBUtils {
	public static ComboPooledDataSource pooledDataSource;
	public static QueryRunner runner ;
	static{
		pooledDataSource=new ComboPooledDataSource();
		runner = new QueryRunner(pooledDataSource);
	}
	public static int update(String sql,Object... args){
		try {
			return runner.update(sql, args);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public static <T> List<T> queryList(Class clazz,String sql,Object... params){
		try {
			return (List<T>) runner.query(sql, new BeanListHandler<>(clazz),params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static <T> T query(Class clazz,String sql,Object... params){
		try {
			return (T) runner.query(sql, new BeanHandler<>(clazz),params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static int queryCount(String sql,Object... params){
		try {
			return runner.query(sql,
					new ResultSetHandler<Integer>(){
						@Override
						public Integer handle(ResultSet rs) throws SQLException {
							//指定查询结果集中的数据
							rs.first();
							return rs.getInt(1);
						}
					}
			, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
}
