<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>MAIN</title>
        <link rel="stylesheet" href="/resources/css/index.css">
        <link rel="stylesheet" href="/resources/css/reset.css">
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

           <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>    	<!-- 헤더 -->
           <jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>  	   	<!-- 나브 -->
            
            <main>
                <section id="main_layer1"></section>
                <section id="main_layer2">
                    <div id="review">
                        <table id="tbl1">
                            <caption id="cap1"><b>Review</b></caption>
                            <thead>
                                <tr>
                                    <td class="tbl_title">번호</td>
                                    <td class="tbl_title">제목</td>
                                    <td class="tbl_title">날짜</td>
                                </tr> 
                            </thead>
                            <tbody>
                                <tr>
                                    <td>904</td>
                                    <td>예전부터 피아노 배우고 싶...</td>
                                    <td>2023.6.9</td>
                                </tr>
                                <tr>
                                    <td>903</td>
                                    <td>성인되고 처음 피아노 쳐봤...</td>
                                    <td>2023.6.9</td>
                                </tr>
                                <tr>
                                    <td>902</td>
                                    <td>원데이 클래스 들었는데 짧...</td>
                                    <td>2023.6.8</td>
                                </tr>
                                <tr>
                                    <td>901</td>
                                    <td>선생님이 친절해요 재밌어요</td>
                                    <td>2023.6.8</td>
                                </tr>
                                <tr>
                                    <td>900</td>
                                    <td>이하나샘 강추입니다 친절...</td>
                                    <td>2023.6.7</td>
                                </tr>
                                <tr>
                                    <td>899</td>
                                    <td>선생님이 잘생기고 피아노...</td>
                                    <td>2023.6.6</td>
                                </tr>
                                <tr>
                                    <td>898</td>
                                    <td>피아노 배우고 싶어서 찾아...</td>
                                    <td>2023.6.5</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="play">
                        <!-- https://img.youtube.com/vi/2qtKMC5wzkU/maxresdefault.jpg -->
                        <iframe width="390" height="220" src="https://www.youtube.com/embed/2qtKMC5wzkU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                    <div id="commu">
                        <table id="tbl2">
                            <caption id="cap1"><b>Board</b></caption>
                            <thead>
                                <tr>
                                    <td class="tbl_title">번호</td>
                                    <td class="tbl_title">제목</td>
                                    <td class="tbl_title">날짜</td>
                                </tr> 
                            </thead>
                            <tbody>
                                <tr>
                                    <td>4568</td>
                                    <td>아코디언 팔아요</td>
                                    <td>2023.6.10</td>
                                </tr>
                                <tr>
                                    <td>4567</td>
                                    <td>3n살인데 피아노 배우는...</td>
                                    <td>2023.6.10</td>
                                </tr>
                                <tr>
                                    <td>4566</td>
                                    <td>피아노 잘가르치는 선생님...</td>
                                    <td>2023.6.10</td>
                                </tr>
                                <tr>
                                    <td>4565</td>
                                    <td>잘때 듣기좋은 클랙식 추...</td>
                                    <td>2023.6.10</td>
                                </tr>
                                <tr>
                                    <td>4565</td>
                                    <td>원데이 클래스 해보신 분 ...</td>
                                    <td>2023.6.9</td>
                                </tr>
                                <tr>
                                    <td>4565</td>
                                    <td>전자피아노 가져가실 분</td>
                                    <td>2023.6.9</td>
                                </tr>
                                <tr>
                                    <td>4565</td>
                                    <td>새로 알게된 음악인데 좋...</td>
                                    <td>2023.6.9</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </section>

			
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>

        

    </body>
    </html>

