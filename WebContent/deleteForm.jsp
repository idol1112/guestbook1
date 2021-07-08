<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>

<%
	GuestDao guestDao = new GuestDao();

	//1.파라미터 꺼내기
	int no = Integer.parseInt(request.getParameter("id"));
	String pw = request.getParameter("pw");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="get">
		비밀번호<input type="password" name="password" value="">
			  <input type="hidden" name="no" value=<%=no%>>
			  <input type="hidden" name="pw" value=<%=pw%>>
		<button type="submit">확인</button>
	</form>
	<a href="./addList.jsp">메인으로 돌아가기</a>
</body>
</html>