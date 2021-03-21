package coffeeFactory.controller.order;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffeeFactory.dao.DaoOrderByDetail;
import coffeeFactory.dao.DaoOrderByProduct;
import coffeeFactory.dao.DaoProductOption;
import coffeeFactory.vo.Cart;
import coffeeFactory.vo.OrderByDetail;
import coffeeFactory.vo.OrderByProduct;
import coffeeFactory.vo.ProductOption;

/**
 * Servlet implementation class OrderlistController
 */
@WebServlet(name = "order.do", urlPatterns = { "/order.do" })
public class OrderlistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderlistController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String product_idS = request.getParameter("product_id");
        if(product_idS==null) product_idS="0";
        int product_id = Integer.parseInt(product_idS);
		
		int account_id = 0;
	    HttpSession session = request.getSession();
	    Object account_id_obj = session.getAttribute("account_id");
	    if (account_id_obj != null) {
	       account_id = (int)account_id_obj;
	    }
		

		
		/*if (proc.equals("insert")) {
			DaoOrderByProduct daoOrderins = new DaoOrderByProduct(); 
			OrderByProduct orderProd = new orderProd( 0, 0, capacity,
				Integer.parseInt(grind_id), Integer.parseInt(count), Integer.parseInt(price));
			daoOrderins.getOrderByProductList(order_id);*/
		
	    DaoOrderByDetail daoOB = new DaoOrderByDetail();
	    request.setAttribute("orderList", daoOB.getOrderByDetailList(account_id));
	    DaoProductOption daoProdOption = new DaoProductOption();
        ArrayList<ProductOption> poList = daoProdOption.getCapaList(product_id);
        request.setAttribute("poList", poList);
		
		String page = "views\\order\\orderlist.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
