package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.AllRequestBean;

/**
 * Servlet implementation class AllRequestServlet
 */
@WebServlet("/AllRequestServlet")
public class AllRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AllRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request(request,response);
	}
	
	public void request(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		AllRequestBean requestsBean = new AllRequestBean();
		requestsBean.getRequests(getAfterId(request));
		
		request.setAttribute("requests", requestsBean.requests);
		
		RequestDispatcher rd = request.getRequestDispatcher("allrequest.jsp");
		rd.forward(request, response);
	}
	
	public int getAfterId(HttpServletRequest request){
		try{
			return Integer.parseInt(request.getParameter("afterId"));
		}catch(Exception e){
			return 0;
		}
	}

}
