<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <header>
    <div id="header_layer1"></div>
    <div id="header_layer2">
        <a href="/index.jsp"><img src="/resources/images/mainlogo.png" alt="logo" id="mainlogo"></a>
    </div>
    <div id="header_layer3">
    	<c:if test="${memberEmail eq null }">
      	 <div class="member"><a href="/member/register2.do" class="member2">Join</a></div>
         <div class="member"><a href="/member/login.do" class="member2">LogIn</a></div>
        </c:if>
        <c:if test="${memberEmail ne null }">
         <div class="member"><a href="/member/myInfo.do?memberEmail=${memberEmail}" class="member2">MyPage</a></div>
         <div class="member"><a href="/member/logout.do" class="member2">LogOut</a></div>
        </c:if>
        <div class="member"><a href="#" class="member2">C/S Center</a></div>
    </div>
</header>