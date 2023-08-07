<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판 내용 보기</title>
	</head>
	<body>
	<div>
		<ul>
			<li>
				<label>글번호</label>
				<span>${requestScope.board.freeBoardNo }</span> 
			</li>
			<li>
				<label>작성일</label>
				<span>${board.uploadDate }</span>
			</li>
			<li>
				<label>글쓴이</label>
				<span>${board.freeBoardWriter }</span>
			</li>
			<li>
				<label>제목</label>
				<span>${board.freeBoardSubject }</span>
			</li>
			<li>
				<label>내용</label>
				<p>${ board.freeBoardContent }</p> 
			</li>	
		</ul>
	</div>
	<div>
		<button type="button" name="" value="">목록으로</button>
	</div>
		
	</body>
</html>