package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.Video;

public class VideoDao extends DB{
	public static VideoDao videoDAO = new VideoDao();
	public static VideoDao getVideoDAO() {
		return videoDAO;
	}
	
	// db에 비디오 넣는 메소드
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
	
	// 모든 영상 가져오는 메소드
	public ArrayList<Video> getAllVideo() {
		try {
			
			ArrayList<Video> videos = new ArrayList<Video>();
			String sql = "select * from video";
			preparedStatement = connection.prepareStatement(sql);
			
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Video video = new Video(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7), resultSet.getInt(8), resultSet.getString(9));
				videos.add(video);
			}
			return videos;
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	// 채널 이미지를 가져오는 메소드
	public String getImg(int m_no) {
		try {
			
			String sql = "select c_image from channel where m_no = ?";
			preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setInt(1, m_no);
			
			resultSet = preparedStatement.executeQuery();
			if(resultSet.next()) {
				return resultSet.getString(1);
			}
			
			return null;
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return null;
		}
	}
	
	public int getv_no(int v_no) {
		try {
		String sql = "select v_no from video where m_no = ?";
		preparedStatement = connection.prepareStatement(sql);
		preparedStatement.setInt(1, v_no);
		resultSet = preparedStatement.executeQuery();
		if(resultSet.next()) {
			return resultSet.getInt(v_no);
		}
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
	}
}