package coffeeFactory.controller.review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoAccount;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.DaoReview;

/**
 * Servlet implementation class ReviewDetailController
 */
@WebServlet(name = "review_detatil.do", urlPatterns = { "/review_detatil.do" })
public class ReviewDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		// 요청
		request.setCharacterEncoding("utf-8");
		
		String review_idS = request.getParameter("review_id");
	      //숫자형 데이터에 대한 처리(에러 및 예외 처리)
	      if(review_idS==null) review_idS="0";
	      
	      int review_id=0;
	      //숫자형 입력하지 않더라도 에러로 수행을 정지시키는것을 막을 수 있다.
	      //문자열형으로 입력하면 review_id를 0으로 처리
	      try {
	    	  review_id = Integer.parseInt(review_idS);
	      }catch(Exception e) {
	    	  System.out.println(e.getMessage());
	      }
	      
	      String product_idS = request.getParameter("product_id");
	      //숫자형 데이터에 대한 처리(에러 및 예외 처리)
	      if(product_idS==null) product_idS="0";
	      
	      int product_id=0;
	      try {
	    	  product_id = Integer.parseInt(product_idS);
	      }catch(Exception e) {
	    	  System.out.println(e.getMessage());
	      }
		
	      String account_idS = request.getParameter("account_id");
	      //숫자형 데이터에 대한 처리(에러 및 예외 처리)
	      if(account_idS==null) account_idS="0";
	      
	      int account_id=0;
	      try {
	    	  account_id = Integer.parseInt(account_idS);
	      }catch(Exception e) {
	    	  System.out.println(e.getMessage());
	      }
	    
		
		// 모델
	      DaoReview dao = new DaoReview();
	      DaoProduct daop = new DaoProduct();
	      DaoAccount daoa = new DaoAccount();
	      
		request.setAttribute("rev", dao.getReview(review_id));
		request.setAttribute("pro", daop.getProduct2(product_id));
		request.setAttribute("ac", daoa.getAccount(account_id));
		
		
		// 뷰 
				String page = "views\\review\\review_board_detail.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
				
	}

}
