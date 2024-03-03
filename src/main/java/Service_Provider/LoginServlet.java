package Service_Provider;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginServlet() {
        super();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = ServProDBUtil.validate(username, password);
		
		if(isTrue == true) {
			List <Serv_Provider> spDetails = ServProDBUtil.getServiceProvider1(username, password);
			request.setAttribute("spDetails", spDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useracc.jsp");
			dis.forward(request, response);
		}else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location = 'login.jsp'");
			out.println("</script>");
		}
		
	}

}
