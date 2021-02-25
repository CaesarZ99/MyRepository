package com.chinasofti.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Revisit implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer vid;

	private String vdate;

	private String vevent;

	private String vnote;

	private Customer c;

	public Customer getC() {
		return c;
	}

	public void setC(Customer c) {
		this.c = c;
	}

	public Integer getVid() {
		return vid;
	}

	public void setVid(Integer vid) {
		this.vid = vid;
	}


	public String getVevent() {
		return vevent;
	}

	public void setVevent(String vevent) {
		this.vevent = vevent == null ? null : vevent.trim();
	}

	public String getVnote() {
		return vnote;
	}

	public void setVnote(String vnote) {
		this.vnote = vnote == null ? null : vnote.trim();
	}


	public String getVdate() {
		return vdate;
	}

	public void setVdate(String vdate) {
		this.vdate = vdate;
	}

	public Revisit(Integer vid, String vdate, String vevent, String vnote, Customer c) {
		super();
		this.vid = vid;
		this.vdate = vdate;
		this.vevent = vevent;
		this.vnote = vnote;
		this.c = c;
	}

	public Revisit() {
		super();
		// TODO Auto-generated constructor stub
	}

}