<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!Doctype html>
<html>
<title>
  EPL | English Premier Leaue
</title>

<head>
  <link type="text/css" rel="stylesheet" href="../../css/main_style.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
      $(document).ready(function() {
        var id = localStorage.getItem("id_data");

        var text = $('#account_info').text();
        if ((text == 'Log In') && (id != null)){
          $('#login_id').text(id);
          $('#account_info').html("<a href='Mypage_mainpage.jsp' class='normal1'>" + id + "</a>");
          $('#signinORlogout').html("<a href='../../JSP/logout.jsp' class='normal2'>Log out</a>");


        };
      });
    </script>
  <style>
  span#maintitle {
    font-size: 30px;
    font-weight: bold;
    font-family: sans-serif;
  }

  header {
    background-image: url("../../image/mainphoto/06.jpg");
  }

  #moving {

  }

  #write {
    text-align: center;
    width: 100px;
    height: 35px;
    color:white;
    background-color: #37033C;
  }
  .normal1 {
    color:#30FE8F;
    text-decoration: none;
  }
  .normal2 {
    color:#1DF4FF;
    text-decoration: none;
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
  <div id="upper_section">
    <a href="../../mainpage.jsp" target="_self"><img src="../../image/etc/mainlogo.png" id="mainlogo" height="34px" width="32px"></a>
    <span id="maintitle" style="color:white;"><span id="fontcolor04" style="font-size:120%;">&nbspE</span>nglish <span id="fontcolor02" style="font-size:120%;">P</span>remier <span id="fontcolor03" style="font-size:120%;">L</span>eague</span>
    <ul id="upper_bar">
      <li class="upper_tap"><a href="../add-on/sitemap.jsp" target="_self" class="upper_button"><span id="fontcolor04">Site Map</span></a></li>
      <li id="account_info" class="upper_tap"><a href="" onclick="window.open('../add-on/login.jsp', '로그인', 'width=auto, heigth=300')" target="_self" class="upper_button"><span id="fontcolor04">Log In</span></a></li>
      <li id="signinORlogout" class="upper_tap"><a href="" class="upper_button" onclick="window.open('../add-on/join.jsp', '회원가입', 'width=auto, heigth=auto')"><span id="fontcolor04">Sign Up</span></a></li>
    </ul>
  </div>

  <script>
  function account() {
    alert("로그인이 필요한 항목입니다.");
  }
  </script>

  <header>
    <div id="main_photo" height="auto" width="100%">
    </div>
  </header>

  <nav>
    <ul id="menu_list">
      <a href="../../mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Home</li></a>
      <a href="../category/Match_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Match</li></a>
      <a href="../category/Ranking_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Ranking</li></a>
      <a href="../category/Team_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Team</li></a>
      <a href="../category/Player_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Player</li></a>
      <a href="../category/UserBoard_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">User Board</li></a>
      <a href="../category/Mypage_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">My Page</li></a>
    </ul>
  </nav>

  <%
    int search_number = Integer.parseInt(request.getParameter("id"));
  %>

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
    String sql = "select * from BOARD where id = " + search_number;
    ResultSet rs = stmt.executeQuery(sql);

    if(rs != null) {
      while(rs.next()) {
          int id = Integer.parseInt(rs.getString("id"));
  %>

<center style="color:white;">
  	<fieldset style="width:800px;">
  	<legend>&nbspEnglish Premier League&nbsp</legend>
  	<table border="3" width="95%">
  	<tr>
  		<td class="ranking_attr" width="30%"><center><b>제목</b></center></td>
  		<td class="ranking_td" width="70%"><%= rs.getString("subject") %></td>
  	</tr>
  	<tr>
  		<td class="ranking_attr"><center><b>no.</b></center></td>
  		<td class="ranking_td"><%= rs.getString("id") %></td>
  	</tr>
    <tr>
  		<td class="ranking_attr"><center><b>작성자</b></center></td>
  		<td class="ranking_td"><%= rs.getString("writer") %></td>
  		</td>
  	</tr>
  	<tr>
  		<td class="ranking_attr"><center><b>조회수</b></center></td>
  		<td class="ranking_td"><%= Integer.parseInt(rs.getString("click")) + 1 %></td>
  	</tr>
  	<tr>
  		<td class="ranking_attr" colspan="2"><center><b>내용</b></center></td>
  	</tr>
  	<tr>
  		<td colspan="2" style="background:white; color:black; padding:10px;"><%= rs.getString("text_field") %></td>
  	</tr>
    <%
        }
      }
      String sql2 = "update BOARD set click=click+1 where id = " + search_number;
      stmt.executeUpdate(sql2);
    %>
  	</table>
    <form action="../../JSP/delete.jsp?id=<%=search_number%>" method="post">
      <input type="hidden" name="posting_id2" value="<%= search_number %>">
      <input type="submit" value="글삭제">
      <button onclick="toBoard()" >글목록</button>
      <script>
        toBoard() {
          location.href("UserBoard_mainpage.jsp");
        }
      </script>
      <br />
      <br />
    </form>
    <table border="3" width="95%">
      <tr>
        <td class="ranking_attr" width="30%"><center>작성자</center>
        </td>
        <td class="ranking_attr" width="70%"><center>댓글</center>
        </td>
      </tr>
      <%

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
        sql = "select * from COMMENT where posting_id = " + search_number;
        rs = stmt.executeQuery(sql);
        if(rs != null) {
          while(rs.next()) {
              int id = Integer.parseInt(rs.getString("id"));
      %>
        <tr>
          <td class="ranking_td"><center><%= rs.getString("writer") %></center>
          </td>
          <td class="ranking_td" ><center><%= rs.getString("comment_text") %></center>
        </td>
        </tr>
      <%
          }
        }
      %>
      <tr>
          <td class="ranking_td" colspan="2">
            <form action="../../JSP/comment_write.jsp?id=<%=search_number%>" method="post">
              <table><tr>
              <td><input type="text" name="comment_writer" style="line-height:2" required></td>
              <td><textarea name="comment_text" cols="60" rows="1" style="line-height:2" placeholder="이 곳에 댓글을 작성해주세요." required></textarea></td>
              <td><input id="write" type="submit" value="댓글쓰기">
              <input type="hidden" name="posting_id" value="<%= search_number %>"></td>
            </form>
          </td>
      </tr>
    </table>
</center>




  <div id="quickmenu"> <!-- 해당 기능에 아이콘 넣기-->
    <table id="quickmenu_table" border="1px solid #FD0057">
      <tr class="quickmenu_table_cell">
        <td><a href="../../mainpage.jsp" target="_self" class="quickmenu_tap">
          <img src="../../image/icon/home.png" height="20"></a></td>
      </tr>
      <tr class="quickmenu_table_cell"> <!-- or SCRAP -->
        <td><a href="../category/Mypage_mainpage.jsp" target="_self" class="quickmenu_tap">
          <img src="../../image/icon/mypage.png" height="20"></a></td>
      </tr>
      <tr class="quickmenu_table_cell">
        <td><a href="#upper_section" class="quickmenu_tap">
          <img src="../../image/icon/top.png" height="20"></a></td> <!-- 맨 위로 올라가도록 수정하기 -->
      </tr>
    </table>
  </div>

  </body>
</html>
