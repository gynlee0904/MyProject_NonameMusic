//package member.controller;
//
//import java.io.IOException;
//import java.util.Arrays;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import member.model.service.MemberService;
//import member.model.vo.Member;
//
///**
// * Servlet implementation class MemberController
// */
//@WebServlet("/member/register3.do")
//public class Register3Controller extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public Register3Controller() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher veiw = request.getRequestDispatcher("/WEB-INF/views/member/register3.jsp");
//		veiw.forward(request, response); 
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");  //인코딩
//		//쿼리문 : INSERT INTO MEMBER_TBL VALUES (이름, 이메일, 비번, 레슨장소, 레슨, 레슨타입, 강사성별, 학생레벨)
//		String memberName = request.getParameter("member-name");
//		String memberEmail = request.getParameter("member-email");
//		String memberPw = request.getParameter("member-pw");
//		String [] places = request.getParameterValues("visit");
//		String [] lessons = request.getParameterValues("lesson");
//		String [] lessonTypes = request.getParameterValues("type");
//		String tGender = request.getParameter("gender");
//		String myLevel = request.getParameter("level");
//		String freeWords = request.getParameter("freeWords");
//		
//		String place = String.join(",", places);
//		String lesson = String.join(",", lessons);
//		String lessonType = String.join(",", lessonTypes);
//		
////		String place = places.toString(); //이렇게 쓰면 [Ljava.lang.String;@3dc628d5 이런식으로 나옴 
////		String lesson = lessons.toString();
////		String lessonType = lessonTypes.toString();
//
//		Member member = new Member( memberName, memberEmail, memberPw, place, lesson, lessonType, tGender, myLevel, freeWords);
//		
//		MemberService service = new MemberService();
//		int result = service.insertMember(member);
//		if(result > 0) {
//			// 성공하면 성공 페이지로 이동 -> RequestDispatcher
//			request.setAttribute("msg", "회원가입 성공.");
//			request.setAttribute("url", "/member/myInfo.do?memberEmail="+memberEmail);
//			request.getRequestDispatcher("/WEB-INF/views/common/serviceSuccess.jsp")
//			.forward(request, response);
//			
//		}else {
//			// 실패
//			request.getRequestDispatcher("/WEB-INF/views/common/serviceFailed.jsp")
//			.forward(request, response);
//		}
//		
//	}
//
//};
