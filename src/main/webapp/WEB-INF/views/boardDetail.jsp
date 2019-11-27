<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detail</title>
</head>
<body>
 
 
<h2> 게시글 상세 </h2>
 
<div class="container">
	<button class="btn btn-primary" onclick="location.href='/'">글 리스트</button>
	
    <form action="/insertProc" method="post">
      <div class="form-group">
        <label>제목</label>
        <p>${board.boardTitle}</p>
      </div>
      <div class="form-group">
        <label>작성자</label>
        <p>${board.boardWriter}</p>
      </div>
      <div class="form-group">
        <label>작성날짜</label>
        <p>${board.boardWriteTime}</p>
      </div>
      <div class="form-group">
        <label>내용</label>
        <p>${board.boardContent}</p>
      </div>
      <button type="submit" class="btn btn-primary">작성</button>
    </form>
</div>
 
 
<%@ include file="./partials/bootstrap.jsp" %>
</body>
</html>
