package com.wwcd.entity;

import java.io.Serializable;

public class Goods implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int gid;
	private String gname;
	private double gprice;
	private String gseries;
	private String gtype;
	private String gweight;
	private String gsize;
	private int gnum;
	private String gbrief;
	private String gimg1;
	private String gimg2;
	private String gimg3;
	private String gimg4;
	public Goods() {
		super();
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public double getGprice() {
		return gprice;
	}
	public void setGprice(double gprice) {
		this.gprice = gprice;
	}
	public String getGseries() {
		return gseries;
	}
	public void setGseries(String gseries) {
		this.gseries = gseries;
	}
	public String getGtype() {
		return gtype;
	}
	public void setGtype(String gtype) {
		this.gtype = gtype;
	}
	public String getGweight() {
		return gweight;
	}
	public void setGweight(String gweight) {
		this.gweight = gweight;
	}
	public String getGsize() {
		return gsize;
	}
	public void setGsize(String gsize) {
		this.gsize = gsize;
	}
	public int getGnum() {
		return gnum;
	}
	public void setGnum(int gnum) {
		this.gnum = gnum;
	}
	public String getGbrief() {
		return gbrief;
	}
	public void setGbrief(String gbrief) {
		this.gbrief = gbrief;
	}
	public String getGimg1() {
		return gimg1;
	}
	public void setGimg1(String gimg1) {
		this.gimg1 = gimg1;
	}
	public String getGimg2() {
		return gimg2;
	}
	public void setGimg2(String gimg2) {
		this.gimg2 = gimg2;
	}
	public String getGimg3() {
		return gimg3;
	}
	public void setGimg3(String gimg3) {
		this.gimg3 = gimg3;
	}
	public String getGimg4() {
		return gimg4;
	}
	public void setGimg4(String gimg4) {
		this.gimg4 = gimg4;
	}
}
