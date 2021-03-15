package coffeeFactory.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import coffeeFactory.vo.Account;

public class DaoAccount extends Dao {

	// 조회 - 리스트 - 전체
	public ArrayList<Account> getAccountList() {

		ArrayList<Account> list = new ArrayList<Account>();

		try {
			connect();

			String sql = "SELECT * FROM ACCOUNT";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				Account account = new Account(rs.getInt("account_id"), rs.getString("name"), rs.getString("id"),
						rs.getString("pass"), rs.getString("nickname"), rs.getDate("birthday"), rs.getString("gender"),
						rs.getInt("post"), rs.getString("address"), rs.getString("address2"), rs.getString("email"),
						rs.getString("phone"), rs.getString("phone2"), rs.getString("mail_recv"), rs.getString("auth"));
				list.add(account);
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

	// 조회 - 단일 - 조건(id, pass)
	public Account login(String id, String pass) {

		Account account = new Account();

		try {
			connect();

			String sql = "SELECT * FROM ACCOUNT WHERE ID = ? AND PASS = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				account = new Account(rs.getInt("account_id"), rs.getString("name"), rs.getString("id"),
						rs.getString("pass"), rs.getString("nickname"), rs.getDate("birthday"), rs.getString("gender"),
						rs.getInt("post"), rs.getString("address"), rs.getString("address2"), rs.getString("email"),
						rs.getString("phone"), rs.getString("phone2"), rs.getString("mail_recv"), rs.getString("auth"));
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return account;
	}

	// 조회 - 단일 - 조건(name, email)
	public Account search(String name, String email) {

		Account account = new Account();

		try {
			connect();

			String sql = "SELECT * FROM ACCOUNT WHERE NAME = ? AND EMAIL = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				account = new Account(rs.getInt("account_id"), rs.getString("name"), rs.getString("id"),
						rs.getString("pass"), rs.getString("nickname"), rs.getDate("birthday"), rs.getString("gender"),
						rs.getInt("post"), rs.getString("address"), rs.getString("address2"), rs.getString("email"),
						rs.getString("phone"), rs.getString("phone2"), rs.getString("mail_recv"), rs.getString("auth"));
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return account;
	}

	// 조회 - 단일
	public Account getAccount(int account_id) {

		Account account = new Account();

		try {
			connect();

			String sql = "SELECT * FROM ACCOUNT WHERE ACCOUNT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				account = new Account(rs.getInt("account_id"), rs.getString("name"), rs.getString("id"),
						rs.getString("pass"), rs.getString("nickname"), rs.getDate("birthday"), rs.getString("gender"),
						rs.getInt("post"), rs.getString("address"), rs.getString("address2"), rs.getString("email"),
						rs.getString("phone"), rs.getString("phone2"), rs.getString("mail_recv"), rs.getString("auth"));
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return account;
	}

	// 입력
	public void insertAccount(Account account) {

		try {
			connect();
			con.setAutoCommit(false);

			String sql = "INSERT INTO ACCOUNT VALUES (ACCOUNT_ID_SEQ.NEXTVAL, ?, ?, ?, ?, TO_DATE(?, 'YYYY-MM-DD'), ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			int idx = 1;
			pstmt.setString(idx++, account.getName());
			pstmt.setString(idx++, account.getId());
			pstmt.setString(idx++, account.getPass());
			pstmt.setString(idx++, account.getNickname());
			pstmt.setString(idx++, account.getBirthday_s());
			pstmt.setString(idx++, account.getGender());
			pstmt.setInt(idx++, account.getPost());
			pstmt.setString(idx++, account.getAddress());
			pstmt.setString(idx++, account.getAddress2());
			pstmt.setString(idx++, account.getEmail());
			pstmt.setString(idx++, account.getPhone());
			pstmt.setString(idx++, account.getPhone2());
			pstmt.setString(idx++, account.getMail_recv());
			pstmt.setString(idx++, account.getAuth());

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
	public void updateAccount(Account account) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "UPDATE ACCOUNT SET ";
			sql += "NICKNAME = ?, ";
			sql += "BIRTHDAY = ?, ";
			sql += "GENDER = ?, ";
			sql += "POST = ?, ";
			sql += "ADDRESS = ?, ";
			sql += "ADDRESS2 = ?, ";
			sql += "EMAIL = ?, ";
			sql += "PHONE = ?, ";
			sql += "PHONE2 = ?, ";
			sql += "MAIL_RECV = ? ";
			sql += "WHERE ACCOUNT_ID = ?";
			pstmt = con.prepareStatement(sql);
			int idx = 1;
			pstmt.setString(idx++, account.getNickname());
			pstmt.setString(idx++, account.getBirthday_s());
			pstmt.setString(idx++, account.getGender());
			pstmt.setInt(idx++, account.getPost());
			pstmt.setString(idx++, account.getAddress());
			pstmt.setString(idx++, account.getAddress2());
			pstmt.setString(idx++, account.getEmail());
			pstmt.setString(idx++, account.getPhone());
			pstmt.setString(idx++, account.getPhone2());
			pstmt.setString(idx++, account.getMail_recv());
			pstmt.setInt(idx++, account.getAccount_id());

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

	// 삭제
	public void deleteAccount(int account_id) {
		try {
			connect();
			con.setAutoCommit(false);

			String sql = "DELETE FROM ACCOUNT WHERE ACCOUNT_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, account_id);

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
		DaoAccount dao = new DaoAccount();
//		dao.insertAccount(new Account(0, "가나다", "higirl", "8888", "kong", "2012-12-12", "F", 12345,
//				"서울 강남구", "강남로 12-1", "tempt@naver.com", "010-1234-5678", "031-1234-5678", "N", "준회원"));
		
//		dao.updateAccount(new Account(100002, "가나다", "higirl", "8888", "tong", "2012-12-12", "F", 12345,
//				"서울 강남구", "강남로 12-1", "tempt@naver.com", "010-1234-5678", "031-1234-5678", "N", "준회원"));
//		dao.deleteAccount(100002);
		
		ArrayList<Account> list = dao.getAccountList();
		System.out.println(list);
	}

}
