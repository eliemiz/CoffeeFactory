package coffeeFactory.controller.cart;

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
import coffeeFactory.dao.DaoCart;
import coffeeFactory.dao.DaoOrderByDetail;
import coffeeFactory.dao.DaoOrderByProduct;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Cart;

/**
 * Servlet implementation class PayController
 */
@WebServlet(name = "pay.do", urlPatterns = { "/pay.do" })
public class PayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		
		String price = request.getParameter("price"); 
		String send_name = request.getParameter("send_name"); 
		String send_email = request.getParameter("send_email");
		String send_phone = request.getParameter("send_phone"); 
		String send_phone2 = request.getParameter("send_phone2"); 
		String send_address = request.getParameter("send_address");
		String comment = request.getParameter("comment");
		String pay = request.getParameter("pay");
	

		int account_id = 0;
		
		HttpSession session = request.getSession();
		Object account_id_obj = session.getAttribute("account_id");
		if (account_id_obj != null) {
			account_id = (int)account_id_obj;
		}
		DaoCart daoCart = new DaoCart();
		DaoProduct daoProduct = new DaoProduct();
		DaoOrderByDetail daoOrderDetail = new DaoOrderByDetail();
		DaoOrderByProduct daoOrderProduct = new DaoOrderByProduct();
		DaoAccount daoAccount = new DaoAccount();
		
		Account account = daoAccount.getAccount(account_id);
		ArrayList<Cart> cartList = daoCart.getCartList(account_id);
		
		String proc = request.getParameter("proc");
		if (proc != null) {	
			if (proc.equals("order")) {
				response.sendRedirect("views\\cart\\orderfin.jsp");
			}
		}
		
		String page = "views\\cart\\pay.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
