<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!Doctype html>
  <html>
    <head>
      <link type="text/css" rel="stylesheet" href="main_style.css">
      <style>
        #join {
          text-align: center;
          width: 150px;
          height: 40px;
          color:white;
          background-color: #37033C;
          margin: 10px;
        }
        td {
          padding: 5px;
        }
      </style>
    </head>

    <body>
      <center><img src="../../image/etc/myinfo_photo.png" width="100%" style="max-width: 700px;">
      <br />
      <br />
      <table>
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
          String sql = "select * from MEMBER where id = 1";
          ResultSet rs = stmt.executeQuery(sql);

          if(rs != null) {
            while(rs.next()) {
              int id = Integer.parseInt(rs.getString("id"));
        %>

        <tr>
          <td style="border-right: 1px solid #FD0057; padding: 5px;">닉네임</td>
          <td><%= rs.getString("member_nickname") %></td>
        </tr>
        <tr>
          <td style="border-right: 1px solid #FD0057; padding: 5px;">아이디</td>
          <td><%= rs.getString("member_id") %></td>
        </tr>
        <tr>
          <td style="border-right: 1px solid #FD0057; padding: 5px;">비밀번호</td>
          <td><input type="password"></input>  <button>변경</button></td>
        </tr>
        <tr>
          <td style="border-right: 1px solid #FD0057; padding: 5px;">이름</td>
          <td><%= rs.getString("member_name") %></td>
        </tr>
        <tr>
          <td style="border-right: 1px solid #FD0057; padding: 5px;">이메일</td>
          <td><%= rs.getString("member_email_front") %>@<%= rs.getString("member_email_end") %></td>
        </tr>
        <tr>
          <td style="border-right: 1px solid #FD0057; padding: 5px;">휴대폰번호</td>
          <td><%= rs.getString("member_tel_number") %></td>
        </tr>
        <%
            }
          }
        %>
      </table>

      <button id="join" onclick="button1_click();">수정</button>
      <button id="join" onclick="button2_click();">탈퇴</button></center>

      <script>
      function button1_click() {
        alert("권한이 없습니다.");
      }
      function button2_click() {
      	alert("안돼, 돌아가..");
      }
      </script>

    </body>
  </html>
