<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>클래스 찾기</title>
        <link rel="stylesheet" href="../resources/css/product.css">
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
                    <div class="search-container">
                        <div class="search-box">
                            <input type="text" placeholder="검색어를 입력하세요">
                            <button type="submit"></button>
                        </div>
                        <!-- <div>
                            <button id="dtail_srch">상세검색</button>
                        </div> -->
                    </div> 
                    
                </section>

                <section id="main_layer2">

                    <div class="product-list">
                        
                        <a href="/product/reservation1.jsp" class="product">
                            <div class="product_name">
                                피아노 원데이 클래스
                            </div>
                            <img src="/resources/images/flower1.PNG" width="225" height="225" class="thumbnail">
                            <div class="product_price">
                                3시간 100,000원
                            </div>
                            <div class="product_teacher">
                                진행강사 : 윤태협
                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="product_name">
                                피아노 기초반 모집 
                            </div>
                            <img src="../resources/images/2022120601782_0.jpg" width="225" height="225" class="thumbnail">
                            <div class="product_price">
                                1개월 4회 160,000원 
                            </div>
                            <div class="product_teacher">
                                진행강사 : 이하나
                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="product_name">
                                피아노 원데이 클래스
                            </div>
                            <img src="../resources/images/flower5.PNG" width="225" height="225" class="thumbnail">
                            <div class="product_price">
                                3시간 110,000원
                            </div>
                            <div class="product_teacher">
                                진행강사 : 이하나
                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="product_name">
                                피아노 기초반 모집 
                            </div>
                            <img src="../resources/images/flower2.PNG" width="225" height="225" class="thumbnail">
                            <div class="product_price">
                                2개월 8회 240,000원
                            </div>
                            <div class="product_teacher">
                                진행강사 : 윤태협
                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="product_name">
                                피아노 원데이 클래스
                            </div>
                            <img src="../resources/images/images.jpg" width="225" height="225" class="thumbnail">
                            <div class="product_price">
                                3시간 150,000원
                            </div>
                            <div class="product_teacher">
                                진행강사 : 서태우
                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="product_name">
                                피아노 원데이 클래스
                            </div>
                            <img src="../resources/images/6.png" width="225" height="225" class="thumbnail">
                            <div class="product_price">
                                3시간 130,000원
                            </div>
                            <div class="product_teacher">
                                진행강사 : 강백현
                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="product_name">
                                피아노 원데이 클래스
                            </div>
                            <img src="../resources/images/flower3.PNG" width="225" height="225" class="thumbnail">
                            <div class="product_price">
                                2시간 90,000원
                            </div>
                            <div class="product_teacher">
                                진행강사 : 채소영
                            </div>
                        </a>

                        <a href="#" class="product">
                            <div class="product_name">
                                피아노 단기 강습
                            </div>
                            <img src="../resources/images/top.jpg" width="225" height="225" class="thumbnail">
                            <div class="product_price">
                                3달 12회 360,000원
                            </div>
                            <div class="product_teacher">
                                진행강사 : 이명진
                            </div>
                        </a>

                    
                    </div>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        

    </body>
    </html>

