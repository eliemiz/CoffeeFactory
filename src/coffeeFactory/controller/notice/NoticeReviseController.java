package coffeeFactory.controller.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "notice_revise.do", urlPatterns = { "/notice_revise.do" })
public class NoticeReviseController extends HttpServlet {
	private static final long serialVersionUID = 1L;

		public NoticeReviseController() {
			super();
			// TODO Auto-generated constructor stub
		}
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			
			// request
			// model
			// view
			String page = "views\\notice\\notice_revise.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		
	}

}
