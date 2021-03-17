package coffeeFactory.dao;

import java.sql.SQLException;

import coffeeFactory.vo.ProductOption;

public class DaoProductOption extends Dao{
		// 조회(조건, 단일) - product_id >> capacity (상세화면 용량표기)
		// 질문: 여러 값을 가져오니 리스트를 써야 하나요? <select><option>사용할 예정이고, option 내에 value="${price}"만 사용할 예정이긴 합니다.
		// value값을 가격에 표시하게 하려고 하는데,,, 밑에 거랑 중복되는 거 같기도 하네요,,
		public ProductOption getCapacity(int product_id) {
			ProductOption product = null;
			try {
				connect();
				
				String sql = "SELECT capacity FROM PRODUCT_OPTION WHERE product_id = ?";
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
				
				String sql = "SELECT min(price) FROM PRODUCT_OPTION WHERE product_id = ?";
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
