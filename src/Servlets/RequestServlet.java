package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Beans.RequestBean;

@WebServlet("/RequestServlet")
public class RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestBean patient;

    public RequestServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request(request,response);
	}
	
	void request(HttpServletRequest request, HttpServletResponse response){
		String name = request.getParameter("patientname");
		int bloodGroup = Integer.parseInt(request.getParameter("bloodgroup"));
		int units = Integer.parseInt(request.getParameter("units"));
		String phone = request.getParameter("phone");
		String hospital = request.getParameter("hospital");
		int city = Integer.parseInt(request.getParameter("city"));
		String email = request.getParameter("email");
		int age = Integer.parseInt(request.getParameter("age"));
		String details = request.getParameter("details");
		int bloodplatelet = Integer.parseInt(request.getParameter("bloodplatelet"));
	
		patient = new RequestBean();
		patient.setName(name);
		patient.setBloodGroup(bloodGroup);
		patient.setUnits(units);
		patient.setPhone(phone);
		patient.setHospital(hospital);
		patient.setCity(city);
		patient.setEmail(email);
		patient.setAge(age);
		patient.setDetails(details);
		patient.setBloodplatelet(bloodplatelet);
		patient.setResolved(0);
		
		int rows = -5;
		if(patient.validate()){
			rows = patient.addToDatabase();
		}
		
		if(rows > 0){
			RequestDispatcher rd = request.getRequestDispatcher("/RequestSuccess.jsp");
			try {
				rd.include(request, response);
				rd.forward(request, response);
				
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
