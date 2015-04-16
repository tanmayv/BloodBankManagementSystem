package Servlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	String username;
	String password;
	
	DatabaseManager manager;
	
    public LoginServlet() {
        super();
    }
    
    DatabaseManager getManager(){
    	if(manager == null){
    		manager = new DatabaseManager("root", "zxtptr3728", "blood_database");
    	}
    	
    	return manager;
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		username = (String) request.getParameter("username");
		password = (String) request.getParameter("password");
		
		System.out.println("user : " + username);
		try {
			ResultSet rs = manager.executeQuery("select password from users where username='"+username+"';" );
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
}