<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>예약하기</title>
        <link rel="stylesheet" href="../resources/css/reservation2.css">
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
                    <!-- <div id="thumbnail"> -->
                        <img src="../resources/images/flower1.PNG" alt="" id="thumb_img" width="225px" height="225px">
                    <!-- </div> -->
                        <ul id="calssName_ul">
                            <li class="calssName_li"><b>피아노 원데이 클래스</b></li>
                            <li class="calssName_li">진행강사 : 윤태협</li>
                            <li class="calssName_li">가격 : 1일 100,000원</li>
                        </ul>
                </section>


                <section id="main_layer2">
                    <!-- <div id="main2-1"> -->
                        <div id="calendar">
                            <table class="Calendar">
                                <thead>
                                    <tr>
                                        <td  class="td" onClick="prevCalendar();" style="cursor:pointer;">&#60;</td>
                                        <td class="td" colspan="5">
                                            <span id="calYear"></span>년
                                            <span id="calMonth"></span>월
                                        </td>
                                        <td onClick="nextCalendar();" style="cursor:pointer;">&#62;</td>
                                    </tr>
                                    <tr>
                                        <td class="td">일</td>
                                        <td class="td">월</td>
                                        <td class="td">화</td>
                                        <td class="td">수</td>
                                        <td class="td">목</td>
                                        <td class="td">금</td>
                                        <td class="td">토</td>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div> 
                    <!-- </div> -->
                </section>


                <section id="main_layer3">    
                    <div id="main3-1">
                        <div class="rsv_box">
                            <table class="tbl" id="tbl1">
                                <caption id="cap1"><b>예약 시간</b></caption>
                                    <tr id="tr1">
                                        <td id="td1">
                                            <select name="time">
                                                <option value="time">오전 10시 ~ 오후 3시</option>
                                            </select>
                                        </td>
                                    </tr>
                            </table>

                        </div>
                        <div class="rsv_box">
                            <table class="tbl" id="tbl2">
                                <caption id="cap2"><b>예약자 정보</b></caption>
                                <tr id="tr2">
                                    <td class="td2-1">성함</td>
                                    <td>
                                        <input type="text" name="name" class="reserv_input" min="1" max="2">
                                    </td>
                                </tr>
                                <tr class="tr2">
                                    <td class="td2-1">연락처</td>
                                    <td>
                                        <input type="phone" name="phone" class="reserv_input" min="1" max="2">
                                    </td>
                                </tr>
                                <tr class="tr2">
                                    <td class="td2-1">인원</td>
                                    <td>
                                        <select name="number">
                                            <option value="number">1</option>
                                            <option value="number">2</option>
                                        </select>
                                        <!-- <input type="number" name="number" class="reserv_input" min="1" max="2"> -->
                                    </td>
                                </tr>
                            </table>
                        </div>



                    </div>
                    <div id="main3-2">
                        <button id="submit_btn">예약신청하기</button>
                    </div>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        

        <script>
            window.onload = function () { buildCalendar(); }    // 웹 페이지가 로드되면 buildCalendar 실행
    
            let nowMonth = new Date();  // 현재 달을 페이지를 로드한 날의 달로 초기화
            let today = new Date();     // 페이지를 로드한 날짜를 저장
            today.setHours(0,0,0,0);    // 비교 편의를 위해 today의 시간을 초기화
    
            // 달력 생성 : 해당 달에 맞춰 테이블을 만들고, 날짜를 채워 넣는다.
            function buildCalendar() {
    
                let firstDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth(), 1);     // 이번달 1일
                let lastDate = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, 0);  // 이번달 마지막날
    
                let tbody_Calendar = document.querySelector(".Calendar > tbody");
                document.getElementById("calYear").innerText = nowMonth.getFullYear();             // 연도 숫자 갱신
                document.getElementById("calMonth").innerText = leftPad(nowMonth.getMonth() + 1);  // 월 숫자 갱신
    
                while (tbody_Calendar.rows.length > 0) {                        // 이전 출력결과가 남아있는 경우 초기화
                    tbody_Calendar.deleteRow(tbody_Calendar.rows.length - 1);
                }
    
                let nowRow = tbody_Calendar.insertRow();        // 첫번째 행 추가           
    
                for (let j = 0; j < firstDate.getDay(); j++) {  // 이번달 1일의 요일만큼
                    let nowColumn = nowRow.insertCell();        // 열 추가
                }
    
                for (let nowDay = firstDate; nowDay <= lastDate; nowDay.setDate(nowDay.getDate() + 1)) {   // day는 날짜를 저장하는 변수, 이번달 마지막날까지 증가시키며 반복  
    
                    let nowColumn = nowRow.insertCell();        // 새 열을 추가하고
                    nowColumn.innerText = leftPad(nowDay.getDate());      // 추가한 열에 날짜 입력
    
                
                    if (nowDay.getDay() == 0) {                 // 일요일인 경우 글자색 빨강으로
                        nowColumn.style.color = "#DC143C";
                    }
                    if (nowDay.getDay() == 6) {                 // 토요일인 경우 글자색 파랑으로 하고
                        nowColumn.style.color = "#0000CD";
                        nowRow = tbody_Calendar.insertRow();    // 새로운 행 추가
                    }
    
    
                    if (nowDay < today) {                       // 지난날인 경우
                        nowColumn.className = "pastDay";
                    }
                    else if (nowDay.getFullYear() == today.getFullYear() && nowDay.getMonth() == today.getMonth() && nowDay.getDate() == today.getDate()) { // 오늘인 경우           
                        nowColumn.className = "today";
                        nowColumn.onclick = function () { choiceDate(this); }
                    }
                    else {                                      // 미래인 경우
                        nowColumn.className = "futureDay";
                        nowColumn.onclick = function () { choiceDate(this); }
                    }
                }
            }
    
            // 날짜 선택
            function choiceDate(nowColumn) {
                if (document.getElementsByClassName("choiceDay")[0]) {                              // 기존에 선택한 날짜가 있으면
                    document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");  // 해당 날짜의 "choiceDay" class 제거
                }
                nowColumn.classList.add("choiceDay");           // 선택된 날짜에 "choiceDay" class 추가
            }
            
            // 이전달 버튼 클릭
            function prevCalendar() {
                nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() - 1, nowMonth.getDate());   // 현재 달을 1 감소
                buildCalendar();    // 달력 다시 생성
            }
            // 다음달 버튼 클릭
            function nextCalendar() {
                nowMonth = new Date(nowMonth.getFullYear(), nowMonth.getMonth() + 1, nowMonth.getDate());   // 현재 달을 1 증가
                buildCalendar();    // 달력 다시 생성
            }
    
            // input값이 한자리 숫자인 경우 앞에 '0' 붙혀주는 함수
            function leftPad(value) {
                if (value < 10) {
                    value = "0" + value;
                    return value;
                }
                return value;
            }



            document.querySelector("#submit_btn").onclick = popupCheck;
            function popupCheck (){
                const left = ( screen.availWidth - 500 )/2;
                const top = ( screen.availHeight - 300 )/2;
                var viewOpt = "left="+left+", top = " + top + ",width=500, height=300";
                window.open("./popup.html","", viewOpt);
            }

        </script>


    </body>
</html>