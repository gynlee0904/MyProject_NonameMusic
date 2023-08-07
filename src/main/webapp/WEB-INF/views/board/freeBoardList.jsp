<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
     <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>피아노 원데이 클래스</title>
        <link rel="stylesheet" href="../resources/css/freeBoardList.css">
        <link rel="stylesheet" href="../resources/css/reset.css">
        <!-- 헤더 폰트 -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Serif:wght@500&display=swap" rel="stylesheet">
        <!-- 본문 폰트 -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>  
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>  
            
            <main>
                <aside id="main-layer1">
                    <div id="board_menu1"></div>
                     <div id="menu_container">
	                     <button class="menuBtn" id="menu_notice" onclick="toggleButton(1)">공지사항</button>
	                     <button class="menuBtn" id="menu_free" onclick="toggleButton(2)">자유게시판</button> 
	                     <button class="menuBtn" id="menu_playing" onclick="toggleButton(3)">연주 영상</button>
	                     <button class="menuBtn" id="menu_market" onclick="toggleButton(4)">거래게시판</button>
                     </div>
                    <div id="board_menu2"></div>
                </aside>
                
                <section id="main-layer2">
                	<div id="board_name">
                        <h1>자유게시판</h1>
                    </div>
                    <div id="board_table">
					<table>
						<colgroup>
							<col width="10%">
							<col width="50%">
							<col width="10%">
							<col width="20%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<th>글번호</th>
								<th>글제목</th>
								<th>글쓴이</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach var="board" items="${requestScope.bList}">   
							<tr>
								<td class="text-align" nowrap>${ board.freeBoardNo }</td> 
								<td id="subject" nowrap><a href="/board/freeDetail.do?freeBoardNo=${ board.freeBoardNo }"> ${ board.freeBoardSubject } </a></td> 
								<td class="text-align" nowrap>${ board.freeBoardWriter }</td>
								<td class="text-align" nowrap>${ board.uploadDate }</td>
								<td class="text-align" nowrap>${ board.viewCount }</td>
							</tr>
							</c:forEach>
<!-- 							<tr> -->
<!-- 								<td colspan="5" align = "center"> -->
<%-- 									${pageNavi} --%>
<!-- 								</td> -->
<!-- 							</tr> -->
						</tbody>	
					</table>
					</div>
					<div id="table_footer">
						 <div id="search">
					        <div class="search-box">
					            <select name="option">
					                <option value="title">제목</option>
					                <option value="content">내용</option>
					            </select>
					            <input type="search" placeholder="검색어를 입력하세요">
					            <button type="submit">검색</button>
					        </div>
					    </div>

						<div id="count_nav">
	                		${pageNavi}
						</div>
                        <div id="btn">
                            <button type="button" name ="uploadBtn" id="uploadBtn" onclick="location.href = '/board/freeInsert.do'">글작성</button>
                            <button type="button" name ="listBtn" id="listBtn" onclick="location.href = '/board/freeList.do?currentPage=1'">첫페이지로</button></a>
	                		
                        </div>
                	</div>
                </section>

            </main>
            
            
            
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>

        </div>
        
        
        <script>
	        function toggleButton(buttonNumber) {
	            var buttons = document.getElementsByClassName('menuBtn');
	            for (var i = 0; i < buttons.length; i++) {
	                if (i === buttonNumber - 1) {
	                    buttons[i].classList.add('active');
	                } else {
	                    buttons[i].classList.remove('active');
	                }
	            }
	        }
        </script>
    </body>
</html>











