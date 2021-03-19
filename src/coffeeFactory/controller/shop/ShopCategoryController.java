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
import coffeeFactory.dao.DaoShop;
import coffeeFactory.vo.Product;
import coffeeFactory.vo.ProductEx;

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
		String category = request.getParameter("category");
		if(category==null) category="";
		String origin = request.getParameter("origin");
		if(origin==null) origin="";
		
		// Model
//		DaoProduct prodDao = new DaoProduct();
//		DaoProductOption poDao = new DaoProductOption();
//		ArrayList<Product> plist = prodDao.getProduct(origin);
//		ArrayList<Product> olist2 = prodDao.getOrigin(category);
//		request.setAttribute("prodlist", plist);
//		ProductOption productpo = poDao.getProdList(product_id);
		
//		request.setAttribute("origin2", olist2); // 상세카테고리 내 상세카테고리
//		request.setAttribute("prodpo", productpo);
		
		DaoShop dao = new DaoShop();
		ArrayList<ProductEx> plist = dao.getProduct(origin);
		ArrayList<Product> olist2 = dao.getOrigin(category);
		request.setAttribute("prodlist", plist); // 리스트+가격
		request.setAttribute("origin2", olist2); // 상세카테고리 내 상세카테고리
		
		
		
		// View
		String page = "views\\shop\\shop_category.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);		
	}

}
