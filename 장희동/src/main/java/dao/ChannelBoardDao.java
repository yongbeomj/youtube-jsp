package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.ChannelBoard;

public class  ChannelBoardDao extends DB  {
	
	public static ChannelBoardDao channelBoardDao = new ChannelBoardDao();
	public static ChannelBoardDao getChannelBoardDao() {
		return channelBoardDao;
	}
	//  본인 채널에 있는 게시판 전부 가져오기 
	public ArrayList<ChannelBoard> channelBoardList(int c_no){
		ArrayList<ChannelBoard> channelboards = new ArrayList<ChannelBoard>();
		
		String sql = "select * from channelboard where c_no=? order by cb_no";
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, c_no);
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				ChannelBoard channelboard = new ChannelBoard(
							resultSet.getInt(1),
							resultSet.getInt(2),
							resultSet.getString(3),
							resultSet.getString(4),
							resultSet.getString(5),
							resultSet.getString(6),
							resultSet.getString(7)
						);
				channelboards.add(channelboard);
			}
			return channelboards;
		} catch (Exception e) {
			
		}return channelboards;
	}
	
	// 선택한 채널 게시판 상세내역 // 본인 채널 번호도 같이 and문으로 조회// 
	public ChannelBoard channelBoardSelect(int c_no,int cb_no) {
		String sql = "select * from channelboard where cb_no=? and c_no=?";
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, cb_no);
			preparedStatement.setInt(2, c_no);
			
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()) {
				ChannelBoard channelboard = new ChannelBoard(
						resultSet.getInt(1),
						resultSet.getInt(2),
						resultSet.getString(3),
						resultSet.getString(4),
						resultSet.getString(5),
						resultSet.getString(6),
						resultSet.getString(7)
					);
				return channelboard;
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}return null;
	}
	
	// 게시물 업로드 등록 게시판 c_no 는 채널 넘버를 가지고 온후에 삽입 하도록 한다. // 본인채널에 insert  
	public boolean channelBoardWrite(int c_no , ChannelBoard channelboard) {
		
		String sql  = "insert into channelboard(c_no, cb_title, cb_contents,cb_image) values(?,?,?,?)";
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, c_no);
			preparedStatement.setString(2, channelboard.getCb_title());
			preparedStatement.setString(3, channelboard.getCb_contents());
			preparedStatement.setString(4, channelboard.getCb_image());
			
			preparedStatement.executeUpdate();
			
			return true;
			
		}catch(SQLException e){
			System.out.println(e.getMessage());
			
		}return false;
		
				
	}
	
	// 채널 게시물 수정하기 // 수정할 게시물의 번호를 넘겨받은 이후(where문 적용) 해당 번호의 게시물 업데이트 하기
	public boolean channelBoardUpdate(ChannelBoard channelBoard, int cb_no) {
		
		String sql = "update channelboard set cb_title =?, cb_contents=?, cb_image=? where cb_no=? ";
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, channelBoard.getCb_title());
			preparedStatement.setString(2, channelBoard.getCb_contents());
			preparedStatement.setString(3, channelBoard.getCb_image());
			preparedStatement.setInt(4, cb_no);
			
			preparedStatement.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			
		}return false;
		
	}
	
	// 채널 게시물 삭제하기 
	public boolean channelBoardDelete(int cb_no) {
		String sql = "delete from channelboard where cb_no=?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, cb_no);
			preparedStatement.executeUpdate();
			return true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}return false;
	}
	
	
	
}