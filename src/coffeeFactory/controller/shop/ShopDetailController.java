package coffeeFactory.controller.shop;

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
import coffeeFactory.dao.DaoGrind;
import coffeeFactory.dao.DaoMypage;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.DaoProductOption;
import coffeeFactory.dao.DaoReview;
import coffeeFactory.dao.Dao_Qna;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Product;
import coffeeFactory.vo.ProductGrind;
import coffeeFactory.vo.ProductOption;
import coffeeFactory.vo.Qna;
import coffeeFactory.vo.Review;

/**
 * Servlet implementation class ShopDetailController
 */
@WebServlet(name = "shop_detail.do", urlPatterns = { "/shop_detail.do" })
public class ShopDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* Request */
		// shop
		request.setCharacterEncoding("utf-8");
		String product_idS = request.getParameter("product_id");
		if(product_idS==null) product_idS="0";
		int product_id = Integer.parseInt(product_idS);

		
		// Q&A
		
		// review
		
		int account_id = 0;
		
		HttpSession session = request.getSession();
		Object account_id_obj = session.getAttribute("account_id");
		if (account_id_obj != null) {
			account_id = (int)account_id_obj;
		}
		
		// model
		
		
		/* Model */
		// shop
		DaoProduct dao = new DaoProduct();
		DaoGrind daog = new DaoGrind();
		DaoProductOption daopo = new DaoProductOption();
		Product product = dao.getProduct2(product_id);
		ArrayList<ProductGrind> glist = daog.grindList();
		ArrayList<ProductOption> polist = daopo.getCapaList(product_id);
		request.setAttribute("prod", product);
		request.setAttribute("grind", glist);
		request.setAttribute("po", polist);
		
		// Q&A
		
		Dao_Qna daoq = new Dao_Qna();
		DaoAccount daoa = new DaoAccount();
		
		ArrayList<Qna> qlist = daoq.getQnaList(product_id);
		request.setAttribute("ac", daoa.getAccount(account_id));
		
		
		request.setAttribute("Qna", qlist);
		
		// review
			
		DaoReview daor = new DaoReview();
		ArrayList<Review> list = daor.getReviewList(product_id);
		
		DaoAccount daoAccount = new DaoAccount();
		Account account = daoAccount.getAccount(account_id);
		
		if (account != null) {
			request.setAttribute("account", account);
			/* request.setAttribute("ac", daoAccount.getAccount(account_id)); */	
		}
		request.setAttribute("Rev",list);
		/* View */
		String page = "views\\shop\\shop_front_detail.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}