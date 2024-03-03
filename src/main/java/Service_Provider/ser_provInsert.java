package Service_Provider;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/ser_provInsert")
public class ser_provInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ser_provInsert() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String position = request.getParameter("position");
		String username = request.getParameter("username");
		String password = request.getParameter("pwd");
		
		
		boolean isTrue;
		
		isTrue = ServProDBUtil.insertServProvider(name,email,phone,gender,position,username,password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 =request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location = 'servProInsert.jsp'");
			out.println("</script>");
		}
	}

}
