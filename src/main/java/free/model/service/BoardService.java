package free.model.service;

import java.sql.Connection;
import java.util.List;

import common.JDBCTemplate;
import free.model.dao.BoardDAO;
import free.model.vo.FreeBoard;
import free.model.vo.PageData;



public class BoardService {
	private BoardDAO bDao;
	private JDBCTemplate jdbcTemplate;
	
	
	public BoardService() {
		bDao = new BoardDAO();
		//jdbcTemplate = new JDBCTemplate(); 
		//싱글톤패턴 적용되어있어서 new로 객체 생성 불가 아무나 객체 생성 못하게하고 클래스내에서 객체 유무 확인하고 생성하기 위한게 싱글톤 
		jdbcTemplate = JDBCTemplate.getInstance();  //싱글톤적용시 객체생성방법
	}
	

	public int insertBoard(FreeBoard board) {
		Connection conn = jdbcTemplate.createConnection();
		int result = bDao.insertBoard(conn, board);
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


	public PageData selectBoardList(int currentPage) {
		Connection conn = jdbcTemplate.createConnection();
		List<FreeBoard> bList = bDao.selectBoardList(conn, currentPage);
		String pageNavi = bDao.generatePageNavi(currentPage);
		PageData pd = new PageData(bList, pageNavi);
		jdbcTemplate.close(conn);
		return pd;
	}

	
	public FreeBoard selectOneByNo(int freeBoardNo) {
		Connection conn = jdbcTemplate.createConnection();
		FreeBoard board = bDao.selectOneByNo(conn, freeBoardNo);
	
		jdbcTemplate.close(conn);
	
		return board;
	}

}
