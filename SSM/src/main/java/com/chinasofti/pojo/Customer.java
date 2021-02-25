package com.chinasofti.pojo;

import java.io.Serializable;

public class Customer implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer cusid;

    private String cusname;

    private String cusgender;

    private String cusphone;

    private String cuscid;

    private String cusloc;

    public Integer getCusid() {
        return cusid;
    }

    public void setCusid(Integer cusid) {
        this.cusid = cusid;
    }

    public String getCusname() {
        return cusname;
    }

    public void setCusname(String cusname) {
        this.cusname = cusname == null ? null : cusname.trim();
    }

    public String getCusgender() {
        return cusgender;
    }

    public void setCusgender(String cusgender) {
        this.cusgender = cusgender == null ? null : cusgender.trim();
    }

    public String getCusphone() {
        return cusphone;
    }

    public void setCusphone(String cusphone) {
        this.cusphone = cusphone == null ? null : cusphone.trim();
    }

    public String getCuscid() {
        return cuscid;
    }

    public void setCuscid(String cuscid) {
        this.cuscid = cuscid == null ? null : cuscid.trim();
    }

    public String getCusloc() {
        return cusloc;
    }

    public void setCusloc(String cusloc) {
        this.cusloc = cusloc == null ? null : cusloc.trim();
    }

	public Customer(Integer cusid, String cusname, String cusgender, String cusphone, String cuscid, String cusloc) {
		super();
		this.cusid = cusid;
		this.cusname = cusname;
		this.cusgender = cusgender;
		this.cusphone = cusphone;
		this.cuscid = cuscid;
		this.cusloc = cusloc;
	}

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
    
}