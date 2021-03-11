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
 * Servlet implementation class DeleteReservationServlet
 */
@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String reserveNu = request.getParameter("reserveNu");
		boolean result;
		
		result = reservationDBUtil.deleteReservation(reserveNu);
		
		if(result == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("hallcheck.jsp");
			dis.forward(request, response);
			
		}else {
			
			List<reservation> resDetails = reservationDBUtil.getReservationDetails(reserveNu);
			
			request.setAttribute("resDetails", resDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("reserveDetails.jsp");
			dis2.forward(request, response);
		}
	}

}
