package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.ProductOption;

public class DaoProductOption extends Dao{
		// 조회(조건, 전체) - product_id >> capacity (상세화면 용량표기)
		public ArrayList<ProductOption> getCapaList(int product_id) {
			ArrayList<ProductOption> list = new ArrayList<ProductOption>();
			try {
				connect();
				
				String sql = "SELECT * FROM PRODUCT_OPTION WHERE PRODUCT_ID = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, product_id);
				rs = pstmt.executeQuery();
	
				if (rs.next()) {
					ProductOption po= new ProductOption(rs.getInt("product_id"), rs.getString("capacity"), rs.getInt("price"));
					list.add(po);
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
	
		// 조회(조건, 단일) - product_id, capacity >> price (상세화면 가격표시용)
		public ProductOption getProdList(int product_id, String capacity) {
			ProductOption product = null;
			try {
				connect();
				
				String sql = "SELECT price FROM PRODUCT_OPTION WHERE product_id = ? AND capacity = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, product_id);
				pstmt.setString(2, capacity);
				
				rs = pstmt.executeQuery();

				if (rs.next()) {
					product = new ProductOption(rs.getInt("product_id"), rs.getString("capacity"), rs.getInt("price"));
				}
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return product;
		}
		
		// 조회(조건, 단일) - product_id, capacity >> price (메인화면 가격표시용)
		public ProductOption getProdList(int product_id) {
			ProductOption product = null;
			try {
				connect();
				
				String sql = "SELECT min(price)\r\n"
						+ "FROM PRODUCT p, PRODUCT_OPTION po\r\n"
						+ "WHERE p.PRODUCT_ID = po.PRODUCT_ID AND p.PRODUCT_ID = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, product_id);
				
				rs = pstmt.executeQuery();

				if (rs.next()) {
					product = new ProductOption(rs.getInt("product_id"), rs.getString("capacity"), rs.getInt("price"));
				}
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return product;
		}		

}
