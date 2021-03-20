package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.Product;
import coffeeFactory.vo.ProductEx;
import coffeeFactory.vo.ProductOption;

public class DaoShop extends Dao {
	/* 기존 DaoProduct */
	// 조회(조건, 리스트) - category >> 메인에서 카테고리 클릭 시
	/*
	 * public ArrayList<Product> getProdList(String category) { ArrayList<Product>
	 * plist = new ArrayList<Product>(); try { connect();
	 * 
	 * String sql = "SELECT * FROM PRODUCT WHERE CATEGORY=? ORDER BY PRODUCT_ID";
	 * pstmt = con.prepareStatement(sql); pstmt.setString(1, category); rs =
	 * pstmt.executeQuery();
	 * 
	 * while (rs.next()) { Product prod = new Product(rs.getInt("PRODUCT_ID"),
	 * rs.getString("NAME"), rs.getString("CATEGORY"), rs.getString("origin"),
	 * rs.getString("COMPANY"), rs.getString("DESCRIPTION"),
	 * rs.getString("THUMBNAIL")); plist.add(prod); }
	 * 
	 * rs.close(); pstmt.close(); con.close(); } catch (SQLException e) {
	 * e.printStackTrace(); } catch (Exception e) { e.printStackTrace(); } return
	 * plist; }
	 */
	// 초기 > 카테고리 클릭 시 목록(최소가격 포함)
	public ArrayList<ProductEx> getProdList(String category) {
		ArrayList<ProductEx> plist = new ArrayList<ProductEx>();
		try {
			connect();
			
			String sql = "SELECT DISTINCT p.*, min(po.price) price \r\n"
					+ "FROM product p, product_option po \r\n"
					+ "WHERE p.PRODUCT_ID =po.PRODUCT_ID AND category = ? \r\n"
					+ "GROUP BY (p.PRODUCT_ID, p.NAME, p.origin, p.COMPANY, p.DESCRIPTION, p.THUMBNAIL, p.CATEGORY) \r\n"
					+ "ORDER BY p.PRODUCT_ID";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, category);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ProductEx prod = new ProductEx(rs.getInt("PRODUCT_ID"),rs.getString("NAME"),
						rs.getString("CATEGORY"),rs.getString("origin"),rs.getString("COMPANY"),
						rs.getString("DESCRIPTION"),
						rs.getString("THUMBNAIL"), rs.getInt("price"));
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

	public ArrayList<Product> getOrigin(String category) {
		ArrayList<Product> plist = new ArrayList<Product>();
		try {
			connect();

			String sql = "SELECT DISTINCT origin, category FROM product WHERE category= ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Product prod = new Product(rs.getString("origin"), rs.getString("CATEGORY"));
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
/*	public ArrayList<Product> getSchList(String name) {
		ArrayList<Product> plist = new ArrayList<Product>();
		try {
			connect();
			String sql = "SELECT * FROM product WHERE name LIKE '%'||?||'%' ORDER BY product_id ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Product prod = new Product(rs.getInt("PRODUCT_ID"), rs.getString("NAME"), rs.getString("CATEGORY"),
						rs.getString("origin"), rs.getString("COMPANY"), rs.getString("DESCRIPTION"),
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
	} */
	public ArrayList<ProductEx> getSchList(String name) {
		ArrayList<ProductEx> plist = new ArrayList<ProductEx>();
		try {
			connect();
			
			String sql = "SELECT DISTINCT p.*, min(po.price) price\r\n"
					+ "FROM product p, product_option po\r\n"
					+ "WHERE p.PRODUCT_ID =po.PRODUCT_ID AND name LIKE '%'|| ? ||'%'\r\n"
					+ "GROUP BY (p.PRODUCT_ID, p.NAME, p.origin, p.COMPANY, p.DESCRIPTION, p.THUMBNAIL, p.CATEGORY)\r\n"
					+ "ORDER BY p.PRODUCT_ID";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ProductEx prod = new ProductEx(rs.getInt("PRODUCT_ID"),rs.getString("NAME"),
						rs.getString("CATEGORY"),rs.getString("origin"),rs.getString("COMPANY"),
						rs.getString("DESCRIPTION"),
						rs.getString("THUMBNAIL"), rs.getInt("price"));
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

	// 조회(단일조건 - ORIGIN) >> 카테고리에서 상세카테고리(origin)
	// 여러 상품을 조회해 와야 해서 Product => ArrayList로 수정(0317)
	public ArrayList<ProductEx> getProduct(String origin) {
		ArrayList<ProductEx> plist = new ArrayList<ProductEx>();
		try {
			connect();

			String sql = "SELECT DISTINCT p.*, min(po.price) price \r\n"
					+ "FROM product p, product_option po \r\n"
					+ "WHERE p.PRODUCT_ID =po.PRODUCT_ID AND origin = ? \r\n"
					+ "GROUP BY (p.PRODUCT_ID, p.NAME, p.origin, p.COMPANY, p.DESCRIPTION, p.THUMBNAIL, p.CATEGORY) \r\n"
					+ "ORDER BY p.PRODUCT_ID";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, origin);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductEx prod = new ProductEx(rs.getInt("PRODUCT_ID"), rs.getString("NAME"), rs.getString("CATEGORY"),
						rs.getString("origin"), rs.getString("COMPANY"), rs.getString("DESCRIPTION"),
						rs.getString("THUMBNAIL"), rs.getInt("PRICE"));
				plist.add(prod);
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

	public Product getProduct2(int product_id) {
		Product prod = null;
		try {
			connect();

			String sql = "SELECT * FROM PRODUCT WHERE product_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				prod = new Product(rs.getInt("PRODUCT_ID"), rs.getString("NAME"), rs.getString("CATEGORY"),
						rs.getString("origin"), rs.getString("COMPANY"), rs.getString("DESCRIPTION"),
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
	
	/* 기존 DaoProductOption */
	// 조회(조건, 전체) - product_id >> capacity (상세화면 용량표기)
	public ArrayList<ProductOption> getCapaList(int product_id) {
		ArrayList<ProductOption> list = new ArrayList<ProductOption>();
		try {
			connect();
			
			String sql = "SELECT * FROM PRODUCT_OPTION WHERE PRODUCT_ID = ? ORDER BY PRICE";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
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
				product = new ProductOption(rs.getInt("price"));
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
