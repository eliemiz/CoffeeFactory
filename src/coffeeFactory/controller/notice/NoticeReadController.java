package coffeeFactory.controller.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoFrequent_qna;
import coffeeFactory.dao.Dao_Notice;

/**
 * Servlet implementation class MypageModifyController
 */
@WebServlet(name = "notice_read.do", urlPatterns = { "/notice_read.do" })
public class NoticeReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
		
	/**
     * @see HttpServlet#HttpServlet()
     */
		public NoticeReadController() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		/**
		 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
		
			// request
			/*
			request.setCharacterEncoding("utf-8");
			String notice_idS = request.getParameter("notice_id");
			if(notice_idS==null) notice_idS="";
			int notice_id = 0;
			try {
				notice_id = Integer.parseInt(notice_idS);
			} catch(Exception e) {
				System.out.println(e.getMessage());
			}
			*/
			request.setCharacterEncoding("utf-8");
			
			String title = request.getParameter("title");

			if(title==null) title="";
			
			
			// model
			/*
			
			request.setAttribute("notice", dao.getNotice(notice_id));
			
			*/
			request.setCharacterEncoding("utf-8");

		      Dao_Notice dao = new Dao_Notice();
		      String notice_id_s = request.getParameter("notice_id");
		      if (notice_id_s != null) {
		         request.setAttribute("notice", dao.getNotice(Integer.parseInt(notice_id_s)));
		      }

			
			
			// view
			String page = "views\\notice\\notice_read.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		
	}
	
}
