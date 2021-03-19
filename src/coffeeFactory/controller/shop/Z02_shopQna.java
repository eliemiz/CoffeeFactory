package coffeeFactory.controller.shop;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoAccount;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.Dao_Qna;
import coffeeFactory.vo.Qna;

/**
 * Servlet implementation class Z02_shopQna
 */
@WebServlet(name = "shopqna.do", urlPatterns = { "/shopqna.do" })
public class Z02_shopQna extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Z02_shopQna() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// request
		request.setCharacterEncoding("utf-8");
		String product_idS = request.getParameter("product_id");
		
		// model
		if(product_idS==null) product_idS="0";
		
		int product_id=0;
		try {
			product_id = Integer.parseInt(product_idS);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		
		String account_idS = request.getParameter("account_id");
	    //숫자형 데이터에 대한 처리(에러 및 예외 처리)
	    if(product_idS==null) account_idS="0";
	      
	    int account_id=0;
	    try {
	    	account_id = Integer.parseInt(account_idS);
	    }catch(Exception e) {
	    	System.out.println(e.getMessage());
	    }
	      
		DaoProduct dao = new DaoProduct();
		Dao_Qna daoq = new Dao_Qna();
		DaoAccount daoa = new DaoAccount();
		
		ArrayList<Qna> list = daoq.getQnaList(product_id);
		request.setAttribute("ac", daoa.getAccount(account_id));
		
		request.setAttribute("Qna", list);
		
		// view
		String page = "views\\shop\\shop_front_detail.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		
		
	}

}
