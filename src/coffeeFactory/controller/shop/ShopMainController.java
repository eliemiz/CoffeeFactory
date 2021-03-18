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
 * Servlet implementation class ShopMainController
 */
@WebServlet(name = "shop_main.do", urlPatterns = { "/shop_main.do" })
public class ShopMainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopMainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Request
		request.setCharacterEncoding("utf-8");
		String category = request.getParameter("category");
		if(category==null) category="";
		String product_idS = request.getParameter("product_id");
		if(product_idS==null) product_idS = "0";
		int product_id = Integer.parseInt(product_idS);
		// Model
		DaoProduct prodDao = new DaoProduct();
		DaoProductOption poDao = new DaoProductOption();
		ArrayList<Product> plist = prodDao.getProdList(category);
		ArrayList<Product> olist = prodDao.getOrigin(category);
		ProductOption product = poDao.getProdList(product_id);
		request.setAttribute("prodlist", plist); // 전체 조회
		request.setAttribute("origin", olist);
		request.setAttribute("prod", product); // 가격
		// View
		String page = "views\\shop\\shop_main.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
