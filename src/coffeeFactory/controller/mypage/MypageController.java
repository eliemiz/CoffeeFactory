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
import coffeeFactory.dao.DaoMypage;
import coffeeFactory.dao.DaoOrderByDetail;
import coffeeFactory.dao.DaoReview;
import coffeeFactory.dao.Dao_Qna;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Selection;

/**
 * Servlet implementation class MypageController
 */
@WebServlet(name = "mypage.do", urlPatterns = { "/mypage.do" })
public class MypageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageController() {
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

		int account_id = 0;
		
		HttpSession session = request.getSession();
		Object account_id_obj = session.getAttribute("account_id");
		if (account_id_obj != null) {
			account_id = (int)account_id_obj;
		}
		
		// model
		DaoAccount daoAccount = new DaoAccount();
		Account account = daoAccount.getAccount(account_id);
		if (account != null) {
			request.setAttribute("account", account);
			
			// order
			DaoOrderByDetail daoOrder = new DaoOrderByDetail();
			request.setAttribute("orderList", daoOrder.getOrderByDetailList(account_id));
			
			// qna, wish, review
			DaoMypage daoMypage = new DaoMypage();
			request.setAttribute("qnaList", daoMypage.getQnaList(account_id));		// qna
			request.setAttribute("wishList", daoMypage.getWishList(account_id));	// wish
			request.setAttribute("reviewList", daoMypage.getReviewList(account_id));
			
			// for modify
			request.setAttribute("domains", Selection.domains);
			request.setAttribute("area_code", Selection.areaCode);
			request.setAttribute("area_code_ex", Selection.areaCodeEx);
		}
		
		// 페이지 설정을 위한 query
		String query = request.getParameter("query");
		if (query == null) {
			query = "";
		}
		request.setAttribute("query", query);
		
		// view
		String page = "views\\account_mypage\\mypage.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);		
	}

}
