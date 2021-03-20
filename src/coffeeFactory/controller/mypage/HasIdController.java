package coffeeFactory.controller.mypage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coffeeFactory.dao.DaoAccount;

/**
 * Servlet implementation class HasIdController
 */
@WebServlet(name = "hasId.do", urlPatterns = { "/hasId.do" })
public class HasIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HasIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		String json = "{\"hasId\":true}";
//		request.setAttribute("data", json);
//		request.getRequestDispatcher("/signin2.do").forward(request, response);
//	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		// String json = "{\"hasId:\"true\"}";
		DaoAccount daoAccount = new DaoAccount();
		String id = request.getParameter("id");
		boolean hasId = daoAccount.hasId(id);
		String json = "{\"hasId\":" + hasId + "}";
		response.getWriter().print(json);
	}

}
