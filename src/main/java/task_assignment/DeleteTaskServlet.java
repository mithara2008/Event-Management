package task_assignment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteTaskServlet")
public class DeleteTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Tid = request.getParameter("taid");
		boolean isTrue;
		
		isTrue = taskDBUtil.deleteTask(Tid);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("taskInsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			List<task_assignment> taDetails = taskDBUtil.getTaskDetails(Tid);
			request.setAttribute("taDetails", taDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("taskacc.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
