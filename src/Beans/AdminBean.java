package Beans;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

import Database.DatabaseManager;

public class AdminBean implements Serializable{
	String username;
	String password;
	DatabaseManager manager;
	public AdminBean(String username, String password){
		this.username = username;
		this.password = password;
	}
	
	public boolean validate(){
		manager = new DatabaseManager("root", "zxtptr3728", "mydb");
		try {
			ResultSet rs = manager.executeQuery("select password from admininfo where username = '" + username + "';");
			while(rs.next()){
				if(rs.getString("password").equals(password)){
					return true;
				}
				break;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
		
	}

}
