<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>

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
      <a href="../../page/category/Match_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Match</li></a>
      <a href="../../page/category/Ranking_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Ranking</li></a>
      <a href="../../page/category/Team_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Team</li></a>
      <a href="../../page/category/Player_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Player</li></a>
      <a href="../../page/category/UserBoard_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">User Board</li></a>
      <a href="../../page/category/Mypage_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">My Page</li></a>
    </ul>
  </nav>
  <center>
    <div id="selet_ranking">
      <a href="Ranking_mainpage.jsp" id="team_ranking_page" style="font-weight:bold; color: #30FE8F">Team Ranking</a> / <a href="Ranking_mainpage_02.jsp" id="player_ranking_page">Player Ranking</a>
    </div>

    <div class="Ranking_div">

      <!-- -->
      <table border="1px" id="ranking_table">
    		<tr>
    			<td class="ranking_attr">순위</td>
    			<td class="ranking_attr">팀</td>
    			<td class="ranking_attr">이름</td>
    			<td class="ranking_attr">승점</td>
    			<td class="ranking_attr">승</td>
          <td class="ranking_attr">무</td>
          <td class="ranking_attr">패</td>
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
    			<td class="ranking_td"><%= rs.getString("rank") %></td>
          <td class="ranking_td"><img src="../../image/small_teamlogo/<%= rs.getString("spell") %>.jpg" width="20" height="20"></td>
    			<td class="ranking_td"><%= rs.getString("team_name") %></td>
    			<td class="ranking_td"><%= rs.getString("points") %></td>
          <td class="ranking_td"><%= rs.getString("win") %></td>
          <td class="ranking_td"><%= rs.getString("tie") %></td>
          <td class="ranking_td"><%= rs.getString("lose") %></td>
    		</tr>
    		<%
    				}
    			}
    		%>
    	</table>
    </div>
  </center>






  <div id="quickmenu"> <!-- 해당 기능에 아이콘 넣기-->
    <table id="quickmenu_table" border="1px solid #FD0057">
      <tr class="quickmenu_table_cell">
        <td><a href="../../mainpage.jsp" target="_self" class="quickmenu_tap">
          <img src="../../image/icon/home.png" height="20"></a></td>
      </tr>
      <tr class="quickmenu_table_cell"> <!-- or SCRAP -->
        <td><a href="./Mypage_mainpage.jsp" target="_self" class="quickmenu_tap">
          <img src="../../image/icon/mypage.png" height="20"></a></td>
      </tr>
      <tr class="quickmenu_table_cell">
        <td><a href="#upper_section" class="quickmenu_tap">
          <img src="../../image/icon/top.png" height="20"></a></td> <!-- 맨 위로 올라가도록 수정하기 -->
      </tr>
    </table>
  </div>


  </body>
  <footer>
    <div>
      <br />
      <center>
        <table>
          <tr class="sitemap" >
            <td style="border-right:1px solid gray; text-align:right;"><a href="../../mainpage.jsp" class="sitemap_link"><b>Home</b></a>&nbsp&nbsp</td>
            <td id="footer_td">&nbsp&nbsp<a href="../../mainpage.jsp" class="sitemap_link">Home</a></td>
          </tr>
          <tr class="sitemap" >
            <td  style="border-right:1px solid gray; text-align:right;"><a href="../../page/category/Ranking_mainpage.jsp" class="sitemap_link"><b>Ranking</b></a>&nbsp&nbsp</td>
            <td id="footer_td">&nbsp&nbsp<a href="../../page/category/Ranking_mainpage.jsp" class="sitemap_link">Team Ranking</a><br /></td>
            <td id="footer_td">&nbsp&nbsp<a href="../../page/category/Ranking_mainpage_02.jsp" class="sitemap_link">Player Ranking</a></td>
          </tr>
          <tr class="sitemap" >
            <td  style="border-right:1px solid gray;  text-align:right;"><a href="../../page/category/Team_mainpage.jsp" class="sitemap_link"><b>Team</b></a>&nbsp&nbsp</td>
            <td id="footer_td">&nbsp&nbsp<a href="../../page/category/Team_mainpage.jsp" class="sitemap_link">Team</a></td>
          </tr>
          <tr class="sitemap" >
            <td  style="border-right:1px solid gray;  text-align:right;"><a href="../../page/category/Player_mainpage.jsp" class="sitemap_link"><b>Player</b></a>&nbsp&nbsp</td>
            <td id="footer_td">&nbsp&nbsp<a href="../../page/category/Player_mainpage.jsp" class="sitemap_link">Best 11</a><br /></td>
            <td id="footer_td">&nbsp&nbsp<a href="../../page/category/Player_mainpage_02.jsp" class="sitemap_link">All Players</a></td>
          </tr>
          <tr class="sitemap" >
            <td  style="border-right:1px solid gray; text-align:right;"><a href="../../page/category/UserBoard_mainpage.jsp" class="sitemap_link"><b>User Board</b></a>&nbsp&nbsp</td>
            <td id="footer_td">&nbsp&nbsp<a href="../../page/category/UserBoard_mainpage.jsp" class="sitemap_link">User Board</a></td>
          </tr>
          <tr class="sitemap" >
            <td  style="border-right:1px solid gray; text-align:right;"><a href="../../page/category/Mypage_mainpage.jsp" class="sitemap_link"><b>My Page</b></a>&nbsp&nbsp</td>
            <td id="footer_td">&nbsp&nbsp<a href="../../page/category/Mypage_mainpage.jsp" class="sitemap_link">My Team</a><br /></td>
            <td id="footer_td">&nbsp&nbsp<a href="../../page/category/Mypage_mainpage.jsp" class="sitemap_link">My Info</a><br /></td>
            <td id="footer_td">&nbsp&nbsp<a href="../../page/category/Mypage_mainpage.jsp" class="sitemap_link">My Favorite</a><br /></td>
            <td id="footer_td">&nbsp&nbsp<a href="../../page/category/Mypage_mainpage.jsp" class="sitemap_link">FnQ</a><br /></td>
          </tr>
        </table>
      </center>
    </div>
    <br />
    <div>
      Copyrights (c) 2018 Jake
      All Rights Reserved.<br />
      powered by
      <span id="maintitle" style="color:white; font-size: 100%;">
        <span id="fontcolor04" style="font-size:120%;">&nbspE</span>nglish
        <span id="fontcolor02" style="font-size:120%;">P</span>remier
        <span id="fontcolor03" style="font-size:120%;">L</span>eague</span>
    </div>
    <br />
  </footer>
</html>
