package coffeeFactory.controller.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffeeFactory.dao.DaoAccount;
import coffeeFactory.vo.Account;

/**
 * Servlet implementation class LoginController
 */
@WebServlet(name = "login.do", urlPatterns = { "/login.do" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		if (id == null) {
			id = "";
		}
		if (pass == null) {
			pass = "";
		}
		
		// model
		if (!id.equals("")) {
			DaoAccount dao = new DaoAccount();
			Account account = dao.login(id, pass);
			if (account != null) {
				HttpSession session = request.getSession();
				session.setAttribute("account_id", account.getAccount_id());
			}
		}
		
		// view
		String page = "views\\account_login\\login.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
