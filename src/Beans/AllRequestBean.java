package Beans;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Database.DatabaseManager;

public class AllRequestBean implements  Serializable {
	
	private static final long serialVersionUID = 1L;
	public List<RequestBean> requests;
	DatabaseManager manager;
	public void getRequests(int afterId){
		requests = new ArrayList<RequestBean>();
		String query = "Select * from patient where id  > " + afterId  + " limit 15;";
		try {
			ResultSet rs = getManager().executeQuery(query);
			
			while(rs.next()){
				RequestBean request = new RequestBean();
				request.id = rs.getInt("id");
				request.details = rs.getString("detail");
				request.setAge(rs.getInt("age"));
				request.setName(rs.getString("name"));
				request.setBloodGroup(rs.getInt("bgroup"));
				request.setCity(rs.getInt("city"));
				request.setHospital(rs.getString("hospital"));
				request.setPhone(rs.getString("phone"));
				request.setUnits(rs.getInt("units"));
				request.setEmail(rs.getString("email"));
				request.setResolved(rs.getInt("resolved"));
				requests.add(request);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	DatabaseManager getManager(){
		if(manager == null)
			manager = new DatabaseManager("root", "zxtptr3728", "mydb");
		return manager;
	}
}
