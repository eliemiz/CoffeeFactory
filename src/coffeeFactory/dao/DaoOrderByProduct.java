package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.OrderByProduct;

/*	
private int order_id;
private int product_id;
private String capacity;
private int grind_id;
private int count;
*/	
public class DaoOrderByProduct extends Dao{
	
	// 전체 조회
	public ArrayList<OrderByProduct> getOrderProductList() {
		ArrayList<OrderByProduct> list = new ArrayList<OrderByProduct>();
		try {
			connect();

			String sql = "SELECT * FROM ORDER_BY_PRODUCT";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				OrderByProduct order = new OrderByProduct(rs.getInt("ORDER_ID"), rs.getInt("PRODUCT_ID"),
						rs.getString("CAPACITY"), rs.getInt("GRIND_ID"), rs.getInt("COUNT"), rs.getInt("PRICE"));
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
	// order_id 조회
	public ArrayList<OrderByProduct> getOrderByProductList(int order_id) {
		ArrayList<OrderByProduct> list = new ArrayList<OrderByProduct>();

		try {
			connect();

			String sql = "SELECT * FROM ORDER_BY_PRODUCT WHERE ORDER_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				OrderByProduct order = new OrderByProduct(rs.getInt("ORDER_ID"), rs.getInt("PRODUCT_ID"),
						rs.getString("CAPACITY"), rs.getInt("GRIND_ID"), rs.getInt("COUNT"), rs.getInt("PRICE"));
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
	// 입력
	public void insertOrderByProduct(OrderByProduct order) {
		try {
			connect();
			con.setAutoCommit(false);
			String sql = "INSERT INTO ORDER_BY_PRODUCT VALUES (?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, order.getOrder_id());
			pstmt.setInt(2, order.getProduct_id());
			pstmt.setString(3, order.getCapacity());
			pstmt.setInt(4, order.getGrind_id());
			pstmt.setInt(5, order.getCount());
			pstmt.setInt(6, order.getPrice());
			
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
	public static void main(String[] args) {
		DaoOrderByProduct dao = new DaoOrderByProduct();
		//dao.insertOrderByProduct(new OrderByProduct(
				//100004, 100004, "100g 3000원", 1, 1));
		ArrayList<OrderByProduct> list = dao.getOrderByProductList(100004);
		System.out.println("결과:"+list);
		
	}
}
