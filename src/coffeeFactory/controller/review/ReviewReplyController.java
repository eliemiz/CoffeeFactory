package coffeeFactory.controller.review;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoReview;
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
		
		String proc= request.getParameter("proc");
		 
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
	      // 모델 
	      DaoReview dao = new DaoReview();
	      
	      if(proc!=null) {
	   
	    	  if(proc.equals("upt")) {
		    	  String product_id = request.getParameter("product_id");
		    	  String account_id = request.getParameter("account_id");
		    	  String regist_date_s = request.getParameter("regist_date_s");
		    	  String rating = request.getParameter("rating");
		    	  String title = request.getParameter("title");
		    	  String content = request.getParameter("content");
		    	  String image = request.getParameter("image");
		    	  String reply_content = request.getParameter("reply_content");
		    	  Review upt = new Review(review_id, Integer.parseInt(product_id),
		    			  Integer.parseInt(account_id), regist_date_s,Integer.parseInt(rating),
		    			  title,content,image,reply_content );
		                   
		    	  	dao.updateReview(upt);
	    	  }
	    	
	    	  
	      }
	      request.setAttribute("rev", dao.getReview(review_id));
		
		
		// 뷰
				String page = "views\\review\\review_reply.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
	}

}
