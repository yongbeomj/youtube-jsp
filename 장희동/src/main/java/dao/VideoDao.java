package dao;

import java.util.ArrayList;

import dto.Video;

public class VideoDao extends DB{

	public VideoDao() {}
	
	public static VideoDao videoDao = new VideoDao();
	public static VideoDao getVideoDao() {
		return videoDao;
	}
	
	//영상 등록
	public boolean videoupload(Video video) {
		String sql = "insert into video(c_no, v_thumbnail, v_name, v_detail) value(?,?,?,?)";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, video.getC_no());
			preparedStatement.setString(2, video.getV_thumbnail());
			preparedStatement.setString(3, video.getV_name());
			preparedStatement.setString(4, video.getV_detail());
			preparedStatement.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
		//댓글 등록할때 m_no가져와서 달게 만들기
	}
	
	//영상 목록 출력
	 
	
	//영상 번호에 해당하는 영상 가져오기
	public Video getvideo(int v_no) {
		String sql = "select * from video where v_no=?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, v_no);
			resultSet = preparedStatement.executeQuery();
			if(resultSet.next()) {
				Video video = new Video(
						resultSet.getInt(1), 
						resultSet.getInt(2),
						resultSet.getString(3), 
						resultSet.getString(4), 
						resultSet.getString(5), 
						resultSet.getString(6),  
						resultSet.getString(7),
						resultSet.getString(8));
				return video;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
