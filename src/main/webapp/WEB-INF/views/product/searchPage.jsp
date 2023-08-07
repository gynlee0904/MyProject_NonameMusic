<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Teachers</title>
        <link rel="stylesheet" href="../resources/css/search.css">
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
                    <div id="match_chk">
                        매칭된 선생님들만 보기 <input type="checkbox" name="" id="">
                    </div>
                    <div class="search-container">
                        <div class="search-box">
                            <input type="search" placeholder="검색어를 입력하세요">
                            <button type="submit"><img></button>
                        </div>
                    </div>
                </section>

                <section id="main_layer2">

                    <div class="product-list">

                        <a href="/product/teacherPage.jsp" class="product">
                            <div class="teachers">
                                <div class="product_name">
                                    <h5>서태우 선생님</h5>
                                </div>
                                <img src="/resources/images/goodman.png" class="thumbnail">
                                <div class="product_count">
                                    레슨횟수 : 3회 
                                </div>
                                <div class="product_score">
                                    ★★★★★
                                </div>

                            </div>
                        </a>

                        
                        <a href="#" class="product">
                            <div class="teachers">
                                <div class="product_name">
                                    <h5>윤태협 선생님</h5>
                                </div>
                                <img src="../resources/images/gosu.png" class="thumbnail">
                                <div class="product_count">
                                    레슨횟수 : 7회 
                                </div>
                                <div class="product_score">
                                    ★★★★☆
                                </div>

                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="teachers">
                                <div class="product_name">
                                    <h5>이하나 선생님</h5>
                                </div>
                                <img src="../resources/images/yuri.png" class="thumbnail">
                                <div class="product_count">
                                    레슨횟수 : 11회  
                                </div>
                                <div class="product_score">
                                    ★★★★☆
                                </div>
                            </div>

                        </a>

                        

                        <a href="#" class="product">
                            <div class="teachers">
                                <div class="product_name">
                                    <h5>강백현 선생님</h5>
                                </div>
                                <img src="../resources/images/unu.png" class="thumbnail">
                                <div class="product_count">
                                    레슨횟수 : 0회 
                                </div>
                                <div class="product_score">
                                    ☆☆☆☆☆
                                </div>

                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="teachers">
                                <div class="product_name">
                                    <h5>채소영 선생님</h5>
                                </div>
                                <img src="../resources/images/one0.png" class="thumbnail">
                                <div class="product_count">
                                    레슨횟수 : 12회 
                                </div>
                                <div class="product_score">
                                    ★★★★☆
                                </div>

                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="teachers">
                                <div class="product_name">
                                    <h5>이명진 선생님</h5>
                                </div>
                                <img src="../resources/images/img.jpg" class="thumbnail">
                                <div class="product_count">
                                    레슨횟수 : 4회 
                                </div>
                                <div class="product_score">
                                    ★★★★★
                                </div>

                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="teachers">
                                <div class="product_name">
                                    <h5>정우선 선생님</h5>
                                </div>
                                <img src="../resources/images/hyegyo.png" class="thumbnail">
                                <div class="product_count">
                                    레슨횟수 : 9회 
                                </div>
                                <div class="product_score">
                                    ★★★★★
                                </div>
                            </div>
                        </a>
                    </div>
                </section>

            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        

    </body>
    </html>

