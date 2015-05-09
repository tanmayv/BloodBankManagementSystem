package Database;

import java.sql.*;

//This class is responsible establishing connection with the mysql server
// and retrieve data from the blood bank database.


// STEPS FOR CONNECTING TO DATABASE
// STEP 1 : Add JDBC library to project folder.
// STEP 2 : Register the Driver Class
// STEP 3 : Create Connection
// STEP 4 : Execute queries from statement, which we can get from the established connection.

public class DatabaseManager {
	String db_url = "jdbc:mysql://localhost/blood_database";  //location of the database
    String db_user = "root";
    String db_pass = "zxtptr3728";
    Connection conn;	 
    
    DatabaseManager(){	//Default Constructor to intialize with defalut values
    	init();
    }
    
    
  //Parameterized Constructor to initialize with values provided by the user.
       
 
    public DatabaseManager(String user, String password, String database){			
    	db_user = user;
    	db_pass = password;
    	db_url = "jdbc:mysql://localhost/" + database;
    	init();
    }
    
    //init is responsible for registering the Driver class.
    private void init() {
     try {
			Class.forName("com.mysql.jdbc.Driver");	   // STEP 2 : Register class
		} catch (ClassNotFoundException e) {		
			e.printStackTrace(); // Prints exception information in the terminal (When class not found.)
			
		}
    }
    
    //getConnection is used to establishing connection with the mysql server.
    //Return Type : Connection (java.sql.Connection) : return Connection object which is established.
    private Connection getConnection() throws SQLException{
    	
    	if(conn == null){
    		conn = DriverManager.getConnection(db_url,db_user,db_pass);		// STEP 3 : Connection Created between Java and MySql Client.
    	}
    	return conn;
    }
    
    //STEP 4 : Retrieve statement and execute query
    
    // executeQuery is used to retrieve data from tables without changing the records.
    //Parameter : query = the sql query that we need to execute.
    //Return Type : ResultSet (java.sql.ResultSet) = Returns the set of records from the table as requested by the query.
    public ResultSet executeQuery(String query) throws SQLException{	
    	Statement stmnt =  getConnection().createStatement();  	//Retrieve Statement from the Connection
    	return stmnt.executeQuery(query);			//Execute Query using the statement;
    }
    
    //executeUpdate is used to update data in tables, be it inserting or deleting.
    //Parameter : query = the sql query that we need to execute.
    //Return Type : int = returns no. of rows updated in the database by executing the query.
    public int executeUpdate(String query) throws SQLException{	
    	Statement stmnt =  getConnection().createStatement();	
    	return stmnt.executeUpdate(query);
    }
}