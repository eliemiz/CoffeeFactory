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
import coffeeFactory.vo.Product;

/**
 * Servlet implementation class ShopSearchController
 */
@WebServlet(name = "shop_search.do", urlPatterns = { "/shop_search.do" })
public class ShopSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String page="";
		if(name==""){
			   page="views\\shop\\shop_search_fail.jsp";
			}
		if (name!="") {
			DaoProduct dao = new DaoProduct();
			ArrayList<Product> plist = dao.getSchList(name);
			request.setAttribute("prod", plist);
			page="views\\shop\\shop_search_result.jsp";
		}
		// String page = "views\\shop\\shop_search_result.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
