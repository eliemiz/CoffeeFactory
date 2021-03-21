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
import coffeeFactory.dao.DaoReview;
import coffeeFactory.dao.DaoShop;
import coffeeFactory.dao.DaoWish;
import coffeeFactory.dao.Dao_Qna;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Cart;
import coffeeFactory.vo.OrderByProduct;
import coffeeFactory.vo.Product;
import coffeeFactory.vo.ProductGrind;
import coffeeFactory.vo.ProductOption;
import coffeeFactory.vo.Qna;
import coffeeFactory.vo.Review;
import coffeeFactory.vo.Wish;

/**
 * Servlet implementation class ShopDetailController
 */
@WebServlet(name = "shop_detail.do", urlPatterns = { "/shop_detail.do" })
public class ShopDetailController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
    */
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      /* Request */
      // shop
      request.setCharacterEncoding("utf-8");
      String product_idS = request.getParameter("product_id");
      if(product_idS==null) product_idS="0";
      int product_id = Integer.parseInt(product_idS);

      
      // Q&A
      /*
      String proc = request.getParameter("proc");
      String qna_idS = request.getParameter("qna_id");
      if(qna_idS==null) qna_idS="0";
      int qna_id=0;
      qna_id = Integer.parseInt(qna_idS);
      */
      // review와 account_id 동일하게 사용 > 중복되므로 작성x
      
      // review
      
      int account_id = 0;
      
      HttpSession session = request.getSession();
      Object account_id_obj = session.getAttribute("account_id");
      if (account_id_obj != null) {
         account_id = (int)account_id_obj;
      }
      
      // model
      
      
      /* Model */
      // shop
      DaoShop dao = new DaoShop();
//      DaoProduct dao = new DaoProduct();
      DaoGrind daog = new DaoGrind();
//      DaoProductOption daopo = new DaoProductOption();
      Product product = dao.getProduct2(product_id);
      ArrayList<ProductGrind> glist = daog.grindList();
      ArrayList<ProductOption> polist = dao.getCapaList(product_id);
      request.setAttribute("prod", product);
      request.setAttribute("grind", glist);
      request.setAttribute("po", polist);
      
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
		                  
//		   	  daoc.insertCart(addC);
	      } else if(proc.equals("addP")) {
	    	  String account_ids = request.getParameter("account_ids");
		   	  String product_ids = request.getParameter("product_ids");
		   	  String capacity = request.getParameter("capacity");
		   	  String grind_id = request.getParameter("grind_id");
		   	  String count = request.getParameter("count");
		   	  String price = request.getParameter("price");
		   	  OrderByProduct addP = new OrderByProduct(Integer.parseInt(account_ids), Integer.parseInt(product_ids), capacity,
		   			 Integer.parseInt(grind_id), Integer.parseInt(count), Integer.parseInt(price));
		                  
//		   	  daoo.insertOrderByProduct(addP);
	      }else if(proc.equals("addW")) {
	    	  String account_ids = request.getParameter("account_ids");
		   	  String product_ids = request.getParameter("product_ids");
		   	  Wish addW = new Wish(Integer.parseInt(account_ids), Integer.parseInt(product_ids));
	                  
//		   	  daow.insertWish(addW);
	      }
	  }      
      
      // Q&A
      
      Dao_Qna daoq = new Dao_Qna();
      ArrayList<Qna> qlist = daoq.getQnaList(product_id);
      
      
      DaoAccount daoa = new DaoAccount();
      Account accountq = daoa.getAccount(account_id);
     
      if(accountq != null) {
    	  request.setAttribute("account", accountq);
      }
      request.setAttribute("Qna", qlist); // shop_detail.jsp QNA부분
      
      // request.setAttribute("ac", daoa.getAccount(account_id));
     
//      ArrayList<Qna> qlist2 = daoq.getQna(qna_id);
      /*
      if(proc!=null) {
    	  if(proc.equals("del")) {
        	  System.out.println("삭제준비완료: "+qna_id);
        	  daoq.deleteQna(qna_id);
          }
      } */
     
//      request.setAttribute("Qna2", qlist2);
    
      
      // review
         
      DaoReview daor = new DaoReview();
      ArrayList<Review> list = daor.getReviewList(product_id);
      
      DaoAccount daoAccount = new DaoAccount();
      Account account = daoAccount.getAccount(account_id);
      
      if (account != null) {
         request.setAttribute("account", account);
         /* request.setAttribute("ac", daoAccount.getAccount(account_id)); */   
      }
      request.setAttribute("Rev",list);
      /* View */
      String page = "views\\shop\\shop_detail.jsp";
      RequestDispatcher rd = request.getRequestDispatcher(page);
      rd.forward(request, response);
   }

}