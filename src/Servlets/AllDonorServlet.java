package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.AllDonorBean;

/**
 * Servlet implementation class AllDonorServlet
 */
@WebServlet("/AllDonorServlet")
public class AllDonorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AllDonorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request(request,response);
	}
	
	int getAfterId(HttpServletRequest request){
		try{
			return Integer.parseInt(request.getParameter("afterid"));
		}catch(Exception e){
			return 0;
		}
		
	}
	
	void request(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		AllDonorBean allDonorBean = new AllDonorBean();
		allDonorBean.getDonors(getAfterId(request));
		request.setAttribute("donors", allDonorBean.donors);
	
		
		RequestDispatcher rd = request.getRequestDispatcher("alldonors.jsp");
		rd.forward(request, response);
		
	}

}
