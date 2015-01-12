package com.yangyangtao.user.domain;

import java.io.Serializable;
import java.util.Date;

public class LoginLog implements Serializable {
	
	private int loginLogId;
	
	private int userId;
	
	private String ip;
	
	private Date LoginDatetime;

	public int getLoginLogId() {
		return loginLogId;
	}

	public void setLoginLogId(int loginLogId) {
		this.loginLogId = loginLogId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getLoginDatetime() {
		return LoginDatetime;
	}

	public void setLoginDatetime(Date loginDatetime) {
		LoginDatetime = loginDatetime;
	}
	
	
}
