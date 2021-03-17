package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.Wish;


public class DaoWish extends Dao{
	// 전체 조회
	public ArrayList<Wish> getWish() {
		ArrayList<Wish> list = new ArrayList<Wish>();
		try {
			connect();
			String sql = "SELECT * FROM WISH";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Wish wish = new Wish(rs.getInt("ACCOUNT_ID"), rs.getInt("PRODUCT_ID"));
				list.add(wish);
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
	public ArrayList<Wish> getWish(int account_id) {
		ArrayList<Wish> list = new ArrayList<Wish>();
		try {
			connect();
			String sql = "SELECT * FROM WISH WHERE ACCOUNT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Wish wish = new Wish(rs.getInt("ACCOUNT_ID"), rs.getInt("PRODUCT_ID"));
				list.add(wish);
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
	// account id, product id 조회
	public Wish getWish(int account_id, int product_id) {
		Wish wish = new Wish();

		try {
			connect();

			String sql = "SELECT * FROM WISH WHERE ACCOUNT_ID = ? AND PRODUCT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			pstmt.setInt(2, product_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				wish = new Wish(rs.getInt("ACCOUNT_ID"), rs.getInt("PRODUCT_ID"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return wish;
	}
	// dlqfur
	public void insertWish(Wish wish) {
		try {
			connect();
			con.setAutoCommit(false);
			String sql = "INSERT INTO WISH VALUES (?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, wish.getAccount_id());
			pstmt.setInt(2, wish.getProduct_id());
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
	public void deleteWish(int account_id, int product_id) {
		try {
			connect();
			con.setAutoCommit(false);
			String sql = "DELETE FROM WISH WHERE ACCOUNT_ID = ? AND PRODUCT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			pstmt.setInt(2, product_id);
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
		DaoWish dao = new DaoWish();
		ArrayList<Wish> list = dao.getWish(100000);
		System.out.println(list);
		//dao.insertWish(new Wish(100003, 100003));
		//dao.deleteWish(100003, 100003);
		System.out.println("출력"+list);
	}
}
