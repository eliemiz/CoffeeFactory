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
 * Servlet implementation class FreQnaController
 */
@WebServlet(name = "fre_qna.do", urlPatterns = { "/fre_qna.do" })
public class FreQnaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreQnaController() {
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
		
		
		// 모델
		if(question == null) question="";
		System.out.println("## 질문:"+ question);
		
		DaoFrequent_qna dao = new DaoFrequent_qna();
		ArrayList<Frequent_qna> list = dao.getFrequent_qnaList2(question);
		
		request.setAttribute("freQna",list);
		
		
		// 뷰
				String page = "views\\review\\frequent_qna.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(page);
				rd.forward(request, response);
	}

}
