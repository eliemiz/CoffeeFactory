package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.Review;



/*REVIEW
REVIEW_ID NUMBER,
PRODUCT_ID NUMBER,
ACCOUNT_ID NUMBER,
REGIST_DATE DATE,
RATING NUMBER,
TITLE VARCHAR2(300),
CONTENT VARCHAR2(4000),
IMAGE VARCHAR2(300),
REPLY_CONTENT VARCHAR2(4000)*/
public class DaoReview extends Dao{

	//조회(전체,리스트)
	public ArrayList<Review> getReviewList(){
		
		ArrayList<Review> list = new ArrayList<Review>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM REVIEW";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Review review = new Review(rs.getInt("REVIEW_ID"), rs.getInt("PRODUCT_ID"), rs.getInt("ACCOUNT_ID"),
						rs.getDate("REGIST_DATE"), rs.getInt("RATING"), rs.getString("TITLE"), rs.getString("CONTENT"),
						rs.getString("IMAGE"),rs.getString("REPLY_CONTENT"));
					list.add(review);	
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
	
	//조회(조건, 리스트)
	public ArrayList<Review> getReviewList(int product_id) {	
		ArrayList<Review> list = new ArrayList<Review>();
		try {
			connect();
			
			String sql = "SELECT * FROM REVIEW WHERE PRODUCT_ID = ? ORDER BY REVIEW_ID";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);

			rs = pstmt.executeQuery();	
			
			while (rs.next()) {
				Review review = new Review(rs.getInt("REVIEW_ID"), rs.getInt("PRODUCT_ID"), rs.getInt("ACCOUNT_ID"),
						rs.getDate("REGIST_DATE"), rs.getInt("RATING"), rs.getString("TITLE"), rs.getString("CONTENT"),
						rs.getString("IMAGE"),rs.getString("REPLY_CONTENT"));
					list.add(review);
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
	
	//조회, 조건(단일)
	public Review getReview(int review_id) {

		Review review = null;
		
		try {
			connect();
			
			String sql = "SELECT * FROM REVIEW WHERE REVIEW_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, review_id);

			rs = pstmt.executeQuery();	
			
			if(rs.next()) {
				review = new Review(rs.getInt("REVIEW_ID"), rs.getInt("PRODUCT_ID"), rs.getInt("ACCOUNT_ID"),
						rs.getDate("REGIST_DATE"), rs.getInt("RATING"), rs.getString("TITLE"), rs.getString("CONTENT"),
						rs.getString("IMAGE"),rs.getString("REPLY_CONTENT"));
				
			}
			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return review;
		
	}
	
	// 입력
			public void insertReview(Review review) {

				try {
					connect();
					con.setAutoCommit(false);
					/*REVIEW
					REVIEW_ID NUMBER,
					PRODUCT_ID NUMBER,
					ACCOUNT_ID NUMBER,
					REGIST_DATE DATE,
					RATING NUMBER,
					TITLE VARCHAR2(300),
					CONTENT VARCHAR2(4000),
					IMAGE VARCHAR2(300),
					REPLY_CONTENT VARCHAR2(4000)*/

					String sql = "INSERT INTO REVIEW VALUES (REVIEW_ID_SEQ.NEXTVAL, ?, ?, SYSDATE, ?, ?, ?, ?, ?)";
					pstmt = con.prepareStatement(sql);
					
					pstmt.setInt(1, review.getProduct_id());
					pstmt.setInt(2, review.getAccount_id());
					pstmt.setInt(3, review.getRating());
					pstmt.setString(4, review.getTitle());
					pstmt.setString(5, review.getContent());
					pstmt.setString(6, review.getImage());
					pstmt.setString(7, review.getReply_content());
					pstmt.executeQuery();
					con.commit();

					pstmt.close();
					con.close();

				} catch (SQLException e) {
					e.printStackTrace();
					try {
						con.rollback();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
				} catch (Exception e) {
					e.printStackTrace();
					try {
						con.rollback();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
				}
			}

			// 수정
			public void updateReview(Review review) {
				try {
					connect();
					con.setAutoCommit(false);

					String sql =" UPDATE REVIEW\r\n"
							+ "	SET RATING =?,\r\n"
							+ "		TITLE = ?,\r\n"
							+ "		CONTENT = ?,\r\n"
							+ "		IMAGE = ?,\r\n"
							+ "		REPLY_CONTENT = ?\r\n"
							+ "WHERE REVIEW_ID = ? ";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, review.getRating());
					pstmt.setString(2, review.getTitle());
					pstmt.setString(3, review.getContent());
					pstmt.setString(4, review.getImage());
					pstmt.setString(5, review.getReply_content());
					pstmt.setInt(6, review.getReview_id());
					pstmt.executeUpdate();
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
			public void deleteReview(int review_id) {
				try {
					connect();
					con.setAutoCommit(false);

					String sql = "DELETE FROM REVIEW WHERE REVIEW_ID = ?";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, review_id);
					pstmt.executeQuery();
					con.commit();

					pstmt.close();
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
					try {
						con.rollback();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
				} catch (Exception e) {
					e.printStackTrace();
					try {
						con.rollback();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
				}
			}
	
	
	
	



	public static void main(String[] args) {
		DaoReview dao = new DaoReview();
		
		/*
		 * ArrayList<Review> list = new ArrayList<Review>(); list = dao.getReviewList();
		 * System.out.println(list);
		 */
		/*
		 * ArrayList<Review> list = dao.getReviewList(1); System.out.println(list);
		 */
		
		
	
		 //dao.insertReview(new Review(1, 1, 5, "El","리뷰내용","asdf.png", "답변"));
		   dao.updateReview(new Review( 100004,0,0,"",5, "El","리뷰수정2","asdf.png","답변"));
		//dao.deleteReview(100000);
		
		 
	}

}
