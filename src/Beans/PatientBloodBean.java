package Beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import Database.DatabaseManager;

public class PatientBloodBean extends BloodBean {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void update(){
		manager = new DatabaseManager("root","zxtptr3728", "mydb");
		try {
			ResultSet rs = manager.executeQuery("Select bgroup, units from patient;");
			while(rs.next()){
				blood[rs.getInt("bgroup") - 1] += rs.getInt("units");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
