package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.auth;
import model.user;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("name");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		RequestDispatcher rd = null;

		auth authenticator = new auth();
		String result = authenticator.authenticate(username, password);
		if (result.equals("success")) {
			rd = request.getRequestDispatcher("/success.jsp");
			user user = new user(username, password, role);
			request.setAttribute("user", user);
		} else {
			rd = request.getRequestDispatcher("/error.jsp");
		}
		rd.forward(request, response);

	}
}
