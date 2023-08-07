<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>피아노 원데이 클래스</title>
        <link rel="stylesheet" href="../resources/css/reservation1.css">
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

                <section id="main_layer1">
                    <div id="main1-1">
                        <img src="../resources/images/flower1.PNG" alt="" id="thumbnail" >
                    </div>
                    <div id="main1-2">
                        <div id="maintitle">
                            <div class="clsName">
                                <b>피아노 원데이 클래스</b>
                            </div>
    
                        <!-- 찜버튼 -->
                            <div class="right_area">
                                <a href="javascript:;" class="icon heart">
                                    <img src="https://cdn-icons-png.flaticon.com/512/812/812327.png" alt="찜하기">
                                </a>
                            </div>
                        <!-- 찜버튼 -->

                        </div>

                        <div id="info_list">
                            <ul id="info_ul">
                                <li class="info_li">진행 강사 : 윤태협 <span id="starScr">★★★★☆</span> 
                                    <span id="reviewCnt">(12)</span><button id="rv_btn">리뷰</button></li>
                                <li class="info_li">진행 요일 : 화 / 목 / 토 </li>
                                <li class="info_li">진행 시간 : 오전 10시 ~ 오후 1시 (3시간)</li>
                                <li class="info_li">1일 100,000원</li>
                            </ul><br>
                        </div>
                        <div>
                            <a href="/reservation2.jsp"><button id="reserve_btn">예약 신청하기</button></a>
                            <a href="#"><button id="ask_btn">문의하기</button></a>
                        </div>

                            </div>
                        </div>
                    </div>

                </section>

                <section id="main_layer2">
                        <div class="sec2-1">
                            <div class="teacher">
                                <h4>수강대상</h4>
                            </div>
                            <div class="class_content">
                                <ul>
                                    <li>피아노를 처음 배우시는 분 </li>
                                    <li>피아노 레슨 맛보기를 원하시는 분</li>
                                    <li>한곡 완성이 목표이신 분</li>
                                    <li>더 깊고 완성도 높은 연주를 원하시는 분</li>
                                    <li>연인, 친구와 이색데이트를  즐기고 싶으신 분</li>  
                                </ul>
                            </div>
                        </div>
                        <div class="sec2-1">
                            <div class="teacher">
                                <h4> 선생님 정보</h4>
                            </div>
                            <div class="class_content">
                                <ul>
                                    <li>을지대학교 피아노 전공 (재학중)</li>
                                    <li>강습경력 3년 </li>
                                    <li>레슨실 위치 : 을지로입구 6번출구앞 </li>
                                    <li>친절하게 가르쳐드립니다. </li>
                                </ul>
                            </div>
                            
                        </div>
                        <div class="sec2-1">
                            <div class="teacher" id="rpoint">
                                <h4> 수업 진행 과정 </h4>
                            </div>
                            <div class="class_content">
                                <ol>
                                    <li>방문 후 상담을 통해 원하는 곡 선정 (악보 제공)</li>
                                    <li>악보읽기 (계이름, 박자 등) 교육  </li>
                                    <li>연습 </li>
                                    <li>촬영이나 녹음 가능합니다. </li>
                                </ol>
                            </div>
                            
                        </div>
                </section>

                <section id="main_layer3">

                    <section id="main_sec3">
                        <section id="main_sec3_1">
                            <div id="scr_review">
                                <div id="bigScr">
                                    <h2>리뷰</h2>
                                </div>
                                <div id="bigstar">
                                    ★★★★☆
                                </div>
                                <div id="bigScr2">
                                    <p id="big_scr"><strong>4.5</strong></p>
                                    <span id="count"><small>(12개의 리뷰)</small></span>
                                </div>
                            </div>
                        </section>

                        <section id="main_sec3-2">
                            <div id="pht_preview">
                                <div id="pht_preview1">
                                    <img src="../resources/images/2.png" class="rkw">
                                </div>
                                <div id="pht_preview2">
                                    <!-- <img src="../resources/images/goodman2.png" class="rkw"> -->
                                </div>
                            </div>
                        </section>
                    </section>

                    <section id="txt_review">
                        <ul id="review_ul">
                            <li class="review_li">
                                <article class="revw">
                                    <div class="photo">
                                        <!-- <img src=".." class="rkw"> -->
                                    </div>
                                    <div class="text">
                                        <section class="rv_name">
                                            최**
                                        </section>
                                        <section class="rv_star">
                                            ★★★★★
                                        </section>
                                        <div class="rv_content">
                                            예전부터 피아노 배우고 싶었는데 재밌었음<br> 
                                            
                                        </div>
                                        <section class="rv_date">
                                            2023.6.9
                                        </section>                                    
                                    </div>
                                </article>
                            </li>
                            <li class="review_li">
                                <article class="revw">
                                    <div class="photo">
                                        
                                    </div>
                                    <div class="text">
                                        <section class="rv_name">
                                            송**
                                        </section>
                                        <section class="rv_star">
                                            ★★★★★
                                        </section>
                                        <div class="rv_content">
                                            원데이 클래스 들었는데 짧은시간이지만<br>
                                            재미있게 잘 배웠습니다 피아노 본격적으로<br> 
                                            배우고 싶어져요<br> 
                                        </div>
                                        <section class="rv_date">
                                            2023.6.9
                                        </section>
                                    </div>
                                </article>
                            </li>
                            <li class="review_li">
                                <article class="revw">
                                    <div class="photo">
                                        <img src="../resources/images/2.png" class="rkw">
                                    </div>
                                    <div class="text">
                                        <section class="rv_name">
                                            김**
                                        </section>
                                        <section class="rv_star">
                                            ★★★★☆
                                        </section>
                                        <div class="rv_content">
                                            선생님이 친절해요 재미있어요 또배우고<br>
                                            싶어요
                                        </div>
                                        <section class="rv_date">
                                            2023.6.8
                                        </section>
                                    </div>
                                </article>
                            </li>
                        </ul>
                    </section>
                    <!-- <div id="more">
                        <button id="more_btn">▽더보기</button></a>

                    </div> -->
                </section>












                <section id="main_layer4">
                    <a href="./reservation2.html"><button id="submit_btn">예약 신청하기 </button></a>
                </section>
                <section id="main_layer5">
                    <div id="caution">
                        ※예약시 주의사항 
                    </div >
                    <ol class="caution">
                        <li class="caution2">선생님 일정에 따라 예약이 완료되지 않을수 있습니다.</li>
                        <li class="caution2">예약 취소시 취소 시간에 따라 수수료가 발생 할 수 있습니다.</li>
                        <li class="caution2">예약시간을 지키지 않을 경우 예약금은 환불되지 않습니다.</li>
                    </ol>

                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        
        <script>
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



            const rv_btn = document.getElementById('rv_btn');
            const review = document.getElementById('rpoint');
            rv_btn.addEventListener('click', () => {
                window.scrollBy({top:review.getBoundingClientRect().top, behavior: 'smooth'});
            });
            // 리뷰버튼 누르면 리뷰있는곳으로 스크롤다운

        </script>

    </body>
    </html>

