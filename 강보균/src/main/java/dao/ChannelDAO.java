package dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.Channel;

public class ChannelDAO extends DB {
	public static ChannelDAO channelDAO = new ChannelDAO();
	public static ChannelDAO getChannelDAO() {
		return channelDAO;
	}
	
	// 회원가입과 동시에 채널생성하는 메소드
	public boolean createChannel(Channel channel) {
		try {
			
			String sql = "insert into channel(m_no, c_name, c_image, c_info, c_presentation) values (?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, channel.getM_no());
			pstmt.setString(2, channel.getC_name());
			pstmt.setString(3, channel.getC_image());
			pstmt.setString(4, channel.getC_info());
			pstmt.setString(5, channel.getC_present());
			
			pstmt.executeUpdate();

			return true;
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	
	// 멤버 번호를 반환하는 메소드
	public int getMemberNo(String m_id) {
		try {
			
			String sql = "select m_no from member where m_id = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m_id);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}
			
			return 0;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return 0;
		} 
	}
	
	// 기본 채널 명
	public String getDefaultChannelName(int m_no) {
		try {
			String sql;
			sql = "select m_name from member where m_no = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, m_no);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}

			return null;
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return null;
		}
	}
	
	// 채널명 가져오기
	public String getChannelName(int m_no) {
		try {
			
			String sql = "select c_name from channel where m_no = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, m_no);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
			
			return null;
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return null;
		}
	}
}
