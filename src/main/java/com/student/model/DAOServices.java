package com.student.model;

import java.sql.ResultSet;

public interface DAOServices {
	public void connectionDB();
	public  boolean verifyCredentials(String email,String password);
	public void saveRegistration(String name,String city,String email,String mobile );
	public void deleteRegistration(String email);
	public ResultSet savedList();
	public void updateRecord(String email,String mobile); 
		
	
}
