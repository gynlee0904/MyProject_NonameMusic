<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>My Page</title>
        <link rel="stylesheet" href="../resources/css/myPage.css">
        <link rel="stylesheet" href="../resources/css/reset.css">
        <!-- 헤더 폰트 -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Serif:wght@500&display=swap" rel="stylesheet">
        <!-- 본문 폰트 -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>  
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
            
            <main>
                <section id="main_layer1">
                    <div id="main_title">
                        <h1>마이페이지</h1>
                    </div>
                    
                    <div id="profile1">
                        <img src="/resources/images/profile_pic.png" alt="사진" id="mypicture">
                    </div>
                    <div id="profile2">
							<p id="name"><b>${member.memberName} ( ${member.memberGender} )</b></p>
							<p> ${ member.memberEmail }</p>
							<p> ${ member.memberPhone } </p>
                    </div>

                    <div id="profile3">
                       <button type="submit" id="findPw_btn" name="changePw" onclick="">비밀번호 변경</button></a>
                       <a href="javascript:void(0)" onclick="checkDelete();"><button type="submit" id="delete_btn" name="delete" value="">회원탈퇴</button></a>
                    </div>
                </section>

                <section id="main_layer2">
                    <div id="current">
                        <div id="current1">
                            <p class="head"><b>수강 정보</b></p></h3>
                        </div>
                        <div id="current2">
                            <ul class="cur_ul">
                                <li class="cur_li"><a href="#" class="cur_a">현재 수업중인 선생님</a></li>
                                <li class="cur_li"><a href="#" class="cur_a">수강신청 이력</a></li>
                                <li class="cur_li"><a href="#" class="cur_a">내가 올린 리뷰</a></li>
                                <li class="cur_li"><a href="#" class="cur_a">내 게시글</a></li>
                                <li class="cur_li"><a href="#" class="cur_a">찜 리스트</a></li>
                            </ul>
                        </div>
                    </div>
                    <div id="choice">
                        <div id="choice1">
                            <p class="head"><b>추가 정보</b></p></h3>
                        </div>
                        <div id="choice2">
                            <ul class="cur_ul">
                                <li class="cur_li">희망하는 레슨 장소</li>
                                <li class="cur_li">희망하는 레슨 방식</li>
                                <li class="cur_li">희망하는 레슨</li>
                                <li class="cur_li">선호하는 선생님 성별</li>
                                <li class="cur_li">나의 현재 레벨 </li>
                            </ul>  
                        </div>
                        <div id="choice3">
                            <ul class="cur_ul">
                                <li class="cur_li" >${ member.place }</li>
                                <li class="cur_li" >${ member.lesson }</li>
                                <li class="cur_li" >${ member.lessonType }</li>
                                <li class="cur_li" >${ member.tGender }</li>
                                <li class="cur_li" >${ member.myLevel }</li>
                            </ul>
                        </div>
                    </div>
                    <div id="intro">
                        <div id="intro1">
                            <p class="head"><b>하고싶은 말</b></p></h3>
                        </div>
                        <div id="intro2">
                            <div id="textarea" >${ member.freeWords }</div>
                        </div>
                    </div>
						
                    <div id="btn">
                       <button type="button" id="modify_btn" name="modifyInfo" onclick="modifyBtn();">회원정보수정</button></a>
                    </div>
                </section>
             
            </main>
            
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        
        <script>
	    	function checkDelete(){
				const memberEmail = '${sessionScope.memberEmail}'
				if(confirm ("정말 탈퇴하시겠습니까?")){
					location.href = "/member/delete.do?memberEmail="+memberEmail;
				}
				//확인(true) 눌렀을때만 탈퇴되도록  //취소누르면 실행문이 동작 안함 
			}
	    	
	    	function modifyBtn(){
	    		const memberEmail = '${sessionScope.memberEmail}'
					location.href = "/member/modifyInfo.do?memberEmail="+memberEmail;
			}
	    	
	    	
		</script> 
        

    </body>
    </html>

