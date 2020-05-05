package oop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oop.service.impl.LoginDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uEmail = request.getParameter("uEmail");
		String uPassword = request.getParameter("uPassword");
		
		LoginDAO dao = new LoginDAO();
		
		if((uEmail.equals("Admin@abc")|| uEmail.equals("admin@abc")) && (uPassword.equals("Admin") || uPassword.equals("admin")) )
		{
			HttpSession session = request.getSession();
			session.setAttribute("uEmail", uEmail);
			response.sendRedirect("UsersList.jsp");
		}
		else if (dao.checkCredentials(uEmail, uPassword))
		{
			HttpSession session = request.getSession();
			session.setAttribute("uEmail", uEmail);
			response.sendRedirect("index.jsp");
		}
		else {
			response.sendRedirect("SignUp_Login.jsp");
		}
		
		
		
		
	}

}
