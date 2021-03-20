package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.Cart;

/*	int ACCOUNT_ID
	int PRODUCT_ID
	String CAPACITY
	int GRIND_ID
	int COUNT	*/
public class DaoCart extends Dao{
	
	// 전체 조회
	public ArrayList<Cart> getCartList() {

		ArrayList<Cart> list = new ArrayList<Cart>();

		try {
			connect();

			String sql = "SELECT * FROM CART";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Cart cart = new Cart(rs.getInt("ACCOUNT_ID"), rs.getInt("PRODUCT_ID"),
						rs.getString("CAPACITY"), rs.getInt("GRIND_ID"), rs.getInt("COUNT"),
						rs.getInt("PRICE"));
				
				list.add(cart);
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
	// account_id 조건 조회 
	public ArrayList<Cart> getCartList(int account_id) {

		ArrayList<Cart> list = new ArrayList<Cart>();

		try {
			connect();

			String sql = "SELECT * FROM CART WHERE ACCOUNT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				Cart cart = new Cart(rs.getInt("ACCOUNT_ID"), rs.getInt("PRODUCT_ID"),
						rs.getString("CAPACITY"), rs.getInt("GRIND_ID"), rs.getInt("COUNT"),
						rs.getInt("PRICE"));
				list.add(cart);
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
	public void insertCart(Cart cart) {

		try {
			connect();
			con.setAutoCommit(false);

			String sql = "INSERT INTO CART VALUES (?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cart.getAccount_id());
			pstmt.setInt(2, cart.getProduct_id());
			pstmt.setString(3, cart.getCapacity());
			pstmt.setInt(4, cart.getGrind_id());
			pstmt.setInt(5, cart.getCount());
			pstmt.setInt(6, cart.getPrice());
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
	// 수량 수정
	public void updateCart(Cart cart) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "UPDATE CART SET COUNT = ? WHERE ACCOUNT_ID = ? AND PRODUCT_ID = ? "
							+ "	AND CAPACITY = ? AND GRIND_ID = ? AND PRICE = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, cart.getCount());
			pstmt.setInt(2, cart.getAccount_id());
			pstmt.setInt(3, cart.getProduct_id());
			pstmt.setString(4, cart.getCapacity());
			pstmt.setInt(5, cart.getGrind_id());
			pstmt.setInt(6, cart.getPrice());
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
	// 삭제
	public void deleteCart(int account_id, int product_id, String capacity, int grind_id) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "DELETE FROM CART WHERE ACCOUNT_ID = ? AND PRODUCT_ID = ?"
							+ " AND CAPACITY = ? AND GRIND_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			pstmt.setInt(2, product_id);
			pstmt.setString(3, capacity);
			pstmt.setInt(4, grind_id);
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
	// 삭제
	public void deleteCart(int account_id) {
		try {
			connect();
			con.setAutoCommit(false);
	
			String sql = "DELETE FROM CART WHERE ACCOUNT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
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
		DaoCart dao = new DaoCart();
		ArrayList<Cart> list = dao.getCartList(10);
		
		//dao.insertCart(new Cart(10, 10010, "1000g, 10000원", 3, 3));
		//dao.deleteCart(3, 10003, "200g, 20000원", 1);
		//dao.updateCart(new Cart(3, 10003, "200g, 20000원", 1, 50));
		//dao.deleteCart(10);
		System.out.println(list);
	}
}
