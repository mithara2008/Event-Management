package Service_Provider;

public class Serv_Provider {
	private int id;
	private String name;
	private String email;
	private String phone;
	private String gender;
	private String position;
	private String user_name;
	private String password;
	

	public Serv_Provider(int id, String name, String email, String phone, String gender, String position, String username, String password) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.position = position;
		this.user_name = username;
		this.password = password;
		
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getphone() {
		return phone;
	}
	public String getGender() {
		return gender;
	}

	public String getPosition() {
		return position;
	}

	public String getusername() {
		return user_name;
	}

	public String getpassword() {
		return password;
	}

	


}

