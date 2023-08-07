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
 * Servlet implementation class FreeBoardInsertController
 */
@WebServlet("/board/freeInsert.do")
public class FreeInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/board/freeBoardInsert.jsp").forward(request,response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");  //한글 안깨지게 인코딩
		BoardService service = new BoardService();
		String freeBoardSubject = request.getParameter("freeSubject");
		String freeBoardContent = request.getParameter("freeContent");
		FreeBoard board = new FreeBoard(freeBoardSubject, freeBoardContent);
		int result = service.insertBoard(board);
		if (result > 0) {
			response.sendRedirect("/board/freeList.do");
			
		}else {
			//실패하면 실패메세지 출력 
			request.setAttribute("msg", "글이 등록되지 않았습니다");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp");
			view.forward(request, response); 
			
			
		}
	}

}
