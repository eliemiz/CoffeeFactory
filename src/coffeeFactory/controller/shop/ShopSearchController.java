package coffeeFactory.controller.shop;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoShop;
import coffeeFactory.vo.ProductEx;

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
		String search_name = request.getParameter("search_name");
		String page="";
		if(search_name==""){
			   page="views\\shop\\shop_search_fail.jsp";
			}
		if (search_name!="") {
//			DaoProduct dao = new DaoProduct();
			DaoShop dao = new DaoShop();
			ArrayList<ProductEx> plist = dao.getSchList(search_name);
			request.setAttribute("prodlist", plist);
			page="views\\shop\\shop_search_result.jsp";
		}
		// String page = "views\\shop\\shop_search_result.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
