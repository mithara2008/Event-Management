package task_assignment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Service_Provider.DBConnect;




public class taskDBUtil {
	
	private static boolean isDone;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	public static boolean insertTaskAssign(String Tname, String Description, String Assign_To,String dueDate, String status) {
		
		boolean isDone = false;
		
		
		String url = "jdbc:mysql://localhost:3306/event_management";
		String username = "root";
		String password = "mithara2001@";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			
			
			Statement stmt = con.createStatement();
			String sql = "Insert into task_assignment values (0,'"+Tname+"','"+Description+"','"+Assign_To+"','"+dueDate+"','"+status+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isDone = true;
			}
			else {
				isDone = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isDone;

	}
	public static List<task_assignment> getTaskDetails(String TId){
		
		int convertedTId = Integer.parseInt(TId);
		
		ArrayList<task_assignment> task = new ArrayList<>();
		
		try {
			
			con = ConnectDB.getConnection();
			stmt = con.createStatement();
			String sql = "select * from task_assignment where Tid = '"+convertedTId+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int Tid = rs.getInt(1);
				String Tname = rs.getString(2);
				String Description = rs.getString(3);
				String Assign_To = rs.getString(4);
				String dueDate = rs.getString(5);
				String status = rs.getString(6);
				
				
				
				task_assignment ta = new task_assignment(Tid,Tname,Description,Assign_To,dueDate,status);
				task.add(ta);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return task;
	}
	
	public static boolean updateTaskAssign(String Tid, String Tname, String Description, String Assign_To, String dueDate, String status) {
		
		try {
			
			con = ConnectDB.getConnection();
			stmt = con.createStatement();
			String sql = "update task_assignment set Tname='"+Tname+"',Description='"+Description+"',Assign_To='"+Assign_To+"',dueDate='"+dueDate+"',status='"+status+"'"
					+"where Tid='"+Tid+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isDone = true;
			}
			else {
				isDone = false;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isDone;
	}
	
	public static List<task_assignment> viewTaskAssignment() {

		ArrayList<task_assignment> task = new ArrayList<>();


		// validate

		try {
			
			con = ConnectDB.getConnection();
			stmt = con.createStatement();
			String sql = "select * from task_assignment ";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int Tid1 = rs.getInt(1);
				String Tname1 = rs.getString(2);
				String Description1 = rs.getString(3);
				String Assign_To1 = rs.getString(4);
				String dueDate1 = rs.getString(5);
				String status1 = rs.getString(6);
				
				

				task_assignment ta = new task_assignment(Tid1, Tname1, Description1, Assign_To1, dueDate1, status1);
				task.add(ta);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return task;
	}
	
	public static boolean deleteTask(String Tid) {
		
	

		
		int convId = Integer.parseInt(Tid);
		
		try {
			
			con = ConnectDB.getConnection();
			stmt = con.createStatement();
			String sql = "delete from task_assignment where Tid = '"+convId+"' ";
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				isDone = true;
				
			}
			else {
				isDone = false;
			}
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isDone;
		
	}
	
	public static boolean validate(String Tname) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from task_assignment where Tname='"+Tname+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isDone = true;
			}
			else {
				isDone = false;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isDone;
	}

}
