package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class ModifyInfoController
 */
@WebServlet("/member/modifyInfo.do")
public class ModifyInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//마이페이지에서 수정하기 버튼을 눌렀을때 작동되는것(두겟)
		request.getRequestDispatcher("/WEB-INF/views/member/modifyInfo.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");  //인코딩
		//쿼리문 : UPDATE MEMBER_TBL SET 레슨장소, 레슨, 레슨타입, 강사성별, 학생레벨, 하고싶은말 WHERE 이멜, 비번
		String memberEmail = request.getParameter("member-email");
		String memberPw = request.getParameter("member-pw");
		String [] places = request.getParameterValues("visit");
		String [] lessons = request.getParameterValues("lesson");
		String lessonType = request.getParameter("type");
		String tGender = request.getParameter("gender");
		String myLevel = request.getParameter("level");
		String freeWords = request.getParameter("freeWords");
		
		String place = String.join(",", places);
		String lesson = String.join(",", lessons);
		
		MemberService service = new MemberService();
		Member member = new Member(memberEmail, memberPw, place, lesson, lessonType, tGender, myLevel, freeWords);
		int result = service.modifyMemberInfo(member);
		if(result > 0) {
			// 성공하면 성공 페이지로 이동 -> RequestDispatcher
//			request.setAttribute("msg", "회원정보수정 완료.");
//			request.setAttribute("url", "/WEB-INF/views/member/myPage.jsp");
//			request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp")
//			.forward(request, response);
			response.sendRedirect("/index.jsp");
			
		}else {
			// 실패
			request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp")
			.forward(request, response);
		}
	}

}
