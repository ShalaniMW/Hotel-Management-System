package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.reservation;
import util.reservationDBUtil;

/**
 * Servlet implementation class UpdateReservationServlet
 */
@WebServlet("/UpdateReservationServlet")
public class UpdateReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		String ReserveNu = request.getParameter("reserveNu");
		String CusId = request.getParameter("cusId");
		String HallId = request.getParameter("hallId");
		String Date = request.getParameter("date");
		String Function = request.getParameter("function");
		String NoOfhrs = request.getParameter("noOfhrs");
		String MenuType = request.getParameter("menuType");
		String NoOfguests = request.getParameter("noOfguests");
		
		
		
		boolean isTrue = reservationDBUtil.updatereservation(ReserveNu, CusId, HallId, Date, Function, NoOfhrs, MenuType, NoOfguests);
		
		if(isTrue) 
		{
			
			List<reservation> resDetails = reservationDBUtil.getReservationDetails(ReserveNu);
			request.setAttribute("resDetails",resDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("reserveDetails.jsp");
			dis.forward(request, response);
		}
		
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	



		
		
		
		
	}

}
