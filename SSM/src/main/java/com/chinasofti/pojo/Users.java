package com.chinasofti.pojo;

import java.io.Serializable;

public class Users implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer uid;

    private String username;
    private String account;
    

	private String password;
    
    private Role r;
    
    public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}
    
    public Role getR() {
		return r;
	}

	public void setR(Role r) {
		this.r = r;
	}

	public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

	
	public Users(Integer uid, String username, String account, String password) {
		super();
		this.uid = uid;
		this.username = username;
		this.account = account;
		this.password = password;
	}

	
	public Users(String username, String account, String password) {
		super();
		this.username = username;
		this.account = account;
		this.password = password;
	}

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
}