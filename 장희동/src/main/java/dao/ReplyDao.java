package dao;

import java.util.ArrayList;

import javax.imageio.event.IIOReadProgressListener;

import dto.Reply;

public class ReplyDao extends DB{
	
	public ReplyDao() {
		super();
	}
	public static ReplyDao replyDao = new ReplyDao();
	
	public static ReplyDao getReplyDao() {
		return replyDao;
	}
	
	//리플 쓰기
	public boolean replywrite(Reply reply) {
		String sql = "INSERT INTO reply (m_no, v_no, r_contents) VALUES (?, ?, ?)";
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, reply.getM_no());
			preparedStatement.setInt(2, reply.getV_no());
			preparedStatement.setString(3, reply.getR_contents());
			preparedStatement.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	//리플 출력
	public ArrayList<Reply> replies (int v_no){
		ArrayList<Reply> replies = new ArrayList<Reply>();
		try {
			String sql = "select * from reply where v_no= ? order by r_no asc"; //오름차순
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, v_no);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Reply reply = new Reply(
						resultSet.getInt(1), 
						resultSet.getInt(2), 
						resultSet.getInt(3),
						resultSet.getString(4),
						resultSet.getString(5)
						);
				System.out.println("reply : " + reply.getR_no() + ", " + reply.getM_no() + ", " + reply.getV_no() + ", " + reply.getC_name());
				replies.add(reply);
				//System.out.println("replies : " + replies.size());
			}
			return replies;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return null;
	}
	
	//채널(멤버) 이름 가져오기(댓글)
	public String getchannelname(int m_no) {
		String sql = "select c_name from member where m_no=?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, m_no);
			resultSet = preparedStatement.executeQuery();
			if(resultSet.next()) {
				return resultSet.getString(m_no);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	
	//비디오번호의 리플 가져오기
	public Reply getreply (int v_no) {
		String sql = "select * from reply where v_no=?";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, v_no);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Reply reply = new Reply(
						resultSet.getInt(1), 
						resultSet.getInt(2), 
						resultSet.getInt(3), 
						resultSet.getString(4),
						null
						);
						
				return reply;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	//리플 삭제하기
	 public boolean replydelete(int r_no) {
		 String sql ="delete from reply where r_no = ?";
		 try {
			 preparedStatement = connection.prepareStatement(sql);
			 preparedStatement.setInt(1, r_no);
			 preparedStatement.executeUpdate();
			 return true;
		 }catch (Exception e) {
			 System.out.println("replydelete method(): " + e.getMessage());
		}
		return false;
	 }
}
