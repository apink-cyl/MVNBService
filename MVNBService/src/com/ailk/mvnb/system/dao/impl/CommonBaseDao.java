package com.ailk.mvnb.system.dao.impl;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.ailk.mvnb.system.dao.ICommonBaseDao;


public class CommonBaseDao<T> extends SqlSessionDaoSupport implements ICommonBaseDao<T> {
	
	public List<T> queryPoJoList(String sqlId, Object objects){
		return this.getSqlSession().selectList(sqlId, objects);
	}

	public T queryPoJo(String sqlId, Object objects) {
		return this.getSqlSession().selectOne(sqlId, objects);
	}

	public List<T> queryPoJoList(String sqlId) {
		return this.getSqlSession().selectList(sqlId);
	}

	public int insertPoJo(String sqlId, Object objects) {
		return this.getSqlSession().insert(sqlId,objects);
	}
	
}
