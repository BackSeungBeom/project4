<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.dao.BoardDAO, com.crud.bean.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
	<style>
		body {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 100vh;
			margin: 0;
		}
		h1 {
			text-align: center;
		}
		form {
			text-align: center;
			margin-top: 20px; /* Adjust as needed */
		}
		table {
			margin: 0 auto;
			text-align: left;
		}
		.button-container {
			display: flex;
			justify-content: right;
		}
	</style>
</head>
<body>

<%
	BoardDAO boardDAO = new BoardDAO();
	String id=request.getParameter("id");	
	BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<h1>내용 수정</h1>
<form action="editpost.jsp" method="post">
<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
<table>
<tr><td>카테고리:</td><td><input type="text" name="category" value="<%= u.getCategory()%>"/></td></tr>
<tr><td>제목:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
<tr><td>작가:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
<tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="수정"/>
<input type="button" value="취소" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>