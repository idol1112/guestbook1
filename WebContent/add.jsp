<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>
<%@page import="java.util.List"%>

<%
	request.setCharacterEncoding("UTF-8"); //post일때 한글깨지는 문제 해결
	
	GuestDao guestDao = new GuestDao();
	
	//파라미터에서 꺼내기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	System.out.println(name + ", " + password + ", " + content);
	
	
	//vo로 묶기
	GuestVo guestVo = new GuestVo(name, password, content);
	
	//저장하기
	guestDao.guestInsert(guestVo);
	
	response.sendRedirect("./addList.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>