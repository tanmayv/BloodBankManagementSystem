package Beans;

import java.io.Serializable;
import java.sql.SQLException;

import Database.*;
public class DonorBeans implements Serializable{
	int id;
	String name;
	int bloodGroup;
	int units;
	String phone;
	String hospital;
	int city;
	String email;
	int age;
	DatabaseManager manager;
	
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
	
	public int getBloodGroup(int bloodGroup){
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
	
	int getAge(){
		return this.age;
	}
	
	public boolean validate(){
		return true;
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
	
	DatabaseManager getManager(){
		if(manager == null){
			manager = new DatabaseManager("root","zxtptr3728","mydb");
		}
		return manager;
	}
}
