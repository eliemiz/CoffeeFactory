package coffeeFactory.controller.mypage;

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
 * Servlet implementation class MypageModifyController
 */
@WebServlet(name = "mypage_modify.do", urlPatterns = { "/mypage_modify.do" })
public class MypageModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageModifyController() {
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
		String proc = request.getParameter("proc");
		
		String page = "mypage.do?query=modify";
		if (proc != null) {
			if (proc.equals("update")) {
				HttpSession session = request.getSession();
				String account_id = session.getAttribute("account_id").toString();
				String nickname = request.getParameter("nickname");
				String birthday = request.getParameter("birthday");
				String gender = request.getParameter("gender");
				String post = request.getParameter("post");
				String address = request.getParameter("address1");
				String address2 = request.getParameter("address2");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone1");
				String phone2 = request.getParameter("phone2");
				String mail_recv = request.getParameter("mail_recv");
				
				DaoAccount daoAccount = new DaoAccount();
				daoAccount.updateAccount(new Account(Integer.parseInt(account_id), "", "", "", nickname, birthday,
						gender, Integer.parseInt(post), address, address2, email, phone, phone2, mail_recv, ""));
			} else if (proc.equals("delete")) {
				DaoAccount daoAccount = new DaoAccount();
				HttpSession session = request.getSession();
				String account_id = session.getAttribute("account_id").toString();
				daoAccount.deleteAccount(Integer.parseInt(account_id));
				session.setAttribute("account_id", null);
				page = "";
			}
		}
		
		// view
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
