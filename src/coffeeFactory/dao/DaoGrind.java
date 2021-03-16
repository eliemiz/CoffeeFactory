package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.ProductGrind;

public class DaoGrind extends Dao {
	// 조회(전체)
	public ArrayList<ProductGrind> grindList(){
		ArrayList<ProductGrind> plist = new ArrayList<ProductGrind>();
		try {
			connect();

			String sql = "SELECT * FROM GRIND";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				plist.add(new ProductGrind(rs.getInt("grind_id"), rs.getString("grind_type")));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return plist;
	}
}
