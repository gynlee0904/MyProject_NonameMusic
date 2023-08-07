package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;


/**
 * Servlet implementation class LoginController
 */
@WebServlet("/member/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher veiw = request.getRequestDispatcher("/WEB-INF/views/member/login.jsp");
		veiw.forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 쿼리문: SELECT * FROM MEMBER_TBL WHERE MEMBER_ID = ? AND MEMBER_PW = ?
		String memberEmail = request.getParameter("member-email");
		String memberPw = request.getParameter("member-pw");
		Member member = new Member(memberEmail, memberPw);
		
		MemberService service = new MemberService();
		Member mOne = service.loginCheck(member);
		
		if(mOne != null) {
			//로그인에 성공하면 mOne에서 가져온 memberEmail을 세션에 저장
			HttpSession session = request.getSession();
			session.setAttribute("memberName", mOne.getMemberName());
			session.setAttribute("memberGender", mOne.getMemberGender());
			session.setAttribute("memberEmail", mOne.getMemberEmail());
			session.setAttribute("freeWords", member.getFreeWords());
			
			
			// 로그인 성공
			request.setAttribute("msg", "로그인 성공!");
			request.setAttribute("url", "/index.jsp");
			RequestDispatcher view
			= request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp");
			view.forward(request, response); // 누락주의
		}else {
			// 로그인 실패
			request.setAttribute("msg", "로그인 되지 않았습니다.");
			RequestDispatcher view
			= request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp");
			view.forward(request, response); // 누락주의
		}
		
	}

}
