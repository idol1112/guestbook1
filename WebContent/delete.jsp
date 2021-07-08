<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>
<%@ page import="java.util.List"%>
<%
	GuestDao guestDao = new GuestDao();	
	List<GuestVo> guestList = guestDao.getGuestList();


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	
	int a = 1;
	//1.파라미터 꺼내기
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	String pw = request.getParameter("pw");
	
	if(password.equals(pw)) {
		//2.삭제하기 
		int count = guestDao.guestDelete(no);
		//리다이렉트(리스트요청)
		response.sendRedirect("./addList.jsp");
	}else{
	//리다이렉트(리스트요청)
	response.sendRedirect("./addList.jsp");
	}
%>

</body>
</html>