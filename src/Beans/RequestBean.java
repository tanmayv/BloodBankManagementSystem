package Beans;

import java.io.Serializable;
import java.sql.SQLException;

import Database.DatabaseManager;

public class RequestBean implements Serializable {
	int id;
	String name;
	String details;
	int bloodGroup;
	int units;
	String phone;
	String hospital;
	int city;
	String email;
	int bloodplatelet;
	int age;
	int resolved;
	DatabaseManager manager;
	
	public void setName(String name){
		this.name = name;
	}
	
	public void setBloodGroup(int bloodGroup){
		this.bloodGroup = bloodGroup;
	}
	
	public void setDetails(String details){
		this.details = details;
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
	
	public void setBloodplatelet(int bloodplatelet){
		this.bloodplatelet = bloodplatelet;
	}
	
	public void setResolved(int resolved){
		this.resolved = resolved;
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
	
	public String getDetails(){
		return this.details;
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
	
	public int getBloodplatelet(){
		return this.bloodplatelet;
	}
	
	public int getResolved(){
		return this.resolved;
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
	public int getId(){
		return this.id;
	}
	
	public int addToDatabase(){
		String query = "Insert into patient(name,bgroup,units,phone,hospital,city,email,age,detail,bloodplatelet,resolved) values('" + 
				 name + "',"+bloodGroup+","+units+",'"+phone+"','"+hospital+"',"+city+",'"+email+"',"+age+",'"+details+"',"
				+ bloodplatelet+","+resolved+");";
		
		System.out.println("Querye : " + query);
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
