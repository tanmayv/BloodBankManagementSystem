package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.DonorBeans;

@WebServlet("/DonorServlet")
public class DonorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DonorBeans donor;
	
    public DonorServlet() {
        super();
    
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	void request(HttpServletRequest request, HttpServletResponse response){
		String name = request.getParameter("donorname");
		int bloodGroup = Integer.parseInt(request.getParameter("bloodgroup"));
		int units = Integer.parseInt(request.getParameter("units"));
		String phone = request.getParameter("phone");
		String hospital = request.getParameter("hospital");
		int city = Integer.parseInt(request.getParameter("city"));
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));
		
		donor = new DonorBeans();
		donor.setName(name);
		donor.setBloodGroup(bloodGroup);
		donor.setUnits(units);
		donor.setPhone(phone);
		donor.setHospital(hospital);
		donor.setCity(city);
		donor.setEmail(email);
		donor.setAge(age);
		
		int rows = -5;
		if(donor.validate()){
			rows = donor.addToDatabase();
		}
		
		if(rows > 0){
			RequestDispatcher rd = request.getRequestDispatcher("/DonationSuccess.jsp");
			try {
				rd.include(request, response);
				
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		System.out.print("result " + rows);
		
	}
}
