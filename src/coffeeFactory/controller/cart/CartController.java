package coffeeFactory.controller.cart;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffeeFactory.dao.DaoAccount;
import coffeeFactory.dao.DaoCart;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Cart;

/**
 * Servlet implementation class CartController
 */
@WebServlet(name = "cart.do", urlPatterns = { "/cart.do" })
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		request.setCharacterEncoding("utf-8");
		
		String capacity = request.getParameter("capacity");
		String grind_id = request.getParameter("grind_id");
		String count = request.getParameter("count");

		int account_id = 0;
		HttpSession session = request.getSession();
		Object account_id_obj = session.getAttribute("account_id");
		if (account_id_obj != null) {
			account_id = (int)account_id_obj;
		}
		String proc = request.getParameter("proc");
		if (proc == null) {
			proc = "";
		}
		if (proc.equals("insert")) {
			DaoCart daoCart = new DaoCart();
			Cart cart = new Cart(
					0, 0, capacity, Integer.parseInt(grind_id), Integer.parseInt(count));
			daoCart.insertCart(cart);
		}
		
		
		DaoAccount daoAccount = new DaoAccount();
		Account account = daoAccount.getAccount(account_id);
		if (account != null) {
			request.setAttribute("account", account);
			
			DaoCart daoCart = new DaoCart();
			request.setAttribute("cartList", daoCart.getCartList(account_id));
		}
		String query = request.getParameter("query");
		if (query == null) {
			query = "";
		}
		request.setAttribute("query", query);
		
		//view
		String page = "views\\cart\\cartlist.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
