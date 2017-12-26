package com.wwcd.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wwcd.dao.AddressDao;
import com.wwcd.entity.Address;

@Service
public class AddressBiz {
	@Autowired
	private AddressDao addressDao;
	//添加地址
	public int add(Address address){
		return addressDao.add(address);
	}
	//删除地址
	public int delete(int aid){
		return addressDao.delete(aid);
	}
	//按Uid查询地址
	public List<Address> findByUid(int uid){
		return addressDao.findByUid(uid);
	}
	//设置默认地址
	public int modifyAdefault(int aid,int uid){
		addressDao.modifyAdefaultNO(uid);
		return addressDao.modifyAdefaultYES(aid);
	}
}
