package dao;

import java.util.ArrayList;

import dto.Member;
import dto.Sample;

public class SampleDao extends DB {

	public SampleDao() {
		super();
	}

	public static SampleDao sampleDao = new SampleDao();

	public static SampleDao getSampleDao() {
		return sampleDao;
	}
	
	public ArrayList<Sample> getvideo() {
		ArrayList<Sample> video = new ArrayList<>();
		String sql = "select * from sample";
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Sample sample = new Sample(
						resultSet.getInt(1),
						resultSet.getString(2),
						resultSet.getString(3),
						resultSet.getString(4),
						resultSet.getString(5));
				video.add(sample);
			}
			return video;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	
	
}
