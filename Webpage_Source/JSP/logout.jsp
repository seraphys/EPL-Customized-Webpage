<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
	<head>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	  <script>
	    $(document).ready(function() {
	      localStorage.removeItem("id_data");
				localStorage.removeItem("password_data");
				location.href="../mainpage.jsp";
				alert("로그아웃하였습니다.");
	    });
	  </script>
	</head>
<body>

</body>
</html>
