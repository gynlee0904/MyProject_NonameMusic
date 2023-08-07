<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>아이디 찾기</title>
        <link rel="stylesheet" href="../resources/css/findid2.css">
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
                    <div id="findBox">
                        <div id="box_header1">
                            <h1>아이디 찾기</h1>
                        </div>
                        <div id="box_header2">
                            <div id="findout">
                                <p> 홍길동 회원님의 ID는 <span><b>HGD0001@navar.com</b></span> 입니다.</p>
                            </div>
                            <div id="next">
                                <a href="./login.html"><input type="button" id="login_btn" value="로그인하기"></a>
                                <a href=""><input type="button" id="pw_btn" value="비밀번호 찾기"></a>
                            </div>
                        </div>
                    </div> 
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        

    </body>
    </html>

