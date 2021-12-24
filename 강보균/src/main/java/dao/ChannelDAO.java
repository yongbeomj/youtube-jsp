package dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ChannelDAO extends DB {
	public static ChannelDAO channelDAO = new ChannelDAO();
	public static ChannelDAO getChannelDAO() {
		return channelDAO;
	}
	
	public String getChannelName(int m_no) {
		try {
			String sql;
			sql = "select c_name from member where m_no = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, m_no);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			} else {
				sql = "select m_name from member where m_no = ?";
				PreparedStatement pstmt2 = conn.prepareStatement(sql);
				pstmt2.setInt(1, m_no);
				rs = pstmt2.executeQuery();
				if(rs.next()) {
					return rs.getString(1);
				} else {
					return null;
				}
			}
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return null;
		}
	}
}
