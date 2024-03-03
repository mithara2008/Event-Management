package Service_Provider;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class ServProDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username, String password) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from service_provider where username='"+username+"'and password ='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Serv_Provider> getServiceProvider1(String username, String password) {

		ArrayList<Serv_Provider> serv = new ArrayList<>();


		// validate

		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from service_provider where username='" + username + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String gender = rs.getString(5);
				String position = rs.getString(6);
				String username1 = rs.getString(7);
				String password1 = rs.getString(8);
				

				Serv_Provider sp = new Serv_Provider(id, name, email, phone, gender, position ,username1, password1);
				serv.add(sp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return serv;
	}
	
	public static boolean insertServProvider(String name, String email, String phone,String gender, String position, String username, String password) {
		
		boolean isSuccess = false;
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Insert into service_provider values (0,'"+name+"', '"+email+"','"+phone+"','"+gender+"','"+position+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;

	}
	
	public static boolean updateServiceProvider(String id, String name, String email, String phone, String gender,String position, String username, String password) {
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update service_provider set name='"+name+"',email='"+email+"',phone='"+phone+"',gender='"+gender+"',position='"+position+"',username='"+username+"',password='"+password+"'"
					+"where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	public static List<Serv_Provider> getServiceProviderDatails(String Id){
		
		int convertedId = Integer.parseInt(Id);
		
		ArrayList<Serv_Provider> servp = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from service_provider where id = '"+convertedId+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String gender = rs.getString(5);
				String position = rs.getString(6);
				String username = rs.getString(7);
				String password = rs.getString(8);
				
				
				Serv_Provider sv = new Serv_Provider(id,name,email,phone,gender,position,username,password);
				servp.add(sv);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return servp;
	}
	
	public static boolean deleteServiceProvider(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from service_provider where id = '"+convId+"' ";
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				isSuccess = true;
				
			}
			else {
				isSuccess = false;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
}
