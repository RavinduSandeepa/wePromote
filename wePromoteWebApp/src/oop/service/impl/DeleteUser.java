package oop.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import oop.util.DB_Connection;

public class DeleteUser {
	
	public boolean delete_value(String deleteUser_ID) {
		DB_Connection obj = new DB_Connection();
		Connection connection = obj.get_connection();
		
		PreparedStatement ps = null;
		
		
		try {
			String query = "delete from users where user_id=?";
			ps = connection.prepareStatement(query);
			ps.setString(1, deleteUser_ID);;
			ps.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println(e);
			
			System.out.println("some erro in Read page");
		}
		
		return true;
		
		
	}

}
