package free.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import free.model.vo.FreeBoard;


public class BoardDAO {

	public int insertBoard(Connection conn, FreeBoard board) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query="INSERT INTO FREEBOARD_TBL VALUES(SEQ_FREENO.NEXTVAL,?,?,'admin', DEFAULT, DEFAULT, DEFAULT)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, board.getFreeBoardSubject());
			pstmt.setString(2, board.getFreeBoardContent());
//			pstmt.setString(3, board.getFreeBoardWriter());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}


	public List<FreeBoard> selectBoardList(Connection conn, int currentPage) {
		PreparedStatement pstmt = null; 
		ResultSet rset = null;
//		String query = "SELECT * FROM FREEBOARD_TBL ORDER BY UPLOAD_DATE DESC";
		String query="SELECT * FROM (SELECT ROW_NUMBER()OVER(ORDER BY FREE_NO DESC)ROW_NUM,FREEBOARD_TBL.* FROM FREEBOARD_TBL)WHERE ROW_NUM BETWEEN ? AND ?";
		List<FreeBoard>bList = new ArrayList<FreeBoard>();
		
		int recordCountPerPage = 20;
		int start = currentPage*recordCountPerPage - (recordCountPerPage -1);
		int end = currentPage*recordCountPerPage;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				FreeBoard board = rsetToBoard(rset);
				bList.add(board);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				rset.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return bList;		
	}


	public String generatePageNavi(int currentPage) {
		//전체게시물 102 
		//1페이지당 보여줄 게시물의 수 : 20 
		//page범위(네비게이터)의 수 : 6pages
		
		int totalCount = 102;  //전체 게시물의 갯수 //*이후 해야할 것 : 전체 게시물의 갯수를 동적으로 가져와야 함  
		int recordCountPerPage = 20;  //1페이지당 보여줄 게시물 수
		int naviTotalCount = 0;  //네비게이터의 갯수 우선 0으로 초기화
		if(totalCount % recordCountPerPage > 0 ) { //나머지가 있으면 +1
			naviTotalCount = totalCount / recordCountPerPage +1;
		} else {
			naviTotalCount = totalCount / recordCountPerPage;
		}
		//스타트네비, 엔드네비 구하기 
		int naviCountPerPage = 5;  //한 장면에 나오는 숫자네비 숫자를 5까지 한다는 뜻 
		
		//currentPage    startNavi    endNavi
		// 1,2,3,4,5          1			5
		// 6,7,8,9,10         6			10
		// 11,12,13,14,15     11		15
		// 16,17,18,19,20     16  		20  //공차 5인 등차수열     
		int startNavi = ((currentPage-1)/naviCountPerPage)* naviCountPerPage+1;
		int endNavi = startNavi + naviCountPerPage - 1;
		
		
		//엔드네비값이 총 범위의 갯수보다 커지는 것을 막기위한 코드 
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		} 
		boolean needPrev = true;
		boolean needNext = true;
		if (startNavi ==1) {
			needPrev = false;  //꺼버림
		}
		if (endNavi == naviTotalCount) {
			needNext = false;  //꺼버림
		}
	
		StringBuilder result = new StringBuilder();
		if(needPrev) {
			result.append("<a href='/board/freeList.do?currentPage="+(currentPage-1)+"'>[이전]</a> ");  
		}
		for(int i = startNavi; i <= endNavi; i++) {
			result.append("<a href='/board/freeList.do?currentPage="+i+"'>"+i+"</a>&nbsp;&nbsp;&nbsp;");  
		}
		if(needNext) {
			result.append("<a href='/board/freeList.do?currentPage="+(currentPage+1)+"'>[다음]</a>"); 
		}
		return result.toString();  //int인 리절트를 스트링으로 변환해 반환
	}


	public FreeBoard selectOneByNo(Connection conn, int freeBoardNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query="SELECT * FROM FREEBOARD_TBL WHERE FREE_NO = ?";  
		FreeBoard board = null;  
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, freeBoardNo);
			rset = pstmt.executeQuery();
			if(rset.next()) { 
				board = rsetToBoard(rset);
			}   //트라이 안의 코드가 실패하면 널이 리턴됨 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				rset.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return board;
	}
	
	private FreeBoard rsetToBoard(ResultSet rset) throws SQLException {
		FreeBoard board = new FreeBoard();
		board.setFreeBoardNo(rset.getInt("FREE_NO"));
		board.setFreeBoardSubject(rset.getString("FREE_SUBJECT"));
		board.setFreeBoardContent(rset.getString("FREE_CONTENT"));
		board.setFreeBoardWriter(rset.getString("FREE_WRITER"));
		board.setUploadDate(rset.getTimestamp("UPLOAD_DATE"));
		board.setUpdateDate(rset.getTimestamp("UPDATE_DATE"));
		board.setViewCount(rset.getInt("VIEW_COUNT"));

		return board;
	}


	
	



}


