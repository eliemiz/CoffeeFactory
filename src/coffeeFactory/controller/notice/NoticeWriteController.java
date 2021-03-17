package coffeeFactory.controller.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.Dao_Notice;
import coffeeFactory.vo.Notice;

/**
 * Servlet implementation class NoticeWriteController
 */
@WebServlet(name = "notice_write.do", urlPatterns = { "/notice_write.do" })
public class NoticeWriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeWriteController() {
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
		String title = request.getParameter("title"); if(title==null) title=""; log("#title:"+title);
		String content = request.getParameter("content"); if(content==null) content=""; log("#content:"+content);
		String image = request.getParameter("image"); if(image==null) image=""; log("#image:"+image);
		if(!title.equals("")) {
			Notice ins = new Notice(0, "", title, content, image, 0);
			Dao_Notice dao = new Dao_Notice();
			dao.insertNotice(ins);
		}
		
		// model
		
		
		// view
		String page = "views\\notice\\notice_write.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
