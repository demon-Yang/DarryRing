package com.wwcd.view;

import java.io.Serializable;

import com.wwcd.entity.Goods;

public class GoodsView implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Goods goods;
	private int gsales;
	public GoodsView() {
		super();
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public int getGsales() {
		return gsales;
	}
	public void setGsales(int gsales) {
		this.gsales = gsales;
	}
}
