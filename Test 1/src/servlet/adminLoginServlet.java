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

import model.admin;
import util.AdminDBUtil;

/**
 * Servlet implementation class adminLoginServlet
 */
@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean isTrue;
		
		isTrue = AdminDBUtil.validateAdmin(username, password);
		
		if(isTrue == true){
			List<admin> admDetails = AdminDBUtil.getAdmin(username);
			request.setAttribute("admDetails",admDetails);
		
			RequestDispatcher dis = request.getRequestDispatcher("homehome.jsp");
			dis.forward(request,response);
		
		}else {
		
			out.println("<script type= 'text/javascript'>");
			out.println("alert('User Name or Password is incorrect')");
			out.println("location = 'adminLogin.jsp'");
			out.println("</script>");
		
			}
		}
	}


