package dao;

import java.sql.PreparedStatement;

import dto.Member;

public class MemberDao extends DB {

	public MemberDao() {
		super();
	}

	public static MemberDao memberDao = new MemberDao();

	public static MemberDao getMemberDao() {
		return memberDao;
	}

	// 회원가입
	public boolean imgsignup(Member member) {
		
		String sql = "insert into member(m_id , m_pw , m_name , m_birth , m_phone, m_image) value (?,?,?,?,?,?)";

		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, member.getM_id());
			preparedStatement.setString(2, member.getM_pw());
			preparedStatement.setString(3, member.getM_name());
			preparedStatement.setString(4, member.getM_birth());
			preparedStatement.setString(5, member.getM_phone());
			preparedStatement.setString(6, member.getM_image());
			preparedStatement.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	
	// 채널 추가
	public boolean channelregister(int m_no) {
		String sql = "insert into channel(c_name) value (?)";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, m_no);
			preparedStatement.executeQuery();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	// 로그인
	public boolean login(String id, String pw) {
		String sql = "select * from member where m_id = ? and m_pw = ?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, pw);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	// 회원번호 검색
	public int getmemberno(String id) {
		String sql = "select m_no from member where m_id = ?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	// 회원정보 출력
	public Member getmember(String id) {
		String sql = "select * from member where m_id = ?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Member member = new Member(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getString(8));
				return member;
			}
		} catch (Exception e) {
		}
		return null;
	}

	// 아이디 찾기
	public String findid(String name, String phone) {
		String sql = "select m_id from member where m_name = ? and m_phone = ?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, phone);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return resultSet.getString(1);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	// 비밀번호 찾기
	public String findpw(String id, String name, String phone) {
		String sql = "select m_pw from member where m_id = ? and m_name = ? and m_phone = ?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, phone);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return resultSet.getString(1);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	// 아이디 중복 체크
	public boolean idcheck(String userid) {

		String sql = "select m_id from member where m_id = ?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userid);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	// 회원 탈퇴 메소드
	public boolean delete(String id, String password) {

		String sql1 = "select * from member where m_id =? and m_pw=?"; // 회원검사
		String sql2 = "delete from member where m_id=? and m_pw=?"; // 회원삭제
		try {
			preparedStatement = connection.prepareStatement(sql1);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, password);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) { // 아이디와 비밀번호가 동일한경우에 결과가 있는경우에만 회원삭제
				PreparedStatement ps2 = connection.prepareStatement(sql2);
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