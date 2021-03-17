package coffeeFactory.controller.notice;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.Dao_Notice;
import coffeeFactory.vo.Notice;

/**
 * Servlet implementation class NoticeController
 */
@WebServlet(name = "notice.do", urlPatterns = { "/notice.do" })
public class NoticeController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeController() {
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
            private int notice_id;
            private Date regist_date;
            private String regist_date_s;
            private String title;
            private String content;
            private String image;
            private int views;
            
            request.setCharacterEncoding("utf-8");
            String notice_idS = request.getParameter("notice_id");
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            
            */
            request.setCharacterEncoding("utf-8");
            String notice_idS = request.getParameter("notice_id");
            String title = request.getParameter("title");         
            
            // model
            if(title == null) title="";
            System.out.println("##공지제목:"+title);
            
            Dao_Notice dao = new Dao_Notice();
         //   Notice notice = dao.getNotice(notice_id);
            
            ArrayList<Notice> list = dao.getNoticeList1(title);
            
            request.setAttribute("notice", list);
            
            // view
            String page = "views\\notice\\notice_list.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(page);
            rd.forward(request, response);
      
   }

}