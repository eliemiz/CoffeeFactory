package coffeeFactory.controller.wishlist;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffeeFactory.dao.DaoCart;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.DaoProductOption;
import coffeeFactory.dao.DaoWish;
import coffeeFactory.vo.ProductOption;
import coffeeFactory.vo.Wish;

/**
 * Servlet implementation class WishlistController
 */
@WebServlet(name = "wish.do", urlPatterns = { "/wish.do" })
public class WishlistController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishlistController() {
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
        
        DaoWish daoWish = new DaoWish();
        
        String proc = request.getParameter("proc");
        if (proc != null) {
            if (proc.equals("addW")) {       
               Wish wish = new Wish(account_id, product_id);
               daoWish.insertWish(wish);
             } else if (proc.equals("delete")) {
         	  DaoWish daoWishdel = new DaoWish(); 
         	  daoWishdel.deleteWish(account_id, product_id);
            }
         } 
        // Prod
        DaoProduct daoProd = new DaoProduct();
        request.setAttribute("prodList", daoProd.getProduct2(product_id));
        // ProdOption
        DaoProductOption daoProdOption = new DaoProductOption();
        ArrayList<ProductOption> poList = daoProdOption.getCapaList(product_id);
        request.setAttribute("poList", poList);
		
		String page = "views\\wishlist\\wishlist.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}
}
