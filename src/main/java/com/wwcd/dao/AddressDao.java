package com.wwcd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wwcd.entity.Address;

@Repository
public interface AddressDao {
	//添加地址
	public int add(Address address);
	//删除地址
	public int delete(@Param("aid")int aid);
	//按Uid查询地址
	public List<Address> findByUid(@Param("uid")int uid);
	//设置默认地址
	public int modifyAdefaultNO(@Param("uid")int uid);
	//设置默认地址
	public int modifyAdefaultYES(@Param("aid")int aid);
}
