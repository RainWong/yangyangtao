package com.yangyangtao.user.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.yangyangtao.user.domain.LoginLog;

@Repository
public class LoginLogDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void insertLoginLog(LoginLog loginLog){
		String sql = "INSERT INTO t_login_log(user_id,ip,login_datetime) values(?,?,?)";
		jdbcTemplate.update(sql,new Object[]{loginLog.getUserId()
				,loginLog.getIp()
				,loginLog.getLoginDatetime()});
	}
}
