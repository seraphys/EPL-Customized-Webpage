<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>

<html>
<title>
  EPL | English Premier Leaue
</title>

<head>
  <link type="text/css" rel="stylesheet" href="../css/main_style.css">
  <style>
  span#maintitle {
    font-size: 30px;
    font-weight: bold;
    font-family: sans-serif;
  }

  header {
    background-image: url("../../image/mainphoto/05.jpg");
  }

  .Ranking_div{
    background-color: #37033C;
    border: 2px solid none;
    display: table-cell;
    width: 20%;
    height: auto;
    margin: 10px;
  }
  #ranking_table {
    width: 100%;
    color:white;
    text-align: center;
    border-collapse: collapse;
    border: 1px solid #FD0057;
    padding:5px;
    width:98%;
  }
  #selet_ranking{
    color:white;
    margin: 20px;
  }
  #team_ranking_page{
    text-decoration: none;
    color: white;
  }
  #team_ranking_page:hover{
    font-weight: bold;
  }
  #player_ranking_page{
    text-decoration: none;
    color: white;
  }
  #player_ranking_page:hover{
    font-weight: bold;
  }

  </style>

  <!--  Main theme colors
            green : #30FE8F
            darkblue : #37033C
            red : #FD0057
            lightblue : #1DF4FF
            yellow : #EEFB36    -->
</head>

<body style="background-color: #37033C">
    <div class="Ranking_div">
      <table border="1px" id="ranking_table">
    		<tr>
    			<td>순위</td>
    			<td>팀</td>
    			<td>이름</td>
    			<td>승점</td>
    			<td>승</td>
          <td>무</td>
          <td>패</td>
    		</tr>
    		<%
    			Connection con = null;
    			Statement stmt = null;
          try {
    				Class.forName("org.gjt.mm.mysql.Driver");
            String url = "jdbc:mysql://localhost:3306/webprograming";
            con = DriverManager.getConnection(url, "root", "1234");
          } catch(Exception e) {
            out.println("데이터베이스 접속에 문제가 있습니다.<hr>");
            out.println(e.getMessage());
            e.printStackTrace();
          }
          stmt = con.createStatement();
    			String sql = "select * from RANK order by id asc ";
    			ResultSet rs = stmt.executeQuery(sql);

    			if(rs != null) {
    				while(rs.next()) {
    					int id = Integer.parseInt(rs.getString("id"));
    		%>
    		<tr>
    			<td><%= rs.getString("rank") %></td>
          <td><%= rs.getString("spell") %></td>
    			<td><%= rs.getString("team_name") %></td>
    			<td><%= rs.getString("points") %></td>
          <td><%= rs.getString("win") %></td>
          <td><%= rs.getString("tie") %></td>
          <td><%= rs.getString("lose") %></td>
    		</tr>
    		<%
    				}
    			}
    		%>
    	</table>

  </body>
</html>
