package task_assignment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/updateTaskServlet")
public class updateTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String Tid = request.getParameter("taid");
		String Tname = request.getParameter("Tname");
		String Description = request.getParameter("Description");
		String Assign_To = request.getParameter("Assign_To");
		String dueDate = request.getParameter("dueDate");
		String status = request.getParameter("status");
		
		
		
		
		boolean isTrue;
		
		isTrue = taskDBUtil.updateTaskAssign(Tid, Tname, Description, Assign_To, dueDate, status);
		
		if(isTrue == true){
			
			List<task_assignment> taDetails = taskDBUtil.getTaskDetails(Tid);
			request.setAttribute("taDetails", taDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("viewTask.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<task_assignment> taDetails = taskDBUtil.getTaskDetails(Tid);
			request.setAttribute("taDetails", taDetails);

			RequestDispatcher dis = request.getRequestDispatcher("taskacc.jsp");
			dis.forward(request, response);
		}
	}

	

}
