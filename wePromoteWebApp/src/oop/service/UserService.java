package oop.service;

import java.util.List;

import oop.model.User;

public interface UserService {

	boolean addNewUser(User user);
	
	public List<User> getAllUsers();

	boolean updateUserDetails(User obj_update_user);


}
