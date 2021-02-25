package com.chinasofti.pojo;

import java.io.Serializable;

public class Ware implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer wareid;

    private String warename;

    private String wareposition;

    private Integer waremax;

    private Integer warenow;

    public Integer getWareid() {
        return wareid;
    }

    public void setWareid(Integer wareid) {
        this.wareid = wareid;
    }

    public String getWarename() {
        return warename;
    }

    public void setWarename(String warename) {
        this.warename = warename == null ? null : warename.trim();
    }

    public String getWareposition() {
        return wareposition;
    }

    public void setWareposition(String wareposition) {
        this.wareposition = wareposition == null ? null : wareposition.trim();
    }

    public Integer getWaremax() {
        return waremax;
    }

    public void setWaremax(Integer waremax) {
        this.waremax = waremax;
    }

    public Integer getWarenow() {
        return warenow;
    }

    public void setWarenow(Integer warenow) {
        this.warenow = warenow;
    }

	public Ware(Integer wareid, String warename, String wareposition, Integer waremax, Integer warenow) {
		super();
		this.wareid = wareid;
		this.warename = warename;
		this.wareposition = wareposition;
		this.waremax = waremax;
		this.warenow = warenow;
	}

	public Ware() {
		super();
		// TODO Auto-generated constructor stub
	}
    
}