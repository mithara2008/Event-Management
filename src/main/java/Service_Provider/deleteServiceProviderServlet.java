package Service_Provider;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteServiceProviderServlet")
public class deleteServiceProviderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deleteServiceProviderServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("spid");
		boolean isTrue;
		
		isTrue = ServProDBUtil.deleteServiceProvider(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("servProInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Serv_Provider> spDetails = ServProDBUtil.getServiceProviderDatails(id);
			request.setAttribute("spDetails", spDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useracc.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
