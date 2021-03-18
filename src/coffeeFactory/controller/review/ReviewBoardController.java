package coffeeFactory.controller.review;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffeeFactory.dao.DaoAccount;
import coffeeFactory.dao.DaoReview;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Review;

/**
 * Servlet implementation class ReviewBoardController
 */
@WebServlet(name = "review_board.do", urlPatterns = { "/review_board.do" })
public class ReviewBoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewBoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 요청
				request.setCharacterEncoding("utf-8");
				int account_id = 0;
				
				HttpSession session = request.getSession();
				Object account_id_obj = session.getAttribute("account_id");
				if (account_id_obj != null) {
					account_id = (int)account_id_obj;
				}
				
		// 모델
				DaoAccount daoAccount = new DaoAccount();
				Account account = daoAccount.getAccount(account_id);
				
				if (account != null) {
					request.setAttribute("account", account);
				}
				
				DaoReview dao = new DaoReview();
				ArrayList<Review> list = dao.getReviewList();
				
				request.setAttribute("Rev",list);
		
		// 뷰
				String page = "views\\review\\review_board.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
	}

}
