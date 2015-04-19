package Servlets;

import java.io.IOException;

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


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	void request(HttpServletRequest request, HttpServletResponse response){
		DonorBeans donor = new DonorBeans();
		int id = getId(request);
		if(id == -1){
			donor.setId(-1);
			donor.setName("notfound");
			
		}else{
			request.setAttribute("donor", donor);
		}
	}
	
	int getId(HttpServletRequest request){
		try{
			return Integer.parseInt(request.getParameter("someId"));
		}catch(Exception e){
			return -1;
		}
	}
	

}

