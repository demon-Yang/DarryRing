package com.wwcd.entity;

import java.io.Serializable;

public class Detail implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int did;
	private int gid;
	private int oid;
	public Detail() {
		super();
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
}
