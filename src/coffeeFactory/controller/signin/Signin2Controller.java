package coffeeFactory.controller.signin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoAccount;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Selection;

/**
 * Servlet implementation class Signin2Controller
 */
@WebServlet(name = "signin2.do", urlPatterns = { "/signin2.do" })
public class Signin2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signin2Controller() {
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
		String birthday = request.getParameter("birthday");
		String gender = request.getParameter("gender");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		String nickname = request.getParameter("nickname");
		String email = request.getParameter("email");
		String mail_recv = request.getParameter("mail_recv");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");

		String post = request.getParameter("post");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		
		String proc = request.getParameter("proc");
		if (proc == null) {
			proc = "";
		}
		// model
		if (proc.equals("insert")) {
			DaoAccount daoAccount = new DaoAccount();
			Account account = new Account(
					0, name, id, pass, nickname, birthday, gender, Integer.parseInt(post), address1,
					address2, email, phone1, phone2, mail_recv, "준회원");
			daoAccount.insertAccount(account);
		}
		
		request.setAttribute("domains", Selection.domains);
		request.setAttribute("area_code", Selection.areaCode);
		request.setAttribute("area_code_ex", Selection.areaCodeEx);
		
		// view
		String page = "views\\account_signin\\signin2.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
