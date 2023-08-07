package free.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import free.model.service.BoardService;
import free.model.vo.FreeBoard;
import free.model.vo.PageData;


/**
 * Servlet implementation class BoardController
 */
@WebServlet("/board/freeList.do")
public class FreeListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardService service = new BoardService();
		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		PageData pd = service.selectBoardList(currentPage);
		List<FreeBoard> bList = pd.getbList();
		request.setAttribute("bList", bList);  
		request.setAttribute("pageNavi", pd.getPageNavi()); 
		RequestDispatcher veiw = request.getRequestDispatcher("/WEB-INF/views/board/freeBoardList.jsp");
		veiw.forward(request, response); 
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
