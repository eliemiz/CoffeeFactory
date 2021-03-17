package coffeeFactory.controller.shop;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoGrind;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.DaoProductOption;
import coffeeFactory.vo.Product;
import coffeeFactory.vo.ProductGrind;
import coffeeFactory.vo.ProductOption;

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
		String product_idS = request.getParameter("product_id");
		if(product_idS==null) product_idS="0";
		int product_id = Integer.parseInt(product_idS);

		DaoProduct dao = new DaoProduct();
		DaoGrind daog = new DaoGrind();
		DaoProductOption daopo = new DaoProductOption();
		Product product = dao.getProduct2(product_id);
		ArrayList<ProductGrind> glist = daog.grindList();
		ArrayList<ProductOption> polist = daopo.getCapaList(product_id);
		request.setAttribute("prod", product);
		request.setAttribute("grind", glist);
		request.setAttribute("po", polist);
	    String page = "views\\shop\\shop_detail.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
