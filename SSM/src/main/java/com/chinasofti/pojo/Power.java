package com.chinasofti.pojo;

import java.io.Serializable;

public class Power implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer powerid;

    private String powername;

    public Integer getPowerid() {
        return powerid;
    }

    public void setPowerid(Integer powerid) {
        this.powerid = powerid;
    }

    public String getPowername() {
        return powername;
    }

    public void setPowername(String powername) {
        this.powername = powername == null ? null : powername.trim();
    }

	public Power(Integer powerid, String powername) {
		super();
		this.powerid = powerid;
		this.powername = powername;
	}

	public Power() {
		super();
		// TODO Auto-generated constructor stub
	}
    
}