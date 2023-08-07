package free.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.model.service.BoardService;
import free.model.vo.FreeBoard;



/**
 * Servlet implementation class FreeDetailController
 */
@WebServlet("/board/freeDetail.do")
public class FreeDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int freeBoardNo = Integer.parseInt(request.getParameter("freeBoardNo"));
		BoardService service = new BoardService();
		FreeBoard board = service.selectOneByNo(freeBoardNo);
		if(board != null) {
			//성공 -> 상세페이지 이동 
			request.setAttribute("board", board);
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/board/freeBoardDetail.jsp");
			view.forward(request, response);
		}else {
			// 실패 -> 실패페이지 이동 
			request.setAttribute("msg", "데이터가 존재하지 않습니다");
			request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp").forward(request, response);
		}		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
