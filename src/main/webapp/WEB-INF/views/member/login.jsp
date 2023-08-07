<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Log-In</title>
        <link rel="stylesheet" href="../resources/css/login.css">
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
                <form action="/member/login.do" method="post">
                    <div id="loginBox" class="ddd">
                        <div id="box_header1" ><h1>로 그 인</h1></div>
                        <div id="box_header2">
                            <!-- <label><input type="radio" name="position" checked> 학생</label>    
                            <label><input type="radio" name="position"> 강사</label> -->
                        </div>
                        <div id="box_header3"> 
                            <div id="hd3_layer1">
                                <div id="id-field">
                                    <input type="email" name="member-email" id="user_id" placeholder="이메일을 입력하세요">
                                </div>
                                <div id="pw-field" class="ddd">
                                    <input type="password" name="member-pw" id="user_pw" placeholder="비밀번호를 입력하세요">    
                                </div>
                            </div>
                            <div id="hd3_layer2">
                                <button type="submit" id="btn">로그인</button>
                            </div>
                        </div>
                        <div id="login_footer">
                            <a href="/findId.jsp">ID 찾기</a> /
                            <a href="#">PW 재설정</a>
                        </div>
                    </div>
                </form> 
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        

    </body>
    </html>

