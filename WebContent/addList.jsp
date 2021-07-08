<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>
<%@page import="java.util.List"%>

<%
GuestDao guestDao = new GuestDao();
List<GuestVo> guestList = guestDao.getGuestList();

System.out.println(guestList.toString());

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>방명록 리스트</h1>
	
	<form action="" method="get">
		이름 <input type="text" name="name" value="">
		비밀번호 <input type="password" name="password" value="">
		<br>
		<textarea></textarea>
		<br>
		<button type="submit">확인</button>
	</form>
	
	<%
	for (int i=0; i < guestList.size(); i++) {
	%>
		<table border="1">
			<tr>
				<td><%= guestList.get(i).getNo() %></td>
				<td><%= guestList.get(i).getName() %></td>
				<td><%= guestList.get(i).getRegDate() %></td>
				<td><a href="">삭제</a></td>
			</tr>
			<tr>
				<td>텍스트</td>
			</tr>

		</table>
	<%
	}
	%>

</body>
</html>