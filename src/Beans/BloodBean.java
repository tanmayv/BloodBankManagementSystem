package Beans;

import java.io.Serializable;

import Database.DatabaseManager;

public class BloodBean implements Serializable {
	public int[] blood = {0,0,0,0,0,0,0,0};
	
	public DatabaseManager manager;
	
	public int[] getBloodArray(){
		return blood;
	}
}
