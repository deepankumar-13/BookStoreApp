package com.Book.Interface;

import com.Book.Model.User;

public interface UserDAO {
	int insertUser(User user);
	User fetchPassword(String email);
}

