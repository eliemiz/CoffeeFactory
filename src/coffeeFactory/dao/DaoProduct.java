
package coffeeFactory.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import coffeeFactory.vo.Product;


public class DaoProduct extends Dao {
	
	// 조회(조건, 리스트) - category >> 메인에서 카테고리 클릭 시
	public ArrayList<Product> getProdList(String category) {
		ArrayList<Product> plist = new ArrayList<Product>();
		try {
			connect();

			String sql = "SELECT * FROM PRODUCT WHERE CATEGORY=? ORDER BY PRODUCT_ID";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Product prod = new Product(rs.getInt("PRODUCT_ID"),rs.getString("NAME"),
						rs.getString("CATEGORY"),rs.getString("origin"),rs.getString("COMPANY"),
						rs.getString("DESCRIPTION"),
						rs.getString("THUMBNAIL"));
				plist.add(prod);
			}

			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return plist;
	}

	// 검색(name)
	public ArrayList<Product> getSchList(String name){
		ArrayList<Product> plist = new ArrayList<Product>();
		try {
			connect();
			String sql = "SELECT * FROM product WHERE name LIKE '%'||?||'%' ORDER BY product_id "; 
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Product prod = new Product(rs.getInt("PRODUCT_ID"),rs.getString("NAME"),
						rs.getString("CATEGORY"),rs.getString("origin"),rs.getString("COMPANY"),
						rs.getString("DESCRIPTION"),
						rs.getString("THUMBNAIL"));
				plist.add(prod);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return plist;
	}
	
	// 조회(단일조건 - ORIGIN) >> 카테고리에서 상세카테고리(origin)
	public Product getProduct(int origin) {
		Product prod = null;
		try {
			connect();

			String sql = "SELECT * FROM PRODUCT WHERE origin = ? ORDER BY PRODUCT_ID";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, origin);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				prod = new Product(rs.getInt("PRODUCT_ID"),rs.getString("NAME"),
						rs.getString("CATEGORY"),rs.getString("origin"),rs.getString("COMPANY"),
						rs.getString("DESCRIPTION"),
						rs.getString("THUMBNAIL"));
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
		return prod;
	}
	
	
	public Product getProduct2(int product_id) {
		Product prod = null;
		try {
			connect();
			
			String sql = "SELECT * FROM PRODUCT WHERE product_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				prod = new Product(rs.getInt("PRODUCT_ID"),rs.getString("NAME"),
						rs.getString("CATEGORY"),rs.getString("origin"),rs.getString("COMPANY"),
						rs.getString("DESCRIPTION"),
						rs.getString("THUMBNAIL"));
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
		return prod;
	}
}
