package coffeeFactory.controller.fre_qna;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoFrequent_qna;
import coffeeFactory.vo.Frequent_qna;

/**
 * Servlet implementation class FreQnaAnswerController
 */
@WebServlet(name = "fre_qna_answer.do", urlPatterns = { "/fre_qna_answer.do" })
public class FreQnaAnswerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreQnaAnswerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		// 요청
		request.setCharacterEncoding("utf-8");
		
		String question = request.getParameter("question");

		if(question==null) question="";
	      
		
		
	    
		
		// 모델
		DaoFrequent_qna dao = new DaoFrequent_qna();
		
		request.setAttribute("fre", dao.getFre(question));
		
		// 뷰
		String page = "views\\review\\frequent_qna_answer.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
