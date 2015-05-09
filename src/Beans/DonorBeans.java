package Beans;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;

import Database.*;
public class DonorBeans implements Serializable{
	public int id;
	public String name;
	public int bloodGroup;
	public int units;
	public String phone;
	public String hospital;
	public int city;
	public String email;
	public int age;
	DatabaseManager manager;
	
	
	public int getId(){
		return id;
	}
	public void setName(String name){
		this.name = name;
	}
	
	public void setBloodGroup(int bloodGroup){
		this.bloodGroup = bloodGroup;
	}
	
	public void setUnits(int units){
		this.units = units;
	}
	
	public void setPhone(String phone){
		this.phone = phone;
	}
	
	public void setHospital(String hospital){
		this.hospital = hospital;
	}
	
	public void setCity(int city){
		this.city = city;
	}
	
	public void setEmail(String email){
		this.email = email;
	}
	
	public void setAge(int age){
		this.age = age;
	}
	
	public String getName(){
		return this.name ;
	}
	
	public int getBgroup(){
		return this.bloodGroup ;
	}
	
	public int getUnits(){
		return this.units;
	}
	
	public String getPhone(){
		return this.phone;
	}
	
	public String getHospital(){
		return this.hospital;
	}
	
	public int getCity(){
		return this.city ;
	}
	
	public String getEmail(){
		return this.email;
	}
	
	public int getAge(){
		return this.age;
	}
	
	public boolean validate(){
		return true;
	}
	
	public void setId(int id){
		this.id = id;
	}
	
	public int addToDatabase(){
		String query = "Insert into donor(name,bgroup,units,phone,hospital,city,email,age) values('" + 
				 name + "',"+bloodGroup+","+units+",'"+phone+"','"+hospital+"',"+city+",'"+email+"',"+age+");";
		try {
			return getManager().executeUpdate(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return -1;
	}
	
	public void setDetailsFromdatabase(int id){
		String query = "Select * from donor where id = " + id +";";
		try {
			ResultSet rs = getManager().executeQuery(query);
			while(rs.next()){
				this.id = id;
				this.setAge(rs.getInt("age"));
				this.setName(rs.getString("name"));
				this.setBloodGroup(rs.getInt("bgroup"));
				this.setCity(rs.getInt("city"));
				this.setHospital(rs.getString("hospital"));
				this.setPhone(rs.getString("phone"));
				this.setUnits(rs.getInt("units"));
				this.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	DatabaseManager getManager(){
		if(manager == null){
			manager = new DatabaseManager("root","zxtptr3728","mydb");
		}
		return manager;
	}
}
