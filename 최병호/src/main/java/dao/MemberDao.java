package dao;

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
	public boolean signup(Member member) {
		
		String sql = "insert into member(m_id , m_pw , m_name , m_birth , m_phone) value (?,?,?,?,?)";
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, member.getM_id());
			preparedStatement.setString(2, member.getM_pw());
			preparedStatement.setString(3, member.getM_name());
			preparedStatement.setString(4, member.getM_birth());
			preparedStatement.setString(5, member.getM_phone());
			preparedStatement.executeUpdate();
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
			if(resultSet.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	
}
