<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>서태우 선생님</title>
        <link rel="stylesheet" href="../resources/css/teacher.css">
        <link rel="stylesheet" href="../resources/css/reset.css">
        <!-- 헤더 폰트 -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Serif:wght@500&display=swap" rel="stylesheet">
        <!-- 본문 폰트 -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@300&display=swap" rel="stylesheet">
        <!-- f -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Orbit&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>  
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
            <main>
                <section id="main_layer1">
                    <div id="profile_pic">
                        <img src="../resources/images/goodman.png" alt="서태우" id="rukawa">
                    </div>

                    <div id="base_info">
                        <div id="base1">
                            <div id="stw_name">서태우 선생님</div>
                            <div class="right_area">
                                <a href="javascript:;" class="icon heart">
                                    <img src="https://cdn-icons-png.flaticon.com/512/812/812327.png" alt="찜하기">
                                </a>
                            </div>
                            <!-- <div class="favIcon">
                                <a href="javascript:;" class="icon heart">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
                                        <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/ alt="찜하기">
                                    </svg>
                                </a>
                            </div>   -->
                        </div>
                    

                    <div id="base2">
                        <p>레슨횟수 : 총 3회 </p>
                    </div>

                    <div div id="base3">
                        <span id="starScr">
                            ★★★★★ 
                        </span>
                        <span id="reviewCnt">
                            (3)
                        </span>
                        <div id="reviewBtn">
                            <button id="rv_btn">리뷰</button>
                        </div>
                    </div>
                        
                    <div id="base4">
                        <p>레슨비 : 회당 50,000원 (50분 기준)</p>
                        <p>결제방법 : ㅇㅇ페이, 계좌이체</p>
                    </div>
                </div>

                    <div id="chat"> 
                        <button id="chat_btn"> 상담하기</button> <br>
                        <small id="contact">연락가능시간 : 매일 9시 ~ 10시 / 21시 ~ 23시</small>
                    </div>
                </section>



                <section id="main_layer2">
                    <section id="main_sec2">
                        <div id="sec2-1">
                            <div id="info" class="teacher">
                                <h4>선생님 정보</h4>
                            </div>
                            <div id="info_content">
                                <ul>
                                    <li>한국대학교 피아노전공 (졸업)</li>
                                    <li>총 레슨 경력 7년</li>
                                    <li>입시레슨, 취미레슨 가능 </li>
                                    <li>레슨실 위치 : 낙성대역 2번 출구 앞 </li>
                                    <li>학생 자택으로 방문레슨 가능</li>
                                </ul>
                            </div>
                        </div>
                        <div id="sec2-2">
                            <div id="target" class="teacher">
                                <h4>수강대상</h4>
                            </div>
                            <div id="target_content">
                                <ul>
                                    <li>피아노를 처음 배우시는 분 </li>
                                    <li>기초가 부족해서 고민이신 분</li>
                                    <li>한곡 완성이 목표이신 분</li>
                                    <li>더 깊고 완성도 높은 연주를 원하시는 분</li>
                                </ul>
                            </div>
                        </div>
                    </section>


                    <section id="main_sec3">
                        <section id="main_sec3_1">
                            <div id="scr_review">
                                <div id="bigScr">
                                    <h2>리뷰</h2>
                                </div>
                                <div id="bigstar">
                                    ★★★★★
                                </div>
                                <div id="bigScr2">
                                    <p id="big_scr"><strong>5.0</strong></p>
                                    <span id="count"><small>(3개의 리뷰)</small></span>
                                </div>
                            </div>
                        </section>
                        <section id="main_sec3-2">
                            <div id="pht_preview">
                                <div id="pht_preview1">
                                    <img src="../resources/images/2022120601782_0.jpg" class="rkw">
                                </div>
                                <div id="pht_preview2">
                                    <img src="../resources/images/goodman2.png" class="rkw">
                                </div>
                            </div>
                        </section>
                    </section>
                

                <section id="txt_review">
                    <ul id="review_ul">
                        <li class="review_li">
                            <article class="revw">
                                <div class="photo">
                                    <img src="../resources/images/goodman2.png" class="rkw">
                                </div>
                                <div class="text">
                                    <section class="rv_name">
                                        이**
                                    </section>
                                    <section class="rv_star">
                                        ★★★★★
                                    </section>
                                    <div class="rv_content">
                                        선생님이 잘생기고 피아노가 재밌어요
                                    </div>
                                    <section class="rv_date">
                                        2023.6.6
                                    </section>                                    
                                </div>
                            </article>
                        </li>
                        <li class="review_li">
                            <article class="revw">
                                <div class="photo">
                                    <img src="../resources/images/2022120601782_0.jpg" class="rkw">
                                </div>
                                <div class="text">
                                    <section class="rv_name">
                                        정**
                                    </section>
                                    <section class="rv_star">
                                        ★★★★★
                                    </section>
                                    <div class="rv_content">
                                        피아노 배우고 싶어서 찾아봤다가 신청 <br>
                                        했는데 차근차근 친절하게 잘 가르쳐주 <br> 
                                        세요 <br> 
                                    </div>
                                    <section class="rv_date">
                                        2023.6.5
                                    </section>
                                </div>
                            </article>
                        </li>
                        <li class="review_li">
                            <article class="revw">
                                <div class="photo">
                                    <!-- <img src="#" class="none"> -->
                                </div>
                                <div class="text">
                                    <section class="rv_name">
                                        신**
                                    </section>
                                    <section class="rv_star">
                                        ★★★★★
                                    </section>
                                    <div class="rv_content">
                                        피아노 처음배우는데 잘 가르쳐주세요 <br> 
                                        또 서태우샘한테 배우고 싶어요
                                    </div>
                                    <section class="rv_date">
                                        2023.6.4
                                    </section>
                                </div>
                            </article>
                        </li>
                    </ul>
                </section>
                </section>
                
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        
        <script>
            const rv_btn = document.getElementById('rv_btn');
            const main_sec3 = document.getElementById('main_sec3');
            rv_btn.addEventListener('click', () => {
                window.scrollBy({top:main_sec3.getBoundingClientRect().top, behavior: 'smooth'});
            });
            // 리뷰버튼 누르면 리뷰있는곳으로 스크롤다운

            $(function(){
                var $likeBtn =$('.icon.heart');

                $likeBtn.click(function(){
                $likeBtn.toggleClass('active');

            if($likeBtn.hasClass('active')){          
                $(this).find('img').attr({
                'src': 'https://cdn-icons-png.flaticon.com/512/803/803087.png',
                alt:'찜하기 완료'
            });

            }else{
                $(this).find('i').removeClass('fas').addClass('far')
                $(this).find('img').attr({
                'src': 'https://cdn-icons-png.flaticon.com/512/812/812327.png',
                alt:"찜하기"
                        })
                    }
                })
            })
            // 하트 누르면 빨갛게 찜
        </script>
    </body>
    </html>

