package Beans;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Database.DatabaseManager;

public class AllDonorBean implements Serializable {

		DatabaseManager manager;
			
	
		public List<DonorBeans> donors;
		
		DatabaseManager getManager(){
			if(manager == null)
				manager = new DatabaseManager("root", "zxtptr3728", "mydb");
			return manager;
		}
		
	
		
		public void getDonors(int afterId){
			
			donors = new ArrayList<DonorBeans>();
			String query = "Select * from donor where id  > " + afterId  + " limit 15;";
			try {
				ResultSet rs = getManager().executeQuery(query);
				
				while(rs.next()){
					DonorBeans donor = new DonorBeans();
					donor.id = rs.getInt("id");
					donor.setAge(rs.getInt("age"));
					donor.setName(rs.getString("name"));
					donor.setBloodGroup(rs.getInt("bgroup"));
					donor.setCity(rs.getInt("city"));
					donor.setHospital(rs.getString("hospital"));
					donor.setPhone(rs.getString("phone"));
					donor.setUnits(rs.getInt("units"));
					donor.setEmail(rs.getString("email"));
					donors.add(donor);
					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			
		}
}
