package coffeeFactory.controller.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.Dao_Qna;
import coffeeFactory.vo.Qna;

@WebServlet(name = "qna_write.do", urlPatterns = { "/qna_write.do" })
public class QnaWriteControler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QnaWriteControler() {
		super();
		// TODO Auto-generated constructor stub
	}
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
		String product_id = request.getParameter("product_id"); if(product_id==null||product_id.trim().equals("")) product_id="0"; log("#product_id:"+product_id);
		String account_id = request.getParameter("account_id"); if(account_id==null||account_id.trim().equals("")) account_id="0"; log("#account_id:"+account_id);
		String title = request.getParameter("title"); if(title==null) title=""; log("#title:"+title);
		String content = request.getParameter("content"); if(content==null) content=""; log("#content:"+content);
		
		if(!title.equals("")){
			Qna ins = new Qna(new Integer(product_id), new Integer(account_id),"", title, content, "");
			Dao_Qna dao = new Dao_Qna();
			dao.insertQna(ins);	
		}
		/*
		if(!title.equals("")) {
			Qna ins = new Qna(product_id, account_id, "", title, content, "");
			Dao_Qna dao = new Dao_Qna();
			dao.insertQna(ins);
		}
		*/
		
		// model
		
		
		// view
		String page = "views\\qna\\qna_write.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
