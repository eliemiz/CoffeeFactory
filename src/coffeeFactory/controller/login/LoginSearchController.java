package coffeeFactory.controller.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoAccount;
import coffeeFactory.vo.Account;

/**
 * Servlet implementation class LoginSearchController
 */
@WebServlet(name = "login_search.do", urlPatterns = { "/login_search.do" })
public class LoginSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// request
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		if (name == null) {
			name = "";
		}
		if (email == null) {
			email = "";
		}
		
		// model
		if (name != "") {
			DaoAccount daoAccount = new DaoAccount();
			Account account = daoAccount.search(name, email);
			if (account != null) {
				request.setAttribute("account", account);
			}
		}
		
		// view
		String page = "views\\account_login\\login_search.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
