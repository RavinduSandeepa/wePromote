package oop.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import oop.model.User;
import oop.service.UserService;
import oop.util.DB_Connection;

public class UserServiceImpl implements UserService {

	
	public UserServiceImpl() {
		
		
	}
	@Override
	public boolean addNewUser(User user) {
		
		DB_Connection obj = new DB_Connection();
		Connection connection = obj.get_connection();
		
		PreparedStatement ps =null;
		
		try {
			

		
		String query = "insert into users(f_name,l_name,email,password) values(?,?,?,?)";
		ps = connection.prepareStatement(query);
		
		ps.setString(1, user.getF_name());
		ps.setString(2, user.getL_name());
		ps.setString(3, user.getEmail());
		ps.setString(4, user.getPassword());
		ps.executeUpdate();
		
		} catch (Exception e) {
			System.out.println("some error in insert values");
			System.err.println(e);
			
			
		}
		return false;
	}
	
	
	@Override
	public List<User> getAllUsers() {
	
		DB_Connection obj = new DB_Connection();
		Connection connection = obj.get_connection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<User> list = new ArrayList<User>();
		
		try {
			String query = "select * from users";
			ps = connection.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				User obj_User_Bean = new User();
				System.out.println(rs.getString("user_id"));
				System.out.println(rs.getString("f_name"));
				System.out.println(rs.getString("l_name"));
				System.out.println(rs.getString("email"));
				System.out.println(rs.getString("password"));
				System.out.println("");
				
				obj_User_Bean.setUser_ID(rs.getString("user_id"));
				obj_User_Bean.setF_name(rs.getString("f_name"));
				obj_User_Bean.setL_name(rs.getString("l_name"));
				obj_User_Bean.setEmail(rs.getString("email"));
				obj_User_Bean.setPassword(rs.getString("password"));
				
				list.add(obj_User_Bean);
			}
			
		} catch (Exception e) {
			System.out.println(e);
			
			System.out.println("Some Error in Read page");
		}
		return list;
	}
	@Override
	public boolean updateUserDetails(User obj_update_user) {
			DB_Connection obj = new DB_Connection();
			Connection connection = obj.get_connection();
			
			PreparedStatement ps = null;
			
			
			try {
				String query = "update users set f_name=?,l_name=?,email=?,password=? where user_id=?";
				ps = connection.prepareStatement(query);
				ps.setString(1, obj_update_user.getF_name());;
				ps.setString(2, obj_update_user.getL_name());;
				ps.setString(3, obj_update_user.getEmail());;
				ps.setString(4, obj_update_user.getPassword());;
				ps.setString(5, obj_update_user.getUser_ID());;
				ps.executeUpdate();
				

				
			} catch (Exception e) {
				System.out.println(e);
				
				System.out.println("some erro in Read page");
			}
			return true;
		
	}
	

}
