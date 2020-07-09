package com.oracle.gdms.service;

import com.oracle.gdms.entity.UserModel;

public interface UserService {
    /**
         *   新用户注册业务
     * @param user
     * @
     */
	int add(UserModel user);

	UserModel login(UserModel user);
}
