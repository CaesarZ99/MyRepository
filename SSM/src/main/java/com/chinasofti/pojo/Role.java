package com.chinasofti.pojo;

import java.io.Serializable;

public class Role implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer roleid;

    private String rolename;

    private String rolediscription;

    private Power p;
    
    
    public Power getP() {
		return p;
	}

	public void setP(Power p) {
		this.p = p;
	}

	public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }

    public String getRolediscription() {
        return rolediscription;
    }

    public void setRolediscription(String rolediscription) {
        this.rolediscription = rolediscription == null ? null : rolediscription.trim();
    }


	public Role(Integer roleid, String rolename, String rolediscription) {
		super();
		this.roleid = roleid;
		this.rolename = rolename;
		this.rolediscription = rolediscription;
	}

	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}
    
    
}