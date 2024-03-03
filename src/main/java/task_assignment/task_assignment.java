package task_assignment;

public class task_assignment {
	
	private int Tid;
	private String Tname;
	private String Description;
	private String Assign_To;
	private String dueDate;
	private String status;
	
	public task_assignment(int Tid, String Tname,String Description,String Assign_To,String dueDate,String status) {
		this.Tid = Tid;
		this.Tname = Tname;
		this.Description = Description;
		this.Assign_To = Assign_To;
		this.dueDate = dueDate;
		this.status = status;
		
	}

	public int getTid() {
		return Tid;
	}

	public String getTname() {
		return Tname;
	}


	public String getDescription() {
		return Description;
	}


	public String getAssign_To() {
		return Assign_To;
	}


	public String getDueDate() {
		return dueDate;
	}


	public String getStatus() {
		return status;
	}

	
	
	
	

}
