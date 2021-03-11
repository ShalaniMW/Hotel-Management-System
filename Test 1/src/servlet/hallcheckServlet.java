package servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class hallcheckServlet
 */
@WebServlet("/hallcheckServlet")
public class hallcheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String hallId  = request.getParameter("hallId");
		String date = request.getParameter("date");
		boolean isTrue;
		
		isTrue = reservationDBUtil.validateHall(hallId, date);
		
		if(isTrue == true){
		List<reservation> resDetails = reservationDBUtil.getReservation(hallId,date);
		request.setAttribute("resDetails",resDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("reserveDetails.jsp");
		dis.forward(request,response);
		
		}else {
		
			out.println("<script type= 'text/javascript'>");
			out.println("alert('No Reservation')");
			out.println("location = 'reservation_insert.jsp'");
			out.println("</script>");
		
			}
		}
		
		
	

}
