package Beans;

import java.io.Serializable;

public class DonorBeans implements Serializable{
	int id;
	String name;
	int bloodGroup;
	int units;
	int phone;
	String hospital;
	int city;
	String email;
	int age;
	
	void setName(String name){
		this.name = name;
	}
	
	void setBloodGroup(int bloodGroup){
		this.bloodGroup = bloodGroup;
	}
	
	void setUnits(int units){
		this.units = units;
	}
	
	void setPhone(int phone){
		this.phone = phone;
	}
	
	void setHospital(String hospital){
		this.hospital = hospital;
	}
	
	void setCity(int city){
		this.city = city;
	}
	
	void setEmail(String email){
		this.email = email;
	}
	
	void setAge(int age){
		this.age = age;
	}
	
	String getName(){
		return this.name ;
	}
	
	int getBloodGroup(int bloodGroup){
		return this.bloodGroup ;
	}
	
	int getUnits(){
		return this.units;
	}
	
	int getPhone(){
		return this.phone;
	}
	
	String getHospital(){
		return this.hospital;
	}
	
	int getCity(){
		return this.city ;
	}
	
	String getEmail(){
		return this.email;
	}
	
	int getAge(){
		return this.age;
	}
}
