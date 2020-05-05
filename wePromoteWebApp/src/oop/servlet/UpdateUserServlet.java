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
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
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
		
		String User_ID = request.getParameter("userid");
		String F_name = request.getParameter("Fname");
		String L_name = request.getParameter("Lname");
		String E_mail = request.getParameter("email");
		String Password = request.getParameter("pass");
		
		User obj_update_user = new User();
		
		obj_update_user.setUser_ID(User_ID);
		obj_update_user.setF_name(F_name);
		obj_update_user.setL_name(L_name);
		obj_update_user.setEmail(E_mail);
		obj_update_user.setPassword(Password);
		
		UserService updateUserService = new UserServiceImpl();
		boolean isUpdated = updateUserService.updateUserDetails(obj_update_user);
		
		if(isUpdated == true) {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UsersList.jsp");
			dispatcher.include(request, response);
			System.out.println("Succssful");
		}
		else
			System.out.println("Unsuccessful");
	}

}
