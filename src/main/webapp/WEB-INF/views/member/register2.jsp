<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
    <html lang="en">
   	<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>회원가입</title>
        <link rel="stylesheet" href="../resources/css/register2.css">
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
                    <h1>회원가입</h1>
                </section>

				<form action="/member/register2.do" method="post">	
                <section id="main_layer2">
                    <div id="e_title">
                        <h4>필수 정보</h4>
                    </div>
                    <div id="e_data">
                        <table id="tbl1">
                        	<tr class="line1">
                                <td class="td1" >휴대폰번호</td>
                                <td class="td2" id="td1x2"><input type="text" name="member-phone" class="ipt" placeholder="휴대폰번호를 입력해주세요."></td>
                                <td class="" id="td1x3" >성별</td>
                                <td class="" id="td1x4">
                                    
                                    <label><input type="radio" name="my-gender" value="여">여자</label>&nbsp&nbsp&nbsp
                                    <label><input type="radio" name="my-gender" value="남">남자</label>
                                </td> 
                            </tr>
                            
                            <tr class="line1">
                                <td class="td1">이름</td>
                                <!-- <td class="td2" style="color:black"><strong>홍 길 동 (남)</strong></td> -->
								<td class="td2" id="td2x2" colspan="2">
									<input type="text" name="member-name" class="ipt" placeholder="성함을 입력해 주세요.">
								</td>
<!-- 								<td class="" id="td2x3" ></td> -->
                                <td class="td3" id="td2x3">
                                	<div id="phn_chked">휴대폰인증완료</div>
                                </td>
                            </tr>
                            <tr class="line1">
                                <td class="td1" >ID</td>
                                <td class="td2" id="td3x2" colspan="2">
                                	<input type="email" name="member-email" class="ipt" placeholder="사용하시는 이메일을 입력해주세요.">
                                </td>
<!--                                 <td class="" id="td3x3"></td> -->
                                <td class="" >
                                	<button type="button" id="eml_btn" >이메일 확인</button><small id="chked_id"><b>사용가능한 이메일입니다.</b></small>
                                </td>
                            </tr>
                            <tr class="line1">
                                <td class="td1" >PW</td>
                                <td class="td2" id="td1_4x2" colspan="2"><input type="password" name="member-pw" class="ipt" placeholder="사용하실 비밀번호를 입력해 주세요."></td>
<!--                                 <td class="" id="td1_4x3" ></td> -->
                                <td class="" id="td4x3"></td> 
                            </tr>
                            <tr class="line1">
                                <td class="td1">PW확인</td>
                                <td class="td2" id="td1_5x2" colspan="2"><input type="password" name="member-pwChk" class="ipt" placeholder="비밀번호를 한번 더 입력해 주세요."></td>
<!--                                 <td class="" id="td1_5x3" ></td> -->
                                <td class="" id="td5x4"></td>
                            </tr>
                        </table>
                    </div>
                </section>
			
                <section id="main_layer3">
                    <div id="cho_title">
                        <h4>추가 정보</h4>
                    </div>
                    <div id="cho_data">
                        <table id="tbl2">
                            <tr class="line">
                                <td class="td4">프로필사진등록</td>
                                <td >
                                    <input type="file" name="profile-pic" class="ipt_chkbx">
                                </td>
                            </tr>
                            <tr class="line">
                                <td class="td4">희망하는 레슨 장소</td>
                                <td >
                                    <label><input type="checkbox" name="visit" class="ipt_chkbx" value="선생님 연습실에서 레슨"> 선생님 연습실에서 레슨</label><br>
                                    <label><input type="checkbox" name="visit" class="ipt_chkbx" value="우리집으로 방문 희망"> 우리집으로 방문 희망</label>
                        
                                </td>
                            </tr>
                            <tr class="line">
                                <td class="td4">희망하는 레슨 방식</td>
                                <td>
                                    <label><input type="checkbox" name="lesson" class="ipt_chkbx" value="1 대 1 레슨"> 1 대 1 레슨</label><br>
                                    <label><input type="checkbox" name="lesson" class="ipt_chkbx" value="친구와 함께 레슨"> 친구와 함께 레슨</label>
                                </td>
                            </tr>
                            <tr class="line">
                                <td class="td4">희망하는 레슨</td>
                                <td>
                                    <label><input type="radio" name="type" class="ipt_chkbx" value="기초부터 차근히 배우고 싶어요"> 기초부터 차근히 배우고 싶어요.</label><br>
                                    <label><input type="radio" name="type" class="ipt_chkbx" value="원하는 곡만 마스터하고 싶어요"> 원하는 곡만 마스터하고 싶어요.</label>
                                </td>
                            </tr>
                            <tr class="line">
                                <td class="td4">선호하는 선생님 성별</td>
                                <td>
                                    <label><input type="radio" name="gender" class="ipt_chkbx" value="여성"> 여성</label>
                                    <label><input type="radio" name="gender" class="ipt_chkbx" value="남성"> 남성</label>
                                    <label><input type="radio" name="gender" class="ipt_chkbx" value="무관"> 무관</label><br>
                                </td>
                            </tr>
                            <tr class="line">
                                <td class="td4">나의 현재 레벨</td>
                                <td>
                                    <label><input type="radio" name="level" class="ipt_chkbx" value="하"> 하</label>
                                    <label><input type="radio" name="level" class="ipt_chkbx" value="중"> 중</label>
                                    <label><input type="radio" name="level" class="ipt_chkbx" value="중상"> 중상</label>
                                    <label><input type="radio" name="level" class="ipt_chkbx" value="상"> 상</label><br>
                                </td>
                            </tr>
                        </table>
                    </div>
                </section>  
                
                <section id="main_layer4">
                    <div id="info_title">
                        하고싶은말
                    </div>
                    <div id="info_data">
                        <textarea rows="10" cols="60" id="textarea" placeholder="자유롭게 쓰세요" name="freeWords" value=""></textarea>

                    </div>
                </section>
                <section id="main_layer5">
                    <button type="submit" id="submit_btn"> 회원가입완료</button>
                </section>
                </form>   
            </main>
            
            
            
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>
        

<!--         <script> -->
<%--       		<c:if test="${sessionScope.memberEmail ne null }"> --%>
<!--  	     		document.querySelector("#eml_btn") -->

<!--  	            .addEventListener("click",function() {  //표준 이벤트 모델 사용 -->
<!-- 	                document.querySelector("#chked_id").style.display="block"; -->
<!--	            })   -->
<!--         </script> -->

    </body>
    </html>

