package com.jlsf.entity;

import java.math.BigDecimal;

public class Passenger {
    private BigDecimal proId;

    private String proName;

    private BigDecimal proAge;

    private String proSex;

    private String proAddress;

    private String proPhone;

    private String proNum;

	public BigDecimal getProId() {
		return proId;
	}

	public void setProId(BigDecimal proId) {
		this.proId = proId;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public BigDecimal getProAge() {
		return proAge;
	}

	public void setProAge(BigDecimal proAge) {
		this.proAge = proAge;
	}

	public String getProSex() {
		return proSex;
	}

	public void setProSex(String proSex) {
		this.proSex = proSex;
	}

	public String getProAddress() {
		return proAddress;
	}

	public void setProAddress(String proAddress) {
		this.proAddress = proAddress;
	}

	public String getProPhone() {
		return proPhone;
	}

	public void setProPhone(String proPhone) {
		this.proPhone = proPhone;
	}

	public String getProNum() {
		return proNum;
	}

	public void setProNum(String proNum) {
		this.proNum = proNum;
	}

    
}