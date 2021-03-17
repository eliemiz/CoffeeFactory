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
 * Servlet implementation class NoticeReviseController
 */
@WebServlet(name = "notice_revise.do", urlPatterns = { "/notice_revise.do" })
public class NoticeReviseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeReviseController() {
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
		String proc = request.getParameter("proc");
		
		String notice_idS = request.getParameter("notice_id");
		if(notice_idS==null) notice_idS="0";
		int notice_id = 0;
		try {
			notice_id = Integer.parseInt(notice_idS);
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		// model
		Dao_Notice dao = new Dao_Notice();
		
		if(proc!=null) {
			if(proc.equals("upt")) {
				
				String regist_date_s = request.getParameter("regist_date_s");
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				String image = request.getParameter("image");
				String views = request.getParameter("views");
								
				Notice upt = new Notice(notice_id, regist_date_s, title, content, image, Integer.parseInt(views));
				
				dao.updateNotice(upt);
			}
			if(proc.equals("del")) {
				System.out.println("삭제 준비 완료:"+notice_id);
				dao.deleteNotice(notice_id);
			}
		}
		request.setAttribute("notice", dao.getNotice(notice_id));
		
		// view
		String page = "views\\notice\\notice_revise.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
