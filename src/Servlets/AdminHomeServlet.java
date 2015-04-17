package Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.AdminBean;
import Beans.DonorBloodbean;
import Beans.PatientBloodBean;

/**
 * Servlet implementation class AdminHomeServlet
 */
@WebServlet("/AdminHomeServlet")
public class AdminHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	
    public AdminHomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		AdminBean admin = new AdminBean(username, password);
		if(admin.validate())
			request(request,response);
		else{
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('User or password incorrect');");
			   out.println("location='AdminLogin.jsp';");
			   out.println("</script>");
		}
	}
	
	void request(HttpServletRequest request, HttpServletResponse response){
		DonorBloodbean totalDonorBlood = new DonorBloodbean();
		totalDonorBlood.update();
		PatientBloodBean totalPatientBlood = new PatientBloodBean();
		totalPatientBlood.update();
		
		request.setAttribute("totaldonorblood", totalDonorBlood.blood);
		request.setAttribute("totalpatientblood", totalPatientBlood.blood);
		
		RequestDispatcher rd = request.getRequestDispatcher("/AdminHome.jsp");
		try {
			rd.include(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
