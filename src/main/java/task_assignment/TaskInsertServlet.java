package task_assignment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TaskInsertServlet")
public class TaskInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Tname = request.getParameter("Tname");
		String Description = request.getParameter("Description");
		String Assign_To = request.getParameter("Assign_To");
		String dueDate = request.getParameter("dueDate");
		String status = request.getParameter("status");
		
		boolean isCorrect;
		
		isCorrect = taskDBUtil.insertTaskAssign(Tname, Description, Assign_To, dueDate, status);
		
		if(isCorrect == true) {
			RequestDispatcher dis = request.getRequestDispatcher("viewTask.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
