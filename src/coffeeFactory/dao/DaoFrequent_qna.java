package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.Frequent_qna;
import coffeeFactory.vo.Review;



/*FREQUENT_QNA
FREQNA_ID NUMBER,
QUESTION VARCHAR2(1000)
ANSWER VARCHAR2(4000)*/

public class DaoFrequent_qna extends Dao{

	//조회(전체, 리스트)
	public ArrayList<Frequent_qna> getFrequent_qna(){
		
		ArrayList<Frequent_qna> list = new ArrayList<Frequent_qna>();
		
		try {
			connect();
			
			String sql = "SELECT * FROM FREQUENT_QNA";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Frequent_qna frequent = new Frequent_qna(rs.getInt("FREQNA_ID"),
						rs.getString("QUESTION"),rs.getString("ANSWER"));
					list.add(frequent);	
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
	
	/*
	 * //조회(조건, 리스트) public ArrayList<Frequent_qna> getFrequent_qnaList1(String
	 * question,String answer) { ArrayList<Frequent_qna> list = new
	 * ArrayList<Frequent_qna>(); try { connect();
	 * 
	 * String sql = "SELECT * from FREQUENT_QNA\r\n" +
	 * "WHERE question LIKE '%'|| ? ||'%'\r\n" + "AND answer LIKE '%'|| ? ||'%'" +
	 * " ORDER BY FREQNA_ID"; pstmt = con.prepareStatement(sql); pstmt.setString(1,
	 * question); pstmt.setString(2, answer);
	 * 
	 * rs = pstmt.executeQuery();
	 * 
	 * while (rs.next()) { Frequent_qna frequent = new
	 * Frequent_qna(rs.getInt("FREQNA_ID"),
	 * rs.getString("QUESTION"),rs.getString("ANSWER")); list.add(frequent); }
	 * rs.close(); pstmt.close(); con.close();
	 * 
	 * } catch (SQLException e) { e.printStackTrace(); } catch (Exception e) {
	 * e.printStackTrace(); }
	 * 
	 * return list;
	 * 
	 * }
	 */
	
	//조회(조건, 리스트)
		public ArrayList<Frequent_qna> getFrequent_qnaList2(String question) {	
			ArrayList<Frequent_qna> list = new ArrayList<Frequent_qna>();
			try {
				connect();
				
				String sql = "SELECT * FROM FREQUENT_QNA WHERE question LIKE '%'|| ? ||'%' ORDER BY FREQNA_ID ";
			             
				System.out.println(sql);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, question);
				rs = pstmt.executeQuery();	
				
				while (rs.next()) {
					Frequent_qna frequent = new Frequent_qna(rs.getInt("FREQNA_ID"),
							rs.getString("QUESTION"),rs.getString("ANSWER"));
						list.add(frequent);
						 
				         
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
		//조건 (단일)
		public Frequent_qna getFre(String question) {

			Frequent_qna fre = null;
			
			try {
				connect();
				
				String sql = "SELECT * FROM FREQUENT_QNA WHERE question = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, question);

				rs = pstmt.executeQuery();	
				
				if(rs.next()) {
					fre = new Frequent_qna(rs.getInt("FREQNA_ID"),
							rs.getString("QUESTION"),rs.getString("ANSWER"));
						
					
				}
				rs.close();
				pstmt.close();
				con.close();

			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}

			return fre;
			
		}
		
	/*
	 * //조회(조건, 리스트) public ArrayList<Frequent_qna> getFrequent_qnaList3(String
	 * answer) { ArrayList<Frequent_qna> list = new ArrayList<Frequent_qna>(); try {
	 * connect();
	 * 
	 * String sql = "SELECT * FROM FREQUENT_QNA\r\n" +
	 * "WHERE answer LIKE '%'|| ? ||'%'\r\n" + " ORDER BY FREQNA_ID"; pstmt =
	 * con.prepareStatement(sql); pstmt.setString(1, answer);
	 * 
	 * rs = pstmt.executeQuery();
	 * 
	 * while (rs.next()) { Frequent_qna frequent = new
	 * Frequent_qna(rs.getInt("FREQNA_ID"),
	 * rs.getString("QUESTION"),rs.getString("ANSWER")); list.add(frequent); }
	 * rs.close(); pstmt.close(); con.close();
	 * 
	 * } catch (SQLException e) { e.printStackTrace(); } catch (Exception e) {
	 * e.printStackTrace(); }
	 * 
	 * return list;
	 * 
	 * }
	 */
		
	
	
	public static void main(String[] args) {

		DaoFrequent_qna dao = new DaoFrequent_qna();
		
		   ArrayList<Frequent_qna> list=dao.getFrequent_qnaList2("");
		   System.out.println(list);
		 
		
		
		  Frequent_qna fre = dao.getFre("원두보관방법을 알 수 있을까요");
		  System.out.println(fre);
		 
		 
	}

}
