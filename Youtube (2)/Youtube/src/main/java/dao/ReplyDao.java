package dao;

import java.sql.SQLException;
import java.util.ArrayList;


import dto.Reply;

public class ReplyDao extends DB{
	
	public ReplyDao() {
	}
	public static ReplyDao replyDao = new ReplyDao();
	
	public static ReplyDao getReplyDao() {
		return replyDao;
	}
	
	//리플 쓰기
	public boolean replywrite(Reply reply) {
		String sql = "INSERT INTO reply ( m_no, v_no, c_no, r_contents) VALUES (?,?,?,?);";
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, reply.getM_no());
			preparedStatement.setInt(2, reply.getV_no());
			preparedStatement.setInt(3, reply.getC_no());
			preparedStatement.setString(4, reply.getR_contents());
			//preparedStatement.setString(4, reply.getC_name());
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
			String sql = "select * from reply where v_no= ? order by r_date desc"; //오름차순
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, v_no);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				Reply reply = new Reply(
						resultSet.getInt(1), 
						resultSet.getInt(2), 
						resultSet.getInt(3),
						resultSet.getInt(4),
						resultSet.getString(5),
						resultSet.getString(6)
						);
				//System.out.println("reply : " + reply.getR_no() + ", " + reply.getM_no() + ", " + reply.getV_no() + ", " + reply.getC_name());
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
		String sql = "select c_name from channel where m_no=?";
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
						resultSet.getInt(4), 
						resultSet.getString(5),
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
	 
	 //리플 총 개수 세기
	 public int replycount() {
		 String sql = "SELECT count(*) FROM reply";
		 try {
			 preparedStatement = connection.prepareStatement(sql);
			 resultSet= preparedStatement.executeQuery();
			 if(resultSet.next()) {
				 return resultSet.getInt(1);
			 }
		 }catch (Exception e) {
			 System.out.println("replycount method(): " + e.getMessage());
		}
		return 0;
	 }
	 
	 //댓글 수정
	 public boolean replyupdate(String r_contents, int r_no) {
		 String sql ="update reply set r_contents=? where r_no=?";
		 try {
			 preparedStatement = connection.prepareStatement(sql);
			 preparedStatement.setString(1, r_contents);
			 preparedStatement.setInt(2, r_no);
			 preparedStatement.executeUpdate();
			 return true;
		 }catch (Exception e) {
			 System.out.println("replyupdate method(): " + e.getMessage());
		}
		return false;
	 }
	 
	 public int findc_no (int m_no) {
		 String sql = "select c_no from channel where m_no=?";
		 try {
			 preparedStatement = connection.prepareStatement(sql);
			 preparedStatement.setInt(1, m_no);
			 resultSet= preparedStatement.executeQuery();
			 if(resultSet.next()) {
				 return resultSet.getInt(1);
			 }
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	 }
	 
	// 멤버 번호를 반환하는 메소드
		public int findm_no(int v_no) {
			try {
				String sql = "select m_no from video where v_no = ?";
				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setInt(1, v_no);
				resultSet = preparedStatement.executeQuery();
				if(resultSet.next()) {
					return resultSet.getInt(1);
				}
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} 
			return 0;
		}
}