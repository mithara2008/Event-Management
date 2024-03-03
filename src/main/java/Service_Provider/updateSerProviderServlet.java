package Service_Provider;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateSerProviderServlet")
public class updateSerProviderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public updateSerProviderServlet() {
        super();
      
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("spid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String position = request.getParameter("position");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		
		boolean isTrue;
		
		isTrue = ServProDBUtil.updateServiceProvider(id, name, email, phone, gender, position, username, password);
		
		if(isTrue == true){
			
			List<Serv_Provider> spDetails = ServProDBUtil.getServiceProviderDatails(id);
			request.setAttribute("spDetails", spDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Serv_Provider> spDetails = ServProDBUtil.getServiceProviderDatails(id);
			request.setAttribute("spDetails", spDetails);

			RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
			dis.forward(request, response);
		}
	}

}
