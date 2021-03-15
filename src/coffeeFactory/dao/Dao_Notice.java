package coffeeFactory.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import coffeeFactory.vo.Notice;

public class Dao_Notice {
	protected Connection con;
	protected Statement stmt;
	protected PreparedStatement pstmt;
	protected ResultSet rs;
	private String defaultUrl = "jdbc:oracle:thin:@39.117.21.102:1521:xe";
	private String defaultUser = "coffee";
	private String defaultPassword = "factory";

	protected void connect() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		con = DriverManager.getConnection(defaultUrl, defaultUser, defaultPassword);
	}

	protected void connect(String url, String user, String password) throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		con = DriverManager.getConnection(url, user, password);
	}
	// 조회(전체) (출력 확인)
	// NOTICE_ID, REGIST_DATE, TITLE, CONTENT, IMAGE, VIEWS 
	public ArrayList<Notice> getNoticeList(){
		ArrayList<Notice> nlist = new ArrayList<Notice>();
		try {
			connect();
			String sql = "SELECT * FROM notice order by notice_id";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Notice notice = new Notice(rs.getInt("NOTICE_ID"), 
						rs.getDate("REGIST_DATE"),rs.getString("TITLE"),rs.getString("CONTENT"),
						rs.getString("IMAGE"),rs.getInt("VIEWS"));
				nlist.add(notice);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return nlist;		
	}
	// 조회(조건-단일) notice_id (출력 확인)
	public Notice getNotice(int notice_id) {
		Notice notice = null;
		try {
			connect();
			String sql = "SELECT * FROM notice where notice_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, notice_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				notice = new Notice(rs.getInt("NOTICE_ID"), 
						rs.getDate("REGIST_DATE"),rs.getString("TITLE"),rs.getString("CONTENT"),
						rs.getString("IMAGE"),rs.getInt("VIEWS"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		} 
		return notice;	
	}
	// 조회(title) 제목
	public ArrayList<Notice> getNoticeList1(String title){
		ArrayList<Notice> list = new ArrayList<Notice>();
		try {
			connect();
			String sql = "SELECT * FROM notice where title like '%'||?||'%'";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Notice notice = new Notice(rs.getInt("NOTICE_ID"), 
						rs.getDate("REGIST_DATE"),rs.getString("TITLE"),rs.getString("CONTENT"),
						rs.getString("IMAGE"),rs.getInt("VIEWS"));
				list.add(notice);
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
	
	// 조회(content) 내용
	public ArrayList<Notice> getNoticeList2(String content){
		ArrayList<Notice> list = new ArrayList<Notice>();
		try {
			connect();
			String sql = "SELECT * FROM notice where content like '%'||'?'||'%'";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Notice notice = new Notice(rs.getInt("NOTICE_ID"), 
						rs.getDate("REGIST_DATE"),rs.getString("TITLE"),rs.getString("CONTENT"),
						rs.getString("IMAGE"),rs.getInt("VIEWS"));
				list.add(notice);
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
	// INSERT INTO notice VALUES (notice_id_seq.nextval,sysdate,'감사 인사',
	//	'커피공장을 찾아주신 고객 여러분 모두에게 감사 인사 드립니다.행복한 하루 보내세요 :)',
	//	'','1004')
	public void insertNotice(Notice notice) {
		try {
			connect();
			con.setAutoCommit(false);
			String sql = "INSERT INTO notice VALUES\r\n"
					+ "	(notice_id_seq.nextval,sysdate,?,\r\n"
					+ "	?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());
			pstmt.setString(3, notice.getImage());
			pstmt.setInt(4, notice.getViews());
		
			rs = pstmt.executeQuery();
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
		} catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	// 수정
	// UPDATE notice SET title = '고객감사 할부 이벤트', content='이벤트 진행 기간 동안 많은 참여 부탁드립니다.', image='test.img'
	// WHERE NOTICE_ID = 100002;
	public void updateNotice(Notice notice) {
		try {
			connect();
			con.setAutoCommit(false);
			String sql = "UPDATE notice SET title = ?, content=?, image=? WHERE NOTICE_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());
			pstmt.setString(3, notice.getImage());
			pstmt.setInt(4, notice.getNotice_id());
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
		} catch(Exception e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	// 삭제 (삭제 확인함)
	// DELETE FROM notice WHERE NOTICE_ID = 100001
	public void deleteNotice(int notice_id) {
		try {
			connect();
			con.setAutoCommit(false);
			
			String sql = "DELETE FROM notice WHERE NOTICE_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,  notice_id);
			pstmt.executeQuery();
			con.commit();
			
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				con.rollback();
			} catch(SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
	
	public static void main(String[]args) {
		Dao_Notice dao = new Dao_Notice();
		ArrayList<Notice> nlist = dao.getNoticeList();
//		Notice notice = dao.getNotice(100000);
		ArrayList<Notice> list = dao.getNoticeList1("모두");
//		dao.insertNotice(new Notice("테스트타이틀","테스트내용","테스트이미지",30));
//		dao.updateNotice(new Notice("수정테스트","수정테스트","수정이미지",100000));
//		dao.deleteNotice(100003); 
		
		System.out.println(nlist);
//		System.out.println(notice);
//		System.out.println(list);
	}
}
