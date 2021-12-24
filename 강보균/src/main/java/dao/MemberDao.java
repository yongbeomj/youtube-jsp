package dao;

import java.sql.PreparedStatement;

import dto.Member;

public class MemberDao extends DB {

	public MemberDao() {
		
	}

	public static MemberDao memberDao = new MemberDao();

	public static MemberDao getMemberDao() {
		return memberDao;
	}

	// �쉶�썝媛��엯
	public boolean signup(Member member) {

		String sql = "insert into member(m_id , m_pw , m_name , m_birth , m_phone) value (?,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getM_id());
			pstmt.setString(2, member.getM_pw());
			pstmt.setString(3, member.getM_name());
			pstmt.setString(4, member.getM_birth());
			pstmt.setString(5, member.getM_phone());
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	// �쉶�썝媛��엯
	public boolean imgsignup(Member member) {
		
		String sql = "insert into member(m_id , m_pw , m_name , m_birth , m_phone, m_image) value (?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getM_id());
			pstmt.setString(2, member.getM_pw());
			pstmt.setString(3, member.getM_name());
			pstmt.setString(4, member.getM_birth());
			pstmt.setString(5, member.getM_phone());
			pstmt.setString(6, member.getM_image());
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	// 濡쒓렇�씤
	public boolean login(String id, String pw) {
		String sql = "select * from member where m_id = ? and m_pw = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	// �쉶�썝踰덊샇 寃��깋
	public int getmemberno(String id) {
		String sql = "select m_no from member where m_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	// �쉶�썝�젙蹂� 異쒕젰
	public Member getmember(String id) {
		String sql = "select * from member where m_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Member member = new Member(rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
						rs.getString(8));
				return member;
			}
		} catch (Exception e) {
		}
		return null;
	}

	// �븘�씠�뵒 李얘린
	public String findid(String name, String phone) {
		String sql = "select m_id from member where m_name = ? and m_phone = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	// 鍮꾨�踰덊샇 李얘린
	public String findpw(String id, String name, String phone) {
		String sql = "select m_pw from member where m_id = ? and m_name = ? and m_phone = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, phone);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	// �븘�씠�뵒 以묐났 泥댄겕
	public boolean idcheck(String userid) {

		String sql = "select m_id from member where m_id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	// �쉶�썝 �깉�눜 硫붿냼�뱶
	public boolean delete(String id, String password) {

		String sql1 = "select * from member where m_id =? and m_pw=?"; // �쉶�썝寃��궗
		String sql2 = "delete from member where m_id=? and m_pw=?"; // �쉶�썝�궘�젣
		try {
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();

			if (rs.next()) { // �븘�씠�뵒�� 鍮꾨�踰덊샇媛� �룞�씪�븳寃쎌슦�뿉 寃곌낵媛� �엳�뒗寃쎌슦�뿉留� �쉶�썝�궘�젣
				PreparedStatement ps2 = conn.prepareStatement(sql2);
				ps2.setString(1, id);
				ps2.setString(2, password);
				ps2.executeUpdate();
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

}
