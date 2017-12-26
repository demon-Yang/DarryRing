package com.wwcd.view;

import java.io.Serializable;
import java.util.List;

import com.wwcd.entity.Address;
import com.wwcd.entity.Goods;
import com.wwcd.entity.Order;
import com.wwcd.entity.User;

public class OrderView implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int oid;
	private Order order;
	private User user;
	private Address address;
	private List<Goods> gList;
	private int dnum;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public OrderView() {
		super();
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public List<Goods> getgList() {
		return gList;
	}
	public void setgList(List<Goods> gList) {
		this.gList = gList;
	}
	public int getDnum() {
		return dnum;
	}
	public void setDnum(int dnum) {
		this.dnum = dnum;
	}
}
