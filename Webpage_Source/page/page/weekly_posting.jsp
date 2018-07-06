<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!Doctype html>
<html>
<head>
      <link type="text/css" rel="stylesheet" href="main_style.css">
      <style>
        .positing_link {
          color: black;
          text-decoration: none;
          text-align: left;
        }
      </style>
</head>
<body>
  <span style="font-weight: bold; font-size:110%; font-family: sans-serif; margin:3px;">&nbsp&nbsp이주의 화제글</span>
  <div>
    <table id="aside_table" style="border-collapse: collapse;">
      <tr>
        <td><img src="../../image/post/posting_photo01.jpg" height="190"><br/ >
        &nbsp"그 분"의 양아들, 손흥민을 보는 눈빛이?</td>
        <td rowspan="2">
          <ul>
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
              String sql = "select * from BOARD order by click desc ";
              ResultSet rs = stmt.executeQuery(sql);
              int i = 0;

              if(rs != null) {
                while(rs.next() && (i<8)) {
                  int id = Integer.parseInt(rs.getString("id"));
            %>
            <li class="aside_tap"  style="text-align: left;"><a href="../category/UserBoard_read.jsp?id=<%=id%>" target="_parent" class="positing_link"><%= rs.getString("subject") %></a></li>
            <%
                i++;
                }
              }
            %>
      </tr>
      <tr>
        <td></td>
      </tr>
    </table>
  </div>
</body>
