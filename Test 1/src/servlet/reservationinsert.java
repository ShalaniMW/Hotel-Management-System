package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.reservationDBUtil;

/**
 * Servlet implementation class reservationinsert
 */
@WebServlet("/reservationinsert")
public class reservationinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reservationinsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String cusId = request.getParameter("cusId");
		String hallId = request.getParameter("hallId");
		String date = request.getParameter("date");
		String function = request.getParameter("function");
		String NoOfhrs = request.getParameter("NoOfhrs");
		String menuType = request.getParameter("menuType");
		String NoOfguests = request.getParameter("NoOfguests");
		
		
		boolean isTrue;
		
		isTrue = reservationDBUtil.insertreservation(cusId, hallId, date, function, NoOfhrs, menuType, NoOfguests);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
