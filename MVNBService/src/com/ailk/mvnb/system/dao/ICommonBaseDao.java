package com.ailk.mvnb.system.dao;

import java.util.List;

public interface ICommonBaseDao<T> {
	public List<T> queryPoJoList(String sqlId);
	public List<T> queryPoJoList(String sqlId, Object objects);
	public T queryPoJo(String sqlId,Object objects);
	public int insertPoJo(String sqlId,Object objects);
	
}
