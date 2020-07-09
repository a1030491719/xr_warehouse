package com.oracle.gdms.service;

import org.apache.ibatis.session.SqlSession;

public abstract class BaseService {
	
	protected SqlSession session;
	
	protected void free() {
		
		if(session!=null) {
			session.close();
		}
		
	}

}
