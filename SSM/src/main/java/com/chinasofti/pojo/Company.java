package com.chinasofti.pojo;

import java.io.Serializable;

public class Company implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer comid;

    private String comname;

    private String comlia;

    private String comphone;

    private String comzip;

    private String comloc;

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getComname() {
        return comname;
    }

    public void setComname(String comname) {
        this.comname = comname == null ? null : comname.trim();
    }

    public String getComlia() {
        return comlia;
    }

    public void setComlia(String comlia) {
        this.comlia = comlia == null ? null : comlia.trim();
    }

    public String getComphone() {
        return comphone;
    }

    public void setComphone(String comphone) {
        this.comphone = comphone == null ? null : comphone.trim();
    }

    public String getComzip() {
        return comzip;
    }

    public void setComzip(String comzip) {
        this.comzip = comzip == null ? null : comzip.trim();
    }

    public String getComloc() {
        return comloc;
    }

    public void setComloc(String comloc) {
        this.comloc = comloc == null ? null : comloc.trim();
    }

	public Company(Integer comid, String comname, String comlia, String comphone, String comzip, String comloc) {
		super();
		this.comid = comid;
		this.comname = comname;
		this.comlia = comlia;
		this.comphone = comphone;
		this.comzip = comzip;
		this.comloc = comloc;
	}

	public Company() {
		super();
		// TODO Auto-generated constructor stub
	}
    
}