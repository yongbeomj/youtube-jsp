package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.Video;

public class VideoDao extends DB {
	public static VideoDao videoDAO = new VideoDao();

	public static VideoDao getVideoDAO() {
		return videoDAO;
	}

	// db�뿉 鍮꾨뵒�삤 �꽔�뒗 硫붿냼�뱶
	public boolean insertVideo(Video video) {
		try {

			String sql = "insert into video(v_thumbnail, v_filename, v_title, v_coments, m_no, v_path) values (?, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, video.getV_thumbnail());
			preparedStatement.setString(2, video.getV_name());
			preparedStatement.setString(3, video.getV_title());
			preparedStatement.setString(4, video.getV_detail());
			preparedStatement.setInt(5, video.getM_no());
			preparedStatement.setString(6, video.getV_path());

			preparedStatement.executeUpdate();

			return true;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}

	// 紐⑤뱺 �쁺�긽 媛��졇�삤�뒗 硫붿냼�뱶
	public ArrayList<Video> getAllVideo() {
		try {

			ArrayList<Video> videos = new ArrayList<Video>();
			String sql = "select * from video";
			preparedStatement = connection.prepareStatement(sql);

			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Video video = new Video(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getInt(8), resultSet.getString(9));
				videos.add(video);
			}
			return videos;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	// 梨꾨꼸 �씠誘몄�瑜� 媛��졇�삤�뒗 硫붿냼�뱶
	public String getImg(int m_no) {
		try {

			String sql = "select c_image from channel where m_no = ?";
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

	// �쉶�썝 �꽆踰꾨줈 鍮꾨뵒�삤 �꽆踰� 媛��졇�삤湲�
	public int getv_no(int v_no) {
		try {
			String sql = "select v_no from video where m_no = ?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, v_no);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return resultSet.getInt(v_no);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
	}

	public int getM_no(int v_no) {
		try {

			String sql = "select m_no from video where v_no = ?";
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, v_no);

			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				return resultSet.getInt(1);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
	}

	/////////////////////////////////////////////////////////////////////
	// �룞�쁺�긽 醫뗭븘�슂
	public int videolikeupdate(int v_no, int m_no) {
		// 1) 醫뗭븘�슂 踰꾪듉 -> 醫뗭븘�슂 [�쁺�긽踰덊샇, �쉶�썝踰덊샇]
		// 2) �쁺�긽踰덊샇�� �쉶�썝踰덊샇媛� �씪移섑븳 醫뗭븘�슂媛� �뾾�쑝硫� 醫뗭븘�슂 �깮�꽦 //3) �엳�쑝硫� 醫뗭븘�슂 �궘�젣
		String sql = null;
		sql = "select * from videolike where v_no=" + v_no + " and m_no=" + m_no;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) { // 醫뗭븘�슂 湲곗〈�뿉 議댁옱�븯硫� (寃��깋�씠 �릺�뿀�떎硫�)
				sql = "delete from videolike where v_no=" + v_no + " and m_no=" + m_no;
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.executeUpdate();
				return 1; // 醫뗭븘�슂 �젣嫄�
			} else { // 醫뗭븘�슂 湲곗〈�뿉 議댁옱�븯吏� �븡�쑝硫� (寃��깋�씠 �븞�릺硫�)
				sql = "insert into videolike(v_no, m_no) values(" + v_no + "," + m_no + ")";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.executeUpdate();
				return 2; // 醫뗭븘�슂 異붽�
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0; // DB�삤瑜�
	}

	// �쁺�긽 醫뗭븘�슂 �솗�씤 泥댄겕�븯湲�
	public boolean videolikecheck(int v_no, int m_no) {
		String sql = null;
		sql = "select * from videolike where v_no=" + v_no + " and m_no=" + m_no;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) { // 醫뗭븘�슂 湲곗〈�뿉 議댁옱�븯硫�(寃��깋�씠 �릺�뿀�떎硫�)
				return true;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false; // DB�삤瑜�
	}

	public Video getVideo(int v_no) {
		try {

			String sql = "select * from video where v_no = ?";
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setInt(1, v_no);

			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				Video video = new Video(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getInt(8), resultSet.getString(9));
				return video;
			}
			return null;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

	public int findv_no(int m_no) {
		String sql = "select v_no from video where m_no = ?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, m_no);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				resultSet.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	// 紐⑤뱺 �쁺�긽 媛��졇�삤�뒗 硫붿냼�뱶
	public ArrayList<Video> getmyVideo(int m_no) {
		try {

			ArrayList<Video> videos = new ArrayList<Video>();
			String sql = "select * from video where m_no = ?";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, m_no);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Video video = new Video(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),
						resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7),
						resultSet.getInt(8), resultSet.getString(9));
				videos.add(video);
			}
			return videos;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
}