package model;

public class reservation {
	
	private int ReserveNu;
	private String CusId;
	private String HallId;
	private String date;
	private String function;
	private String NoOfhrs;
	private String menuType;
	private String NoOfguests;
	
	public reservation(int reserveNu, String cusId, String hallId, String date, String function, String noOfhrs,
			String menuType, String noOfguests) {
		
		ReserveNu = reserveNu;
		CusId = cusId;
		HallId = hallId;
		this.date = date;
		this.function = function;
		NoOfhrs = noOfhrs;
		this.menuType = menuType;
		NoOfguests = noOfguests;
		
		
	}

	public int getReserveNu() {
		return ReserveNu;
	}

	

	public String getCusId() {
		return CusId;
	}

	

	public String getHallId() {
		return HallId;
	}

	

	public String getDate() {
		return date;
	}




	public String getFunction() {
		return function;
	}

	

	public String getNoOfhrs() {
		return NoOfhrs;
	}

	
	public String getMenuType() {
		return menuType;
	}

	

	public String getNoOfguests() {
		return NoOfguests;
	}

	
	
	
	



	

	
	
}
