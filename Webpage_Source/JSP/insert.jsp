<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<body>
<%
	String subject, writer, text_field, authority;
	subject = request.getParameter("subject");
	writer = request.getParameter("writer");
	text_field = request.getParameter("text_field");
	authority = request.getParameter("authority");

	ResultSet rs = null;
	String sql;
	Connection con = null;

	Statement stmt = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/webprograming";
		con = DriverManager.getConnection(url, "root", "1234");
	}
	catch(Exception e) {
		out.println("데이터베이스 접속에 문제가 있습니다.<hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
	stmt = con.createStatement();

	sql = "insert into BOARD "+
		  "values(id, '" + subject + "', '" + authority + "', '" + text_field + "', '0', '" + writer + "');";
	try {
		stmt.executeUpdate(sql);
		response.sendRedirect("../page/category/UserBoard_mainpage.jsp");
	}
	catch(Exception e) {
		out.println("데이터베이스 삽입 연산이 실패하였습니다.<hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
</body>
</html>
