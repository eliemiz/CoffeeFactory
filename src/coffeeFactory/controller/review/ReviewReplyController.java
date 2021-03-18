package coffeeFactory.controller.review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffeeFactory.dao.DaoAccount;
import coffeeFactory.dao.DaoMypage;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.DaoReview;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Review;

/**
 * Servlet implementation class ReviewReplyController
 */
@WebServlet(name = "review_reply.do", urlPatterns = { "/review_reply.do" })
public class ReviewReplyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewReplyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 int account_id = 0;
			
			HttpSession session = request.getSession();
			Object account_id_obj = session.getAttribute("account_id");
			if (account_id_obj != null) {
				account_id = (int)account_id_obj;
			}
			
		String proc= request.getParameter("proc");
		 
	      String review_idS = request.getParameter("review_id");
	      
	      
	      if(review_idS==null) review_idS="0";
	      int review_id=0;
	      try {
	    	  review_id = Integer.parseInt(review_idS);
	      }catch(Exception e) {
	    	  System.out.println(e.getMessage());
	      }
	      
	      
	      // 모델 
	     
			DaoAccount daoAccount = new DaoAccount();
			Account account = daoAccount.getAccount(account_id);
			if (account != null) {
				request.setAttribute("account", account);
				
			}
	      DaoReview dao = new DaoReview();
	      Review review = dao.getReview(review_id);
	      request.setAttribute("rev", review);
		request.setAttribute("ac", daoAccount.getAccount(review.getAccount_id()));
	      if(proc!=null) {
	   
	    	  if(proc.equals("upt")) {
		    	  String product_id = request.getParameter("product_id");
		    	  String account_ids = request.getParameter("account_id");
		    	  String regist_date_s = request.getParameter("regist_date_s");
		    	  String rating = request.getParameter("rating");
		    	  String title = request.getParameter("title");
		    	  String content = request.getParameter("content");
		    	  String image = request.getParameter("image");
		    	  String reply_content = request.getParameter("reply_content");
		    	  Review upt = new Review(review_id, Integer.parseInt(product_id),
		    			  Integer.parseInt(account_ids), regist_date_s,Integer.parseInt(rating),
		    			  title,content,image,reply_content );
		                   
		    	  	dao.updateReview(upt);
	    	  }
	    	
	    	  
	      }
		
		
		// 뷰
				String page = "views\\review\\review_reply.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
	}

}
