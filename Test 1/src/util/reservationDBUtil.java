package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.reservation;



public class reservationDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//HALL CHECKING
	
	public static boolean validateHall(String hallId,String date) {
		
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql= "select* from reservation where Hall_ID ='"+hallId+"' and Date='"+date+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		return isSuccess;
	}
	
	

	//RETRIEVING VALIDATED RESERVATION DETAILS
	
	public static List<reservation> getReservation(String hallId,String date){
		
		ArrayList<reservation> res= new ArrayList<>();
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql= "select* from reservation where Hall_ID ='"+hallId+"' and Date='"+date+"'";
			
			rs=stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int ReserveNu= rs.getInt(1);
				String CusId = rs.getString(2);
				String HallId= rs.getString(3);
				String date1 = rs.getString(4);
				String function = rs.getString(5);
				String NoOfhrs = rs.getString(6);
				String menuType = rs.getString(7);
				String NoOfguests = rs.getString(8);
				
				reservation  r = new reservation(ReserveNu,CusId,HallId,date1,function,NoOfhrs,menuType,NoOfguests);
				res.add(r);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		return res;
	}
	
	
	//INSERT RESERVATION DETAILS
	
	public static boolean insertreservation(String cusId,String hallId,String date,String function,String NoOfhrs,String menuType,String NoOfguests) {
		
		boolean isSuccess = false;
		
				try {
					con = DBConnect.getConnection();
					stmt=con.createStatement();
					
					String sql="insert into reservation values(0,'"+cusId+"','"+hallId+"','"+date+"','"+function+"','"+NoOfhrs+"','"+menuType+"','"+NoOfguests+"')";
					
					int rs = stmt.executeUpdate(sql);
					
					if(rs > 0) {
						isSuccess = true;
					}else {
						isSuccess = false;
					}
				}
				catch(Exception e) {
					e.printStackTrace();
				}
		
		return isSuccess;
	}
	
	
	//UPDATE RESERVATION DETAILS
	
public static boolean updatereservation(String ReserveNu, String CusId, String HallId, String Date, String Function, String NoOfhrs, String MenuType, String NoOfguests) {
	 
	
		
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "update reservation set CustomerID='"+CusId+"',Hall_ID='"+HallId+"',Date='"+Date+"',FuncType='"+Function+"',TimeDuration='"+NoOfhrs+"',MenuType='"+MenuType+"',NoOfGuests='"+NoOfguests+"'"
			              +"where Reservation_Nu='"+ReserveNu+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
		
	}

	
	//RETRIEVE DATA
	
	public static List<reservation> getReservationDetails(String reserveNu){

	int convertedNu = Integer.parseInt(reserveNu);
	
	ArrayList<reservation> res= new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt=con.createStatement();
		
		String sql = "select * from reservation where Reservation_Nu='"+convertedNu+"' ";
		rs=stmt.executeQuery(sql);
		
		
		while(rs.next()) {
			int ReserveNu= rs.getInt(1);
			String CusId = rs.getString(2);
			String HallId= rs.getString(3);
			String date1 = rs.getString(4);
			String function = rs.getString(5);
			String NoOfhrs = rs.getString(6);
			String menuType = rs.getString(7);
			String NoOfguests = rs.getString(8);
			
			reservation  r = new reservation(ReserveNu,CusId,HallId,date1,function,NoOfhrs,menuType,NoOfguests);
			res.add(r);
			
		}
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return res;
	}
	
	//DELETING A RESERVATION
	
	public static boolean deleteReservation(String reserveNu) {
		
		int convertedNu = Integer.parseInt(reserveNu);
		
		try {
			con = DBConnect.getConnection();
			stmt=con.createStatement();
			
			String sql = "delete  from reservation where Reservation_Nu='"+convertedNu+"'" ;
			
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
		
		
		
	}
}
	
	
	