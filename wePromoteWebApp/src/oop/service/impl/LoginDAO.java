package oop.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import oop.util.DB_Connection;

public class LoginDAO {
	
	public boolean checkCredentials(String u_email,String password) {
		
		DB_Connection obj = new DB_Connection();
		Connection connection = obj.get_connection();
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			String query = "select * from users where email=? and password=?";
			ps = connection.prepareStatement(query);
			ps.setString(1, u_email);
			ps.setString(2, password);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				
				return true;
			}
			
		} catch (Exception e) {
			System.out.println(e);
			System.out.println("Some Error in Login In");
		}
		
		return false;
	}

}
