package coffeeFactory.controller.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffeeFactory.dao.DaoAccount;
import coffeeFactory.dao.DaoProduct;
import coffeeFactory.dao.Dao_Qna;
import coffeeFactory.vo.Account;
import coffeeFactory.vo.Product;
import coffeeFactory.vo.Qna;

/**
 * Servlet implementation class QnaReplyController
 */
@WebServlet(name = "qna_reply.do", urlPatterns = { "/qna_reply.do" })
public class QnaReplyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaReplyController() {
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
		 int account_id = 0;
			
			HttpSession session = request.getSession();
			Object account_id_obj = session.getAttribute("account_id");
			if (account_id_obj != null) {
				account_id = (int)account_id_obj;
			}
			
		String proc= request.getParameter("proc");
	      String qna_idS = request.getParameter("qna_id");
	      
		if(qna_idS==null) qna_idS="0";
		int qna_id=0;
		try {
			qna_id = Integer.parseInt(qna_idS);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		  
		// model
		DaoAccount daoAccount = new DaoAccount();
		Account account = daoAccount.getAccount(account_id);
		if (account != null) {
			request.setAttribute("account", account);
			
		}
		Dao_Qna dao = new Dao_Qna();
		Qna qna = dao.getQnal(qna_id);
		request.setAttribute("qna", qna);
		request.setAttribute("ac", daoAccount.getAccount(qna.getAccount_id()));
		if(proc!=null) {
			
			if(proc.equals("upt")) {
				  String product_id = request.getParameter("product_id");
		    	  String account_ids = request.getParameter("account_ids");
		    	  String regist_date_s = request.getParameter("regist_date_s");
		    	  String title = request.getParameter("title");
		    	  String content = request.getParameter("content");
		    	  String reply_content = request.getParameter("reply_content");
				
		    	  Qna upt = new Qna(qna_id, Integer.parseInt(product_id),
						  Integer.parseInt(account_ids), regist_date_s,
						  title,content,reply_content );
			
		    	  dao.updateQna(upt);
			}
		}
		
		// view
		
		String page = "views\\qna\\qna_reply.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	
	}

}
