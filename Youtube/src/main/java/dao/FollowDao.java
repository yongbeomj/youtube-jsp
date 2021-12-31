package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.Follow;

public class FollowDao extends DB {

	public static FollowDao followDao = new FollowDao();

	public static FollowDao getFollowDao() {
		return followDao;
	}

	// 팔로우 업데이트 하는 메소드
	public int followUpdate(int c_no, int m_no) {
		String sql = null;
		sql = "select * from follow where c_no=" + c_no + " and m_no=" + m_no;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				sql = "delete from follow where c_no=" + c_no + " and m_no=" + m_no;
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.executeUpdate();
				return 1; // 팔로우 삭제
			} else {
				sql = "insert into follow(c_no,m_no) values(" + c_no + "," + m_no + ")";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.executeUpdate();
				return 2; // 팔로우 추가
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());

		}
		return 0;

	}

	// 팔로우 확인 체크하기
	public boolean followcheck(int c_no, int m_no) {
		String sql = null;
		sql = "select * from follow where c_no=" + c_no + " and m_no=" + m_no;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return true;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;

	}

	// 채널 팔로우 개수 체크하기
	public int followerCount(int c_no) {
		String sql = null;
		sql = "select count(f_no) from follow where c_no=" + c_no;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
	}

	// 채널 팔로잉 개수 체크하기
	public int followingCount(int m_no) {
		String sql = null;
		sql = "select count(f_no) from follow where m_no=" + m_no;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return resultSet.getInt(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
	}

	/*
	 * public int getfollow( int m_no) { try {
	 * 
	 * String sql = "select c_no from follow where m_no = ?"; preparedStatement =
	 * connection.prepareStatement(sql);
	 * 
	 * preparedStatement.setInt(1, m_no);
	 * 
	 * resultSet = preparedStatement.executeQuery(); while(resultSet.next()) {
	 * return resultSet.getInt(1); } return 0; } catch (Exception e) {
	 * System.out.println(e.getMessage()); } return 0; }
	 */

	public ArrayList<Follow> getfollow2(int m_no) {
		ArrayList<Follow> follows = new ArrayList<>();
		String sql = "select c_no from follow where m_no = ?";		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, m_no);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Follow follow = new Follow(resultSet.getInt(1));
				follows.add(follow);
			}
			return follows;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public int getFollowCount(int c_no, int m_no) {
		try {

			String sql = "select count(*) from follow where c_no = ? and m_no = ?";
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, c_no);
			preparedStatement.setInt(2, m_no);

			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return resultSet.getInt(1);
			}
			return 0;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return 0;
		}
	}

}