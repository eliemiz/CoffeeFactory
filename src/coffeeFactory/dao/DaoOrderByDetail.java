package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.OrderByDetail;
/*
	private int order_id; 
	private int account_id; 
	private int price; 
	private String send_name; 
	private String send_email; 
	private String send_phone; 
	private String send_phone2; 
	private String send_address; 
	private String recv_name; 
	private String recv_phone; 
	private String recv_phone2; 
	private String recv_address; 
	private String comment;
	private String pay;
	private String state;
	private Date order_date; 
	private String order_date_s;
 */
public class DaoOrderByDetail extends Dao{
	
	// 전체 조회
	public ArrayList<OrderByDetail> getOrderByDetailList() {
		ArrayList<OrderByDetail> list = new ArrayList<OrderByDetail>();
		try {
			connect();
			String sql = "SELECT * FROM ORDER_BY_DETAIL";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				OrderByDetail order = new OrderByDetail(rs.getInt("ORDER_ID"), rs.getInt("ACCOUNT_ID"),
						rs.getInt("PRICE"), rs.getString("SEND_NAME"), rs.getString("SEND_EMAIL"),
						rs.getString("SEND_PHONE"), rs.getString("SEND_PHONE2"), rs.getString("SEND_ADDRESS"),
						rs.getString("RECV_NAME"), rs.getString("RECV_PHONE"), rs.getString("RECV_PHONE2"),
						rs.getString("RECV_ADDRESS"), rs.getString("COMMENT"), rs.getString("PAY"),
						rs.getString("STATE"), rs.getDate("ORDER_DATE"));
				list.add(order);
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	// account_id 조회 
	public ArrayList<OrderByDetail> getOrderByDetailList(int account_id) {
		ArrayList<OrderByDetail> list = new ArrayList<OrderByDetail>();
		try {
			connect();
			String sql = "SELECT * FROM ORDER_BY_DETAIL WHERE ACCOUNT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				OrderByDetail order = new OrderByDetail(rs.getInt("ORDER_ID"), rs.getInt("ACCOUNT_ID"),
						rs.getInt("PRICE"), rs.getString("SEND_NAME"), rs.getString("SEND_EMAIL"),
						rs.getString("SEND_PHONE"), rs.getString("SEND_PHONE2"), rs.getString("SEND_ADDRESS"),
						rs.getString("RECV_NAME"), rs.getString("RECV_PHONE"), rs.getString("RECV_PHONE2"),
						rs.getString("RECV_ADDRESS"), rs.getString("COMMENT"), rs.getString("PAY"),
						rs.getString("STATE"), rs.getDate("ORDER_DATE"));
				list.add(order);
			}
			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	// order id 조회 
	public OrderByDetail getOrderByDetail(int order_id) {
		OrderByDetail order = new OrderByDetail();

		try {
			connect();

			String sql = "SELECT * FROM ORDER_BY_DETAIL WHERE ORDER_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				order = new OrderByDetail(rs.getInt("ORDER_ID"), rs.getInt("ACCOUNT_ID"),
						rs.getInt("PRICE"), rs.getString("SEND_NAME"), rs.getString("SEND_EMAIL"),
						rs.getString("SEND_PHONE"), rs.getString("SEND_PHONE2"), rs.getString("SEND_ADDRESS"),
						rs.getString("RECV_NAME"), rs.getString("RECV_PHONE"), rs.getString("RECV_PHONE2"),
						rs.getString("RECV_ADDRESS"), rs.getString("COMMENT"), rs.getString("PAY"),
						rs.getString("STATE"), rs.getDate("ORDER_DATE"));
				}
			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return order;
	}
	// 입력
	/*
	private int order_id; 
	private int account_id; 
	private int price; 
	private String send_name; 
	private String send_email; 
	private String send_phone; 
	private String send_phone2; 
	private String send_address; 
	private String recv_name; 
	private String recv_phone; 
	private String recv_phone2; 
	private String recv_address; 
	private String comment;
	private String pay;
	private String state;
	private Date order_date; 
	private String order_date_s;
 */
	public void insertOrderByDetail(OrderByDetail order) {

		try {
			connect();
			con.setAutoCommit(false);

			String sql = "INSERT INTO ORDER_BY_DETAIL VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,TO_DATE(?,'YYYY-MM-DD HH24:MI:SS'))";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order.getOrder_id());
			pstmt.setInt(2, order.getAccount_id());
			pstmt.setInt(3, order.getPrice());
			pstmt.setString(4, order.getSend_name());
			pstmt.setString(5, order.getSend_email());
			pstmt.setString(6, order.getSend_phone());
			pstmt.setString(7, order.getSend_phone2());
			pstmt.setString(8, order.getSend_address());
			pstmt.setString(9, order.getRecv_name());
			pstmt.setString(10, order.getRecv_phone());
			pstmt.setString(11, order.getRecv_phone2());
			pstmt.setString(12, order.getRecv_address());
			pstmt.setString(13, order.getComment());
			pstmt.setString(14, order.getPay());
			pstmt.setString(15, order.getState());
			pstmt.setString(16, order.getOrder_date_s());
	
			pstmt.executeQuery();
			con.commit();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}
	// 주문번호 시퀀스
	public int getNextOrderId() {
		int order_id = 0;
		try {
			connect();
			String sql = "SELECT ORDER_ID_SEQ.NEXTVAL AS ORDER_ID FROM DUAL";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				order_id = rs.getInt("ORDER_ID");
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return order_id;
	}
	public static void main(String[] args) {
		DaoOrderByDetail dao = new DaoOrderByDetail();
		//dao.insertOrderByDetail(new OrderByDetail(
		//		100004, 100003, 60000, "김길동", "temp03@google.com", "010-1010-4040",
		//		"031-1004-1003", "대구", "김삼동", "011-3333-4444", "031-3333-4444",
			//	"test@google.com", "빨리보내라", "휴대폰결제", "입금대기", "20210505"));
		ArrayList<OrderByDetail> list = dao.getOrderByDetailList(100003);
		System.out.println("어카운트조회:"+list);
		OrderByDetail order = dao.getOrderByDetail(100001);
		System.out.println("오다아디조회:"+order);
	}
}
