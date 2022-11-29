package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import config.DB;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			conn=DB.getConn();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String passwd) {
		String sql="SELECT passwd FROM MEMBER WHERE userID = ?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,  userID);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(passwd)) {
					return 1; // 로그인 성공
				} else {
					return 0; // 비밀번호 불일치
				}
			}
			return -1; // 아이디 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}
	public int join(MemberDTO dto) {
		String sql="INSERT INTO MEMBER (userID, passwd, name, email, hp) VALUES (?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserID());
			pstmt.setString(2, dto.getPasswd());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getHp());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
}


