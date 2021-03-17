package coffeeFactory.controller.shop;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.DaoProductOption;
import coffeeFactory.vo.Product;
import coffeeFactory.vo.ProductOption;

/**
 * Servlet implementation class ShopCategoryController
 */
@WebServlet(name = "shop_category.do", urlPatterns = { "/shop_category.do" })
public class ShopCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopCategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Request
		request.setCharacterEncoding("utf-8");
		String origin = request.getParameter("origin");
		if(origin==null) origin="";
		String product_idS = request.getParameter("product_id");
		if(product_idS==null) product_idS = "0";
		int product_id = Integer.parseInt(product_idS);
		
		// Model
		DaoProduct prodDao = new DaoProduct();
		DaoProductOption poDao = new DaoProductOption();
		ArrayList<Product> plist = prodDao.getProduct(origin);
		ProductOption product = poDao.getProdList(product_id);
		request.setAttribute("prodlist", plist);
		request.setAttribute("prod", product);
		
		// View
		String page = "views\\shop\\shop_category.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);		
	}

}
