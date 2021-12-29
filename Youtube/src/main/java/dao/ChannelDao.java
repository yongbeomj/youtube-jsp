package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.Channel;

public class ChannelDao extends DB {
	public static ChannelDao channelDAO = new ChannelDao();

	public static ChannelDao getChannelDAO() {
		return channelDAO;
	}

	// 회원가입과 동시에 채널생성하는 메소드
	public boolean createChannel(Channel channel) {
		try {

			String sql = "insert into channel(m_no, c_name, c_image, c_info, c_presentation) values (?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, channel.getM_no());
			preparedStatement.setString(2, channel.getC_name());
			preparedStatement.setString(3, channel.getC_image());
			preparedStatement.setString(4, channel.getC_info());
			preparedStatement.setString(5, channel.getC_present());

			preparedStatement.executeUpdate();

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
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, m_id);

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

	// 기본 채널 명
	public String getDefaultChannelName(int m_no) {
		try {
			String sql;
			sql = "select m_name from member where m_no = ?";
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, m_no);

			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return resultSet.getString(1);
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
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, m_no);

			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return resultSet.getString(1);
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
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, m_no);

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Channel channel = new Channel(resultSet.getInt(1), resultSet.getInt(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getString(8));
				channels.add(channel);
			}

			return channels;

		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	// 채널 정보 수정하기 등록과 동시에 수정하기 Channel channel = new Channel(c_name, c_presentation,
	// c_info, image);
	public boolean infoChannelUpdate(Channel channel, int m_no) {

		String sql = "update channel set c_name=?, c_presentation=?, c_info=?, c_image=? where m_no = ?";

		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, channel.getC_name());
			preparedStatement.setString(2, channel.getC_present());
			preparedStatement.setString(3, channel.getC_info());
			preparedStatement.setString(4, channel.getC_image());
			preparedStatement.setInt(5, m_no);

			preparedStatement.executeUpdate();
			return true;
		} catch (Exception e) {

		}
		return false;
	}

	public Channel getSoloChannel(int c_no) {
		try {

			String sql = "select * from channel where c_no = ?";
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, c_no);

			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				Channel channel = new Channel(resultSet.getInt(1), resultSet.getInt(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getString(8));
				return channel;
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	// 회원 번호로 채널 모든 정보 가져오기
	public Channel getChannelinfo(int m_no) {
		String sql = "select * from channel where m_no=?";

		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, m_no);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				Channel channel = new Channel(resultSet.getInt(1), resultSet.getInt(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getString(8));
				return channel;
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;

	}

	// 본인 채널 번호 가져오기( 회원 번호의 고유채널번호 )
	public int getChannelNo(int m_no) {
		String sql = "select c_no from channel where m_no=?";

		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, m_no);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {

				return resultSet.getInt(1);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
	}
	
	// 본인 m_no 번호 가져오기( 회원 번호의 고유채널번호 )
		public int getm_No(int c_no) {
			String sql = "select m_no from channel where c_no=?";

			try {
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setInt(1, c_no);
				resultSet = preparedStatement.executeQuery();

				if (resultSet.next()) {

					return resultSet.getInt(1);
				}

			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return 0;
		}
}