package oop.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import oop.util.DB_Connection;
import oop.model.User;

public class UpdateUser {
	
	public User get_values_of_user(String user_ID) {
		DB_Connection obj = new DB_Connection();
		Connection connection = obj.get_connection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		User obj_User_Bean = new User();
		
		
		try {
			String query = "select * from users where user_ID=?";
			ps = connection.prepareStatement(query);
			ps.setString(1, user_ID);;
			rs = ps.executeQuery();
			
			while(rs.next()) {
				
				
				obj_User_Bean.setUser_ID(rs.getString("user_id"));
				obj_User_Bean.setF_name(rs.getString("f_name"));
				obj_User_Bean.setL_name(rs.getString("l_name"));
				obj_User_Bean.setEmail(rs.getString("email"));
				obj_User_Bean.setPassword(rs.getString("password"));

				

			}
			
		} catch (Exception e) {
			System.out.println(e);
			
			System.out.println("some erro in Read page");
		}
		return obj_User_Bean;
		
		
	}

}
