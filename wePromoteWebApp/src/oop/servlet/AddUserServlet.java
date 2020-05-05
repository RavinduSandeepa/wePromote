package oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oop.model.User;
import oop.service.UserService;
import oop.service.impl.UserServiceImpl;

/**
 * Servlet implementation class AddUserServlet
 */
@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserServlet() {
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
		
		String fname = request.getParameter("Fname");
		String lname = request.getParameter("Lname");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		
		User user = new User();
		
		user.setF_name(fname);
		user.setL_name(lname);
		user.setEmail(email);
		user.setPassword(password);
		
		UserService userService = new UserServiceImpl();
		
		boolean isAdded = userService.addNewUser(user);
		
		if(isAdded == false) {
			System.out.println("Success");
		}else
			System.out.println("Successful");
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/SignUp_Login.jsp");
		dispatcher.forward(request, response);
		
	}

}
