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
import coffeeFactory.dao.DaoReview;
import coffeeFactory.vo.Review;

/**
 * Servlet implementation class Z03_shopReview
 */
@WebServlet(name = "shopreview.do", urlPatterns = { "/shopreview.do" })
public class Z03_shopReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Z03_shopReview() {
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
	      //숫자형 데이터에 대한 처리(에러 및 예외 처리)
	      if(product_idS==null) product_idS="0";
	      
	      int product_id=0;
	      try {
	    	  product_id = Integer.parseInt(product_idS);
	      }catch(Exception e) {
	    	  System.out.println(e.getMessage());
	      }

		DaoProduct dao = new DaoProduct();
		DaoReview daor = new DaoReview();
		
		ArrayList<Review> list = daor.getReviewList(product_id);
		
		request.setAttribute("Rev",list);
		
		
	    String page = "views\\shop\\shop_front_detail.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
