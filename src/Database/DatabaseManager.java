package Database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseManager {
	String db_url = "jdbc:mysql://localhost/blood_database";
    String db_user = "root";
    String db_pass = "zxtptr3728";
    Connection conn;
    DatabaseManager(){
    	init();
    }
    
    public DatabaseManager(String user, String password, String database){
    	db_user = user;
    	db_pass = password;
    	db_url = "jdbc:mysql://localhost/" + database;
    	init();
    }
    
    private void init(){
     try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
    }
    
    public Connection getConnection() throws SQLException{
    	
    	if(conn == null){
    		conn = DriverManager.getConnection(db_url,db_user,db_pass);
    	}
    	return conn;
    }
    
    public ResultSet executeQuery(String query) throws SQLException{
    	Statement stmnt =  getConnection().createStatement();
    	return stmnt.executeQuery(query);
    }
    
    public int executeUpdate(String query) throws SQLException{
    	Statement stmnt =  getConnection().createStatement();
    	return stmnt.executeUpdate(query);
    }
}