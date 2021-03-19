package coffeeFactory.controller.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.Dao_Qna;
import coffeeFactory.vo.Qna;

/**
 * Servlet implementation class QnaDeleteController
 */
@WebServlet(name = "qnadelete.do", urlPatterns = { "/qnadelete.do" })
public class QnaDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		// request
		int account_id = 0;
		
		HttpSession session = request.getSession();
		Object account_id_obj = session.getAttribute("account_id");
		if (account_id_obj != null) {
			account_id = (int)account_id_obj;
		}
		
		String proc= request.getParameter("proc");
		 
	      String qna_idS = request.getParameter("qna_id");
	      //숫자형 데이터에 대한 처리(에러 및 예외 처리)
	      if(qna_idS==null) qna_idS="0";
	      int qna_id=0;
	      //숫자형 입력하지 않더라도 에러로 수행을 정지시키는것을 막을 수 있다.
	      //문자열형으로 입력하면 review_id를 0으로 처리
	      try {
	    	  qna_id = Integer.parseInt(qna_idS);
	      }catch(Exception e) {
	    	  System.out.println(e.getMessage());
	      }
				
		// model
	      Dao_Qna dao = new Dao_Qna();
	      Qna qna = dao.getQnal(qna_id);
	      request.setAttribute("qna", qna);
	      DaoProduct daop = new DaoProduct();
	      request.setAttribute("pro", daop.getProduct2(qna.getProduct_id()));
	      
	      if(proc!=null) {
			 if(proc.equals("del")) {
				    		  
				 System.out.println("삭제준비 완료"+qna_id);
			 	dao.deleteQna(qna_id);
			  }
				
	      }
		// view
	      String page = "views\\qna\\qna_delete.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		
		
	}

}
