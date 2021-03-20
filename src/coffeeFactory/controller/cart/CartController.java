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
import coffeeFactory.dao.DaoGrind;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.DaoProductOption;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Cart;
import coffeeFactory.vo.ProductGrind;
import coffeeFactory.vo.ProductOption;

/**
 * Servlet implementation class CartController
 */
@WebServlet(name = "cart.do", urlPatterns = { "/cart.do" })
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        
        request.setCharacterEncoding("utf-8");
        
        // # shop_detail 페이지에서 parameter를 받아오는 부분
        String capacity = request.getParameter("capacity");
        
        String grind_idS = request.getParameter("grind_id");
        if(grind_idS==null) grind_idS="0";
        int grind_id = Integer.parseInt(grind_idS);
        
        String countS = request.getParameter("count");
        if(countS==null) countS="0";
        int count = Integer.parseInt(countS);
        
        String priceS = request.getParameter("price");
        if(priceS==null) priceS="0";
        int price = Integer.parseInt(priceS);
        
        String product_idS = request.getParameter("product_id");
         if(product_idS==null) product_idS="0";
         int product_id = Integer.parseInt(product_idS);
     
        
         // # 로그인 된 상태일 경우 session에서 account_id를 받아올 수 있다.
        int account_id = 0;
        HttpSession session = request.getSession();
        Object account_id_obj = session.getAttribute("account_id");
        if (account_id_obj != null) {
           account_id = (int)account_id_obj;
        }
        
        // # shop_detail 페이지에서 proc parameter를 가져온다.
        // 현재 addC, addP 등을 보내고 있다.
        // 장바구니 버튼을 누를 경우 proc값이 addC로 넘어오므로 해당 proc일때를 처리해준다.
        // proc값 여부에 따라 DaoCart를 쓸 수도 있으므로 위로 옮겨서 선언해준다.
        DaoCart daoCart = new DaoCart();
        
        String proc = request.getParameter("proc");
        if (proc != null) {
           if (proc.equals("addC")) {
              // # public Cart(int account_id, int product_id, String capacity, int grind_id, int count, int price) {...}
              Cart cart = new Cart(account_id, product_id, capacity, grind_id, count, price);
              daoCart.insertCart(cart);
           } else if (proc.equals("delete")) {
        	  DaoCart daoCartdel = new DaoCart(); 
        	  daoCartdel.deleteCart(account_id);
           }
        } 
        
        DaoAccount daoAccount = new DaoAccount();
        Account account = daoAccount.getAccount(account_id);
        if (account != null) {
           request.setAttribute("account", account);
        }
        
        // Cart
        request.setAttribute("cartList", daoCart.getCartList(account_id));
        // Prod
        DaoProduct daoProd = new DaoProduct();
        request.setAttribute("prodList", daoProd.getProduct2(product_id));
        // ProdOption
        DaoProductOption daoProdOption = new DaoProductOption();
        ArrayList<ProductOption> poList = daoProdOption.getCapaList(product_id);
        request.setAttribute("OptionList", poList);
        // Grind
        DaoGrind daoGrind = new DaoGrind();
        ArrayList<ProductGrind> gList = daoGrind.grindList();
        request.setAttribute("grindList", gList);
        
        
        //view
        String page = "views\\cart\\cartlist.jsp";
        RequestDispatcher rd = request.getRequestDispatcher(page);
        rd.forward(request, response);
     }
}