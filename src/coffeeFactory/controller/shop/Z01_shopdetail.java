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
import coffeeFactory.dao.DaoCart;
import coffeeFactory.dao.DaoGrind;
import coffeeFactory.dao.DaoOrderByProduct;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.DaoProductOption;
import coffeeFactory.dao.DaoWish;
import coffeeFactory.dao.Dao_Notice;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Cart;
import coffeeFactory.vo.Notice;
import coffeeFactory.vo.OrderByProduct;
import coffeeFactory.vo.Product;
import coffeeFactory.vo.ProductGrind;
import coffeeFactory.vo.ProductOption;
import coffeeFactory.vo.Review;
import coffeeFactory.vo.Wish;

/**
 * Servlet implementation class Z01_shopdetail
 */
@WebServlet(name = "shopdetail.do", urlPatterns = { "/shopdetail.do" })
public class Z01_shopdetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Z01_shopdetail() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		int account_id = 0;
		
		HttpSession session = request.getSession();
		Object account_id_obj = session.getAttribute("account_id");
		if (account_id_obj != null) {
			account_id = (int)account_id_obj;
		}
		
		String product_idS = request.getParameter("product_id");
		if(product_idS==null) product_idS="0";
		int product_id = Integer.parseInt(product_idS);
		
		String proc= request.getParameter("proc");
		DaoCart daoc = new DaoCart();
		DaoOrderByProduct daoo = new DaoOrderByProduct();
		DaoWish daow = new DaoWish();
		
	      if(proc!=null) {
	   	   
	    	  if(proc.equals("addC")) {
	    		  String account_ids = request.getParameter("account_ids");
		    	  String product_ids = request.getParameter("product_ids");
		    	  String capacity = request.getParameter("capacity");
		    	  String grind_id = request.getParameter("grind_id");
		    	  String count = request.getParameter("count");
		    	  String price = request.getParameter("price");
		    	  Cart addC = new Cart(Integer.parseInt(account_ids), Integer.parseInt(product_ids), capacity,
		    			 Integer.parseInt(grind_id), Integer.parseInt(count), Integer.parseInt(price));
		                   
		    	  daoc.insertCart(addC);
	    	  }
	    	  if(proc.equals("addP")) {
	    		  String account_ids = request.getParameter("account_ids");
		    	  String product_ids = request.getParameter("product_ids");
		    	  String capacity = request.getParameter("capacity");
		    	  String grind_id = request.getParameter("grind_id");
		    	  String count = request.getParameter("count");
		    	  String price = request.getParameter("price");
		    	  OrderByProduct addP = new OrderByProduct(Integer.parseInt(account_ids), Integer.parseInt(product_ids), capacity,
		    			 Integer.parseInt(grind_id), Integer.parseInt(count), Integer.parseInt(price));
		                   
		    	  daoo.insertOrderByProduct(addP);
	    	  }
	    	  if(proc.equals("addW")) {
	    		  String account_ids = request.getParameter("account_ids");
		    	  String product_ids = request.getParameter("product_ids");
		    	  Wish addW = new Wish(Integer.parseInt(account_ids), Integer.parseInt(product_ids));
		                   
		    	  daow.insertWish(addW);
	    	  }
	      }
		DaoProduct dao = new DaoProduct();
		DaoGrind daog = new DaoGrind();
		DaoProductOption daopo = new DaoProductOption();
		
		ArrayList<Wish> wlist = daow.getWish();
		ArrayList<OrderByProduct> olist = daoo.getOrderProductList();
		ArrayList<Cart> clist = daoc.getCartList();
		Product product = dao.getProduct2(product_id);
		ArrayList<ProductGrind> glist = daog.grindList();
		ArrayList<ProductOption> polist = daopo.getCapaList(product_id);
		
		request.setAttribute("cart", clist);
		request.setAttribute("grind", glist);
		request.setAttribute("po", polist);
	    String page = "views\\shop\\shop_detail.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
