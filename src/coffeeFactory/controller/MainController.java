package coffeeFactory.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffeeFactory.dao.DaoMypage;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.DaoReview;
import coffeeFactory.dao.DaoShop;
import coffeeFactory.vo.ProductEx;
import coffeeFactory.vo.Review;
import coffeeFactory.vo.ReviewEx;

/**
 * Servlet implementation class MainController
 */
@WebServlet(name = "index.do", urlPatterns = { "/index.do" })
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MainController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// request
		request.setCharacterEncoding("utf-8");
		String proc = request.getParameter("proc");
		if (proc == null) {
			proc = "";
		}
		
		// model
		if (proc.equals("logout")) {
			HttpSession session = request.getSession();
			session.setAttribute("account_id", null);
		}
		
		// 베스트 상품 불러오기
		DaoShop daoShop = new DaoShop();
		List<ProductEx> productList = new ArrayList<ProductEx>();
		List<ProductEx> tempList = null;
		tempList = daoShop.getProdList("블랜드");
		productList.addAll(tempList.subList(0, (tempList.size() < 4)?tempList.size():4));
		tempList = daoShop.getProdList("싱글오리진");
		productList.addAll(tempList.subList(0, (tempList.size() < 4)?tempList.size():4));
		tempList = daoShop.getProdList("스페셜");
		productList.addAll(tempList.subList(0, (tempList.size() < 4)?tempList.size():4));
		tempList = daoShop.getProdList("선물세트");
		productList.addAll(tempList.subList(0, (tempList.size() < 4)?tempList.size():4));
		request.setAttribute("productList", productList);
		
		// 리뷰 5개 불러오기
		DaoMypage daomypage = new DaoMypage();
		List<ReviewEx> reviewList = daomypage.getReviewListByCount(5);
		int reviewSize = (reviewList.size() < 5)? reviewList.size() : 5;
		request.setAttribute("reviewList", reviewList.subList(0, reviewSize));
		
		
		// view
		String page = "Index.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
