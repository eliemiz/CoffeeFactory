package coffeeFactory.controller.cart;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import coffeeFactory.dao.DaoOrderByDetail;
import coffeeFactory.vo.OrderByDetail;

/**
 * Servlet implementation class PayController
 */
@WebServlet(name = "pay.do", urlPatterns = { "/pay.do" })
public class PayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		
		
		String price = request.getParameter("price"); 
		String send_name = request.getParameter("send_name"); 
		String send_email = request.getParameter("send_email");
		String send_phone = request.getParameter("send_phone"); 
		String send_phone2 = request.getParameter("send_phone2"); 
		String send_address = request.getParameter("send_address");
		String recv_name = request.getParameter("recv_name");
		String recv_phone = request.getParameter("recv_phone");
		String recv_phone2 = request.getParameter("recv_phone2");
		String recv_address = request.getParameter("recv_address");
		String comment = request.getParameter("comment");
		String pay = request.getParameter("pay");
		String state = request.getParameter("state");
		//String order_date = request.getParameter("order_date");
	

		int account_id = 0;
		
		HttpSession session = request.getSession();
		Object account_id_obj = session.getAttribute("account_id");
		if (account_id_obj != null) {
			account_id = (int)account_id_obj;
		}
		DaoOrderByDetail daoOrderByDetail = new DaoOrderByDetail();
		
		String proc = request.getParameter("proc");
		if (proc != null) {	
			if (proc.equals("order")) {
				OrderByDetail orderBydetail = new OrderByDetail(0, 0, 0, send_name, send_email, send_phone2, send_phone2, send_address,
						recv_name, recv_phone, recv_phone2, recv_address, comment, pay, state, "");	
				daoOrderByDetail.insertOrderByDetail(orderBydetail);
	
			} 
		}
		
		String page = "views\\cart\\pay.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
