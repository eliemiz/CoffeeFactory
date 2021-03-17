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
 * Servlet implementation class ReviewWriteController
 */
@WebServlet(name = "review_write.do", urlPatterns = { "/review_write.do" })
public class ReviewWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewWriteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		// 요청
		request.setCharacterEncoding("utf-8");
		
			String product_id = request.getParameter("product_id");
		   if(product_id==null||product_id.trim().equals("")) product_id="0";
		   log("#product_id: "+product_id);
		   
		   String account_id = request.getParameter("account_id");
		   if(account_id==null||account_id.trim().equals("")) account_id="0";
		   log("#rating: "+account_id);
		   
		   String rating = request.getParameter("rating");
		   if(rating==null||rating.trim().equals("")) rating="0";
		   log("#rating: "+rating);
		   
		   String title = request.getParameter("title"); 
		   if(title==null) title="";
		   log("#title: "+title);

		   String content = request.getParameter("content"); 
		   if(content==null) content="";
		   log("#content: "+content);
		   
		   String image = request.getParameter("image"); 
		   if(image==null) image="";
		   log("#image: "+image);
		   
		   String reply_content = request.getParameter("reply_content"); 
		   if(reply_content==null) reply_content="";
		   log("#reply_content: "+reply_content);
		   
		  
		   
		   
		   // 입력할 객체 완성.
		   if(!product_id.equals("")){ // 초기 화면과 구분하기 위해서
			   Review ins = new Review(Integer.parseInt(product_id), Integer.parseInt(account_id),
					   Integer.parseInt(rating), title, 
		            content, image, reply_content);
		      log("#입력 내용 확인: "+ins.getTitle());
		      DaoReview dao = new DaoReview();
		      dao.insertReview(ins);
		   }
		
		
		// 모델
				
		
		
		// 뷰
				String page = "views\\review\\review_write.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
	}

}
