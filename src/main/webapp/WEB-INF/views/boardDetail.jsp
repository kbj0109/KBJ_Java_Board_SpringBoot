<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board Detail</title>
</head>
<body>
 
<jsp:include page="./partials/header.jsp"/>
 
<div class="container">
	<h2> 게시글 상세 </h2>

	<a class="btn btn-primary" href="/">글 리스트</a>
	<c:if test="${loginUser != null}">
		<form style="display:inline-block" action="/boards/${board.boardId}/delete" method="POST" id=deleteForm>
			<input type="button" class="btn btn-primary" onclick="requestDeleteBoard()" value="삭제" />
		</form>
	</c:if>
	
	<br />
	<br />
	<br />
		
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
      
      <div class="form-group">
        <label>첨부 파일</label>
        
        <c:choose>
        	<c:when test="${fn:length(fileList) ==0}">
	      		<li> 첨부 파일 X </li>
        	</c:when>
        	<c:when test="${fn:length(fileList) !=0}"> 
			     <ul>
			      	<c:forEach var="file" items="${fileList}">
			      		<li><a href="/files/${file.fileId}/download" target="_blank"> ${file.originalFileName}</a> </li>
			      	</c:forEach>
			     </ul>        	
        	</c:when>
        </c:choose>
      </div>
</div>

<script type="text/javascript">
function requestDeleteBoard() {
	if(confirm('정말 삭제하시겠습니까?')){
		document.getElementById('deleteForm').submit();
	}
}
</script>

</body>
</html>

