package dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import dto.Channel;

public class ChannelDAO extends DB {
	public static ChannelDAO channelDAO = new ChannelDAO();
	public static ChannelDAO getChannelDAO() {
		return channelDAO;
	}
	
	// �쉶�썝媛��엯怨� �룞�떆�뿉 梨꾨꼸�깮�꽦�븯�뒗 硫붿냼�뱶
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
	
	// 硫ㅻ쾭 踰덊샇瑜� 諛섑솚�븯�뒗 硫붿냼�뱶
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
	
	// 湲곕낯 梨꾨꼸 紐�
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
	
	// 梨꾨꼸紐� 媛��졇�삤湲�
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
	
	public ArrayList<Channel> getChannel(int m_no) {
		try {
			
			ArrayList<Channel> channels = new ArrayList<>();
			String sql = "select * from channel where m_no = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, m_no);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Channel channel = new Channel(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
				channels.add(channel);
			}
			
			return channels;
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return null;
		}
	}
	
	public Channel getSoloChannel(int c_no) {
		try {
			
			String sql = "select * from channel where c_no = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, c_no);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Channel channel = new Channel(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
				return channel; 
			}
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
}
