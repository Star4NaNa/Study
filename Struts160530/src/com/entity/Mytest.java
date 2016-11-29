package com.entity;

/**
 * Mytest entity. @author MyEclipse Persistence Tools
 */

public class Mytest implements java.io.Serializable {

	// Fields

	private Integer myid;
	private String myname;
	private String mypwd;

	// Constructors

	/** default constructor */
	public Mytest() {
	}

	/** full constructor */
	public Mytest(String myname, String mypwd) {
		this.myname = myname;
		this.mypwd = mypwd;
	}

	// Property accessors

	public Integer getMyid() {
		return this.myid;
	}

	public void setMyid(Integer myid) {
		this.myid = myid;
	}

	public String getMyname() {
		return this.myname;
	}

	public void setMyname(String myname) {
		this.myname = myname;
	}

	public String getMypwd() {
		return this.mypwd;
	}

	public void setMypwd(String mypwd) {
		this.mypwd = mypwd;
	}

}