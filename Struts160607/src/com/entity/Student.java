package com.entity;



/**
 * Student entity. @author MyEclipse Persistence Tools
 */

public class Student implements java.io.Serializable {

	// Fields

	private int stuid;
	private String sname;

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** full constructor */
	public Student(String sname) {
		this.sname = sname;
	}

	// Property accessors

	public int getStuid() {
		return this.stuid;
	}

	public void setStuid(int stuid) {
		this.stuid = stuid;
	}

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

}