package coffeeFactory.controller.mypage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MypageReviewController
 */
@WebServlet(name = "mypage_review.do", urlPatterns = { "/mypage_review.do" })
public class MypageReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// request
		// model
		// view
		String page = "views\\account_mypage\\mypage_review.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}