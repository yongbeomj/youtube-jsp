package dao;

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
	
	public Sample getvideo() {
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
				return sample;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	
	
}
