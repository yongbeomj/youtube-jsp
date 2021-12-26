package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.Video;

public class VideoDAO extends DB{
	public static VideoDAO videoDAO = new VideoDAO();
	public static VideoDAO getVideoDAO() {
		return videoDAO;
	}
	
	// db에 비디오 넣는 메소드
	public boolean insertVideo(Video video) {
		try {
			
			String sql = "insert into video(v_thumbnail, v_filename, v_title, v_coments, m_no, v_path) values (?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, video.getV_thumbnail());
			pstmt.setString(2, video.getV_name());
			pstmt.setString(3, video.getV_title());
			pstmt.setString(4, video.getV_detail());
			pstmt.setInt(5, video.getM_no());
			pstmt.setString(6, video.getV_path());
			
			pstmt.executeUpdate();
			
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
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Video video = new Video(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getInt(8), rs.getString(9));
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
