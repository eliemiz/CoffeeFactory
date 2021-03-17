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
    private int nInt(String s) {
    	int ret=0;
    	try {
    		ret = Integer.parseInt(s);
    	} catch(Exception e) {
    		System.out.println(e.getMessage());
    	}
    	return ret;
    }
    private String nStr(String s) {
    	String ret="";
    	if(s != null) ret=s;
    	return ret;
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
		int notice_id=nInt(notice_idS);
		
		// model
		Dao_Notice dao = new Dao_Notice();
		
		if(proc!=null) {
			if(proc.equals("upt")) {
				System.out.println("#수정 처리");
				dao.updateNotice(
				new Notice(notice_id, 
					nStr(request.getParameter("regist_date_s")),
					nStr(request.getParameter("title")),
					nStr(request.getParameter("content")),
					nStr(request.getParameter("image")),
					nInt(request.getParameter("views")) )
				);
			}	
				
			if(proc.equals("del")) {
				System.out.println("삭제 처리:"+notice_id);
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
