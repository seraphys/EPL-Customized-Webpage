<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<body>
<%
	String namebox, idbox, nicknamebox, passwordbox, repasswordbox, email_front, email_rear, email_tail, tel, tel_first, tel_middle, tel_last;
	namebox = request.getParameter("namebox");
	idbox = request.getParameter("idbox");
	nicknamebox = request.getParameter("nicknamebox");
	passwordbox = request.getParameter("passwordbox");
	repasswordbox = request.getParameter("repasswordbox");
	email_front = request.getParameter("email_front");
	email_rear = request.getParameter("email_rear");
	email_tail = request.getParameter("email_tail");
	tel = request.getParameter("tel");
	tel_first = request.getParameter("tel_first");
	tel_middle = request.getParameter("tel_middle");
	tel_last = request.getParameter("tel_last");

	String tel_num = tel_first + tel_middle + tel_last;

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

	sql = "insert into MEMBER " +
		  "values(id, 'normal', '" + idbox + "', '" + nicknamebox + "', '" + passwordbox + "', '"
			 + email_front + "', '" + email_tail + "', '" + tel + "', '" + tel_num + "', '" + namebox + "');";
	try {
		stmt.executeUpdate(sql);
		out.println("<script>window.close();</script>");
	}
	catch(Exception e) {
		out.println("데이터베이스 삽입 연산이 실패하였습니다.<hr>");
		out.println(e.getMessage());
		e.printStackTrace();
	}
%>
</body>
</html>
