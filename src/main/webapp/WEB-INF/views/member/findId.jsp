<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="en">
     <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>아이디 찾기</title>
        <link rel="stylesheet" href="../resources/css/findId.css">
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
                <form action="../member/findid2.html" method="">
                    <div id="findBox">
                        <div id="box_header1">
                            <h1>아이디 찾기</h1>
                        </div>
                        <div id="box_header2">
                            <div id="check_member">회원 인증</div>
                            <div id="check_phone">
                                <input type="text" name="" id="checkNum" placeholder="휴대폰 번호를 입력하세요">
                            </div>
                            <div id="check_btn">
                                <a href="./findId_2.html"><button id="btn">휴대폰인증</button></a>
                            </div>
            
                        </div>
                    </div>
                </form>

            </main>
            <footer></footer>
        </div>
        

    </body>
    </html>

