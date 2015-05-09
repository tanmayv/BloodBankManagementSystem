package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.DonorBeans;


@WebServlet("/GetDonorServlet")
public class GetDonorServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L; 
       
    
    public GetDonorServlet() {
        super(); 
    }

    // doGet is Called when the servlet gets a GET request.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request(request,response);
	}

	//doPost is called when the servlet gets a POST request.
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request(request,response);
	}
	
	
	
	void request(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		DonorBeans donor = new DonorBeans();
		int id = getId(request);
		if(id == -1){
			donor.setId(-1);
			donor.setName("notfound");
			
			
		}else{
			donor.setId(id);
			donor.setDetailsFromdatabase(id);
		}
		request.setAttribute("donor", donor);
		RequestDispatcher rd = request.getRequestDispatcher("viewdonor.jsp");
		rd.include(request, response);
	}
	
	int getId(HttpServletRequest request){
		try{
			return Integer.parseInt(request.getParameter("idtosend"));
		}catch(Exception e){
			return -1;
		}
	}
	

}

