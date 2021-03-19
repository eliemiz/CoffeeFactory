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
 * Servlet implementation class QnaWriteController
 */
@WebServlet(name = "qna_write.do", urlPatterns = { "/qna_write.do" })
public class QnaWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaWriteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*
		 private int qna_id;
		private int product_id;
		private int account_id;
		private Date regist_date;
		private String regist_date_s;
		private String title;
		private String content;
		private String reply_content;
		 * */
		// request
		request.setCharacterEncoding("utf-8");
		int account_id = 0;
		
		HttpSession session = request.getSession();
		Object account_id_obj = session.getAttribute("account_id");
		if (account_id_obj != null) {
			account_id = (int)account_id_obj;
		}
		
		String product_idS = request.getParameter("product_id");
	      if(product_idS==null) product_idS="0";
	      int product_id = Integer.parseInt(product_idS);
		
		
		String account_ids = request.getParameter("account_ids"); 
		if(account_ids==null||account_ids.trim().equals("")) account_ids="0"; 
		log("#account_id:"+account_ids);
		
		String product_ids = request.getParameter("product_ids");
		   if(product_ids==null||product_ids.trim().equals("")) product_ids="0";
		   log("#product_ids: "+product_ids);
		   
		String title = request.getParameter("title"); 
		if(title==null) title=""; log("#title:"+title);
		
		String content = request.getParameter("content"); 
		if(content==null) content=""; log("#content:"+content);
		
		String reply_content = request.getParameter("reply_content"); 
		   if(reply_content==null) reply_content="";
		   log("#reply_content: "+reply_content);
		   
		   DaoAccount daoAccount = new DaoAccount();
			Account account = daoAccount.getAccount(account_id);
			if (account != null) {
				request.setAttribute("account", account);
			}
			 DaoProduct daop = new DaoProduct();
			 Product product = daop.getProduct2(product_id);
			 request.setAttribute("prod", product);
		   
			 Dao_Qna dao = new Dao_Qna();
			 		   
		if(!title.equals("")){
			Qna ins = new Qna(Integer.parseInt(product_ids), Integer.parseInt(account_ids), title, content, reply_content);
			log("#입력 내용 확인: "+ins.getTitle());
			dao.insertQna(ins);	
		}
		/*
		if(!title.equals("")) {
			Qna ins = new Qna(product_id, account_id, "", title, content, "");
			Dao_Qna dao = new Dao_Qna();
			dao.insertQna(ins);
		}
		*/
		
		
		// view
		String page = "views\\qna\\qna_write.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

}
