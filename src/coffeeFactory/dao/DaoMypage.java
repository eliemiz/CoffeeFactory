package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.QnaEx;
import coffeeFactory.vo.WishEx;

public class DaoMypage extends Dao {

	public ArrayList<QnaEx> getQnaList(int account_id) {
		ArrayList<QnaEx> list = new ArrayList<QnaEx>();

		try {
			connect();

			String sql = "SELECT * FROM qna q, product p WHERE q.PRODUCT_ID =p.PRODUCT_ID AND account_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				QnaEx qna = new QnaEx(rs.getInt("QNA_ID"), rs.getInt("PRODUCT_ID"), rs.getInt("ACCOUNT_ID"),
						rs.getDate("REGIST_DATE"), rs.getString("TITLE"), rs.getString("CONTENT"),
						rs.getString("REPLY_CONTENT"), rs.getString("NAME"), rs.getString("CATEGORY"),
						rs.getString("origin"), rs.getString("COMPANY"), rs.getString("THUMBNAIL"));
				list.add(qna);
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

	public ArrayList<WishEx> getWishList(int account_id) {
		ArrayList<WishEx> list = new ArrayList<WishEx>();

		try {
			connect();

			String sql = "SELECT DISTINCT W.ACCOUNT_ID, W.PRODUCT_ID, P.NAME, P.CATEGORY, P.ORIGIN, P.COMPANY, P.THUMBNAIL, \r\n"
					+ "	MIN(PO.PRICE) MIN_PRICE, MAX(PO.PRICE) MAX_PRICE FROM WISH W, PRODUCT P, PRODUCT_OPTION PO\r\n"
					+ "	WHERE W.PRODUCT_ID = P.PRODUCT_ID AND P.PRODUCT_ID = PO.PRODUCT_ID AND W.ACCOUNT_ID = ?\r\n"
					+ "	GROUP BY (W.ACCOUNT_ID, W.PRODUCT_ID, P.NAME, P.CATEGORY, P.ORIGIN, P.COMPANY, P.THUMBNAIL)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			System.out.println(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				WishEx wish = new WishEx(rs.getInt("account_id"), rs.getInt("product_id"), rs.getString("name"),
						rs.getString("category"), rs.getString("origin"), rs.getString("company"),
						rs.getString("thumbnail"), rs.getString("min_price"), rs.getString("max_price"));
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

}