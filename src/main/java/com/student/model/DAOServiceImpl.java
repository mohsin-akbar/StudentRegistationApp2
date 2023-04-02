package com.student.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DAOServiceImpl implements DAOServices {
	private Connection con;
	private Statement stmt;

	@Override
	public void connectionDB() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentregistrationapp","root","test");
			stmt=con.createStatement();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean verifyCredentials(String email, String password) {
		try {
			ResultSet rs = stmt.executeQuery("select*from login where email='"+email+"'and password='"+password+"'");
		    return rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public void saveRegistration(String name, String city, String email, String mobile) {
		try {
			stmt.executeUpdate("insert into saveregistration values('"+name+"','"+city+"','"+email+"','"+mobile+"')");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteRegistration(String email) {
		try {
			stmt.executeUpdate("delete from saveregistration where email='"+email+"'");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public ResultSet savedList() {
		try {
			ResultSet rs = stmt.executeQuery("Select * from saveregistration");
			return rs;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void updateRecord(String email, String mobile) {
		try {
			stmt.executeUpdate("update saveregistration set mobile='"+mobile+"' where email='"+email+"'");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
