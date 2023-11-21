<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    </style>
</head>
<body>

<h1>추천 책 추가</h1>
<form action="addpost.jsp" method="post">
<table>
<tr><td>카테고리:</td><td><input type="text" name="category"/></td></tr>
<tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
<tr><td>작가:</td><td><input type="text" name="writer"/></td></tr>
<tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
<tr><td><button type="button" onclick="window.location.href='posts.jsp'">취소</button></td><td align="right"><input type="submit" value="추가"/></td></tr>
</table>
</form>

</body>
</html>