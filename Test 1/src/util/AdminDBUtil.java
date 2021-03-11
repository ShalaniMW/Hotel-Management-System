package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.admin;

public class AdminDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	



public static boolean validateAdmin(String userName,String password) {
	
	try {
		con = DBConnect.getConnection();
		stmt=con.createStatement();
		
		String sql= "select* from admin where username='"+userName+"' and password='"+password+"'";
		
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

public static List<admin> getAdmin(String userName){

ArrayList<admin> adm = new ArrayList<>();


try {
	
	con = DBConnect.getConnection();
	stmt=con.createStatement();
	
	String sql= "select* from admin where username='"+userName+"'";
	
	rs = stmt.executeQuery(sql);
	
	while(rs.next()) {
		int id= rs.getInt(1);
		String name = rs.getString(2);
		String email = rs.getString(3);
		String phone = rs.getString(4);
		String userU = rs.getString(5);
		String passU = rs.getString(6);
		
		admin  a = new admin(id,name,email,phone,userU,passU);
		adm.add(a);
		
	}
}
catch(Exception e) {
	e.printStackTrace();
	
}


return adm;
}

}


