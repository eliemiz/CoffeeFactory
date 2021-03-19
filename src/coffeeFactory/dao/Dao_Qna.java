package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.Qna;
import coffeeFactory.vo.Review;

/*
	QNA_ID NUMBER,
	PRODUCT_ID NUMBER,
	ACCOUNT_ID NUMBER,
	REGIST_DATE DATE,
	TITLE VARCHAR2(300),
	CONTENT VARCHAR2(4000),
	REPLY_CONTENT VARCHAR2(4000), 
	
	qna_id_seq
 */
public class Dao_Qna extends Dao_Notice{
	// 조회(전체, 리스트) (출력 확인)
	public ArrayList<Qna> getQnaList() {
		ArrayList<Qna> qlist = new ArrayList<Qna>();
		try {
			connect();
			String sql = "SELECT * FROM QNA";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Qna qna = new Qna(rs.getInt("QNA_ID"),rs.getInt("PRODUCT_ID"),
						rs.getInt("ACCOUNT_ID"),rs.getDate("REGIST_DATE"),rs.getString("TITLE"),
						rs.getString("CONTENT"),rs.getString("REPLY_CONTENT"));
				qlist.add(qna);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return qlist;
	}
	// 조회(조건,리스트) - product_id (출력 확인)
	// SELECT * FROM qna WHERE product_id='20101'
	public ArrayList<Qna> getQnaList(int product_id){
		ArrayList<Qna> qlist = new ArrayList<Qna>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM qna WHERE product_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Qna qna = new Qna(rs.getInt("QNA_ID"),rs.getInt("PRODUCT_ID"),
						rs.getInt("ACCOUNT_ID"),rs.getDate("REGIST_DATE"),rs.getString("TITLE"),
						rs.getString("CONTENT"),rs.getString("REPLY_CONTENT"));
				qlist.add(qna);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return qlist;
	}
	public ArrayList<Qna> getQna(int qna_id){
		ArrayList<Qna> qlist = new ArrayList<Qna>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM qna WHERE qna_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qna_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Qna qna = new Qna(rs.getInt("QNA_ID"),rs.getInt("PRODUCT_ID"),
						rs.getInt("ACCOUNT_ID"),rs.getDate("REGIST_DATE"),rs.getString("TITLE"),
						rs.getString("CONTENT"),rs.getString("REPLY_CONTENT"));
				qlist.add(qna);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return qlist;
	}
	//조회, 조건(단일)
		public Qna getQnal(int qna_id) {

			Qna qna = null;
			
			try {
				connect();
				
				String sql = "SELECT * FROM QNA WHERE QNA_ID = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, qna_id);

				rs = pstmt.executeQuery();	
				
				if(rs.next()) {
					qna = new Qna(rs.getInt("QNA_ID"),rs.getInt("PRODUCT_ID"),
							rs.getInt("ACCOUNT_ID"),rs.getDate("REGIST_DATE"),rs.getString("TITLE"),
							rs.getString("CONTENT"),rs.getString("REPLY_CONTENT"));
					
				}
				rs.close();
				pstmt.close();
				con.close();

			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}

			return qna;
			
		}
	
	// 조회(조건, 단일) - account_id
	public ArrayList<Qna> getQnasByAccount(int account_id) {
		ArrayList<Qna> list = new ArrayList<Qna>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM qna WHERE account_id = ? ORDER BY qna_id DESC";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Qna qna = new Qna(rs.getInt("QNA_ID"),rs.getInt("PRODUCT_ID"),
						rs.getInt("ACCOUNT_ID"),rs.getDate("REGIST_DATE"),rs.getString("TITLE"),
						rs.getString("CONTENT"),rs.getString("REPLY_CONTENT"));
				list.add(qna);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	// 입력 (입력 확인)
	// INSERT INTO qna values(qna_id_seq.nextval,20101,
	// 100001,sysdate, '해당 상품 원두 언제 입고되나요?',
	// '해당 상품 원두 언제 입고되는지 궁금합니다.','')
	public void insertQna(Qna qna) {
		try {
			connect();
			con.setAutoCommit(false);
			
			String sql = "INSERT INTO qna values(qna_id_seq.nextval,?,\r\n"
					+ "?,sysdate, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qna.getProduct_id());
			pstmt.setInt(2, qna.getAccount_id());
			pstmt.setString(3, qna.getTitle());
			pstmt.setString(4, qna.getContent());
			pstmt.setString(5, qna.getReply_content());
			
			pstmt.executeQuery();
			con.commit();
		} catch(SQLException e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		} catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	
	
	// 수정(답변 작성)
	// UPDATE qna SET reply_content='7~8일 소요 예정입니다.' 
	// WHERE qna_id=100002
	public void updateQna(Qna qna) {
		try {
			connect();
			con.setAutoCommit(false);
			
			String sql = "UPDATE qna SET reply_content=? WHERE qna_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, qna.getReply_content());
			pstmt.setInt(2, qna.getQna_id());
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
	
	// 삭제 (삭제 확인)
	// DELETE FROM qna WHERE qna_id=100000
	public void deleteQna(int qna_id) {
		try {
			connect();
			con.setAutoCommit(false);
			
			String sql = "DELETE FROM qna WHERE qna_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qna_id);
			pstmt.executeQuery();
			con.commit();
			
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		}catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch(Exception e1) {
				e1.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		Dao_Qna dao = new Dao_Qna();
//		ArrayList<Qna> qlist = dao.getQnaList();
		ArrayList<Qna> qlist = dao.getQnaList(20101);
		System.out.println(qlist);
//		dao.insertQna(new Qna(20101,100001,"입력타이틀","입력내용",""));
		dao.updateQna(new Qna("답변입력",100004));
	//	dao.deleteQna(100001);
	}
	
}
