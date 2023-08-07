<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 작성 </title>
	</head>
	<body>
		<h1>공지사항 작성</h1>
			<form action="/board/freeInsert.do" method="post">
				<fieldset>
					<legend>게시글 작성</legend>
					<ul>
						<li>
							<label>제목</label>
							<input type="text" rows="30"  id="" name="freeSubject"> 
						</li>
						<li>
							<label>내용</label>
							<textarea rows="40" cols="60" id="" name="freeContent"></textarea>  
						</li>
					</ul>
				<div>
					<input type="submit" value="올리기">
					<input type="reset"  value="지우기">
				</div>
				</fieldset>
			</form>
	</body>
</html>