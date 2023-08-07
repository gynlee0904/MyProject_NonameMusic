package member.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import member.model.dao.MemberDAO;
import member.model.vo.Member;

public class MemberService {
	private JDBCTemplate jdbcTemplate;
	private MemberDAO mDao;
	
	public MemberService() {
		jdbcTemplate = JDBCTemplate.getInstance();
		mDao = new MemberDAO();
	}

	public int insertMember(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		int result = mDao.insertMember(conn, member);
		
		if(result > 0) {
			// 성공 - 커밋
			jdbcTemplate.commit(conn);
		}else {
			// 실패 - 롤백
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public int modifyMemberInfo(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		int result = mDao.modifyMemberInfo(conn, member);
		
		if(result > 0) {
			// 성공 - 커밋
			jdbcTemplate.commit(conn);
		}else {
			// 실패 - 롤백
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}



	public Member loginCheck(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		Member mOne = mDao.selectCheckLogin(conn, member);
		jdbcTemplate.close(conn);
		return mOne;
	}

	

	public Member selectOneById(String memberEmail) {  	//마이인포
		Connection conn = jdbcTemplate.createConnection();
		Member member = mDao.selectOneById(conn, memberEmail);
		
		jdbcTemplate.close(conn);
		return member;
		
	
	}

	public int deleteMember(String memberEmail) {
		Connection conn = jdbcTemplate.createConnection();
		int result = mDao.deleteMember(conn, memberEmail);
		if(result > 0 ) {
			jdbcTemplate.commit(conn);
		}else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	

	


	
	
}
