package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import member.model.vo.Member;

public class MemberDAO {

	public int insertMember(Connection conn, Member member) {
		String query = "INSERT INTO MEMBER_TBL VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, DEFAULT, DEFAULT, DEFAULT)";
		PreparedStatement pstmt = null;
		int result = 0;
//		System.out.println(member.toString());
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getMemberPhone());
			pstmt.setString(2, member.getMemberGender());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getMemberEmail());
			pstmt.setString(5, member.getMemberPw());
			pstmt.setString(6, member.getMemberPic());
			pstmt.setString(7, member.getPlace());
			pstmt.setString(8, member.getLesson());
			pstmt.setString(9, member.getLessonType());
			pstmt.setString(10, member.gettGender());
			pstmt.setString(11, member.getMyLevel());
			pstmt.setString(12, member.getFreeWords());				
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}

	public int modifyMemberInfo(Connection conn, Member member) {
		String query = "UPDATE MEMBER_TBL SET PLACE = ?, LESSON = ?, LESSON_TYPE = ?, TEACHER_GENDER = ?, MY_LEVEL = ?, FREE_WORDS = ?  UPDATE_DATE = DEFAULT WHERE MEMBER_EMAIL =  ? AND MEMBER_PW =  ? ";
		PreparedStatement pstmt = null;
		int result = 0;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getPlace());
			pstmt.setString(2, member.getLesson());
			pstmt.setString(3, member.getLessonType());
			pstmt.setString(4, member.gettGender());
			pstmt.setString(5, member.getMyLevel());
			pstmt.setString(6, member.getFreeWords());
			pstmt.setString(7, member.getMemberEmail());
			pstmt.setString(8, member.getMemberPw());
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}

	public int deleteMember(Connection conn, String memberEmail) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "DELETE FROM MEMBER_TBL WHERE MEMBER_EMAIL = ? ";
	
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberEmail);
			result = pstmt.executeUpdate();  
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public Member selectCheckLogin(Connection conn, Member member) {
		String query = "SELECT * FROM MEMBER_TBL WHERE MEMBER_EMAIL = ? AND MEMBER_PW = ?";
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member mOne = null;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getMemberEmail());
			pstmt.setString(2, member.getMemberPw());
			rset = pstmt.executeQuery();

			if (rset.next()) {
				mOne = rsetToMember(rset);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return mOne;

	}


	public Member selectOneById(Connection conn, String memberEmail) { // 마이인포
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM MEMBER_TBL WHERE MEMBER_EMAIL= ?";
		Member mOne = null;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberEmail);

			rset = pstmt.executeQuery(); 
			if (rset.next()) {
				mOne = rsetToMember(rset);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				rset.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return mOne;
	}

	
	
	private Member rsetToMember(ResultSet rset) throws SQLException {
		Member member = new Member();
		member.setMemberPhone(rset.getString("MEMBER_PHONE"));
		member.setMemberGender(rset.getString("MEMBER_GENDER"));
		member.setMemberName(rset.getString("MEMBER_NAME"));
		member.setMemberEmail(rset.getString("MEMBER_EMAIL"));
		member.setMemberPw(rset.getString("MEMBER_PW"));
		
		member.setMemberPic(rset.getString("MEMBER_PIC"));
		member.setPlace(rset.getString("PLACE"));
		member.setLesson(rset.getString("LESSON"));
		member.setLessonType(rset.getString("LESSON_TYPE"));
		member.settGender(rset.getString("TEACHER_GENDER"));
		member.setMyLevel(rset.getString("MY_LEVEL"));
		member.setFreeWords(rset.getString("FREE_WORDS"));
		member.setMemberDate(rset.getTimestamp("MEMBER_DATE"));
		member.setUpdateDate(rset.getTimestamp("UPDATE_DATE"));
		member.setMemberYn(rset.getString("MEMBER_YN"));
		

		return member;
	}

	
	
	
	
	
	
	
}
