<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
        $('#account_info').html("<a href='../category/Mypage_mainpage.jsp' class='normal1'>" + id + "</a>");
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
    background-image: url("../../image/mainphoto/03.jpg");
  }
  .normal1 {
    color:#30FE8F;
    text-decoration: none;
  }
  .normal2 {
    color:#1DF4FF;
    text-decoration: none;
  }
  .sitemap {

  }
  </style>
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
      <a href="../../page/category/UserBoard_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap" onclick="alert('게시물이 없습니다. 글쓰기 페이지로 이동합니다.')">User Board</li></a>
      <a href="../../page/category/Mypage_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">My Page</li></a>
    </ul>
  </nav>

  <div id="quickmenu"> <!-- 해당 기능에 아이콘 넣기-->
    <table id="quickmenu_table" border="1px solid #FD0057">
      <tr class="quickmenu_table_cell">
        <td><a href="../../mainpage.jsp" target="_self" class="quickmenu_tap">
          <img src="../../image/icon/home.png" height="20"></a></td>
      </tr>
      <tr class="quickmenu_table_cell"> <!-- or SCRAP -->
        <td><a href="../../page/category/Mypage_mainpage.jsp" target="_self" class="quickmenu_tap">
          <img src="../../image/icon/mypage.png" height="20"></a></td>
      </tr>
      <tr class="quickmenu_table_cell">
        <td><a href="#upper_section" class="quickmenu_tap">
          <img src="../../image/icon/top.png" height="20"></a></td> <!-- 맨 위로 올라가도록 수정하기 -->
      </tr>
    </table>
  </div>

  <center>
  <div id="">
    <img src="../../image/etc/liverpool-purple-kit.jpg" height="300px">
      <br />
      <table>
    <tr class="sitemap" >
      <td style="border-right:1px solid gray; text-align:right;"><a href="../../mainpage.jsp" class="sitemap_link"><b>Home</b></a>&nbsp&nbsp</td>
      <td>&nbsp&nbsp<a href="../../mainpage.jsp" class="sitemap_link">Home</a></td>
    </tr>
    <tr class="sitemap" >
      <td  style="border-right:1px solid gray; text-align:right;"><a href="../../page/category/Ranking_mainpage.jsp" class="sitemap_link"><b>Ranking</b></a>&nbsp&nbsp</td>
      <td>&nbsp&nbsp<a href="../../page/category/Ranking_mainpage.jsp" class="sitemap_link">Team Ranking</a><br /></td>
      <td>&nbsp&nbsp<a href="../../page/category/Ranking_mainpage_02.jsp" class="sitemap_link">Player Ranking</a></td>
    </tr>
    <tr class="sitemap" >
      <td  style="border-right:1px solid gray;  text-align:right;"><a href="../../page/category/Team_mainpage.jsp" class="sitemap_link"><b>Team</b></a>&nbsp&nbsp</td>
      <td>&nbsp&nbsp<a href="../../page/category/Team_mainpage.jsp" class="sitemap_link">Team</a></td>
    </tr>
    <tr class="sitemap" >
      <td  style="border-right:1px solid gray;  text-align:right;"><a href="../../page/category/Player_mainpage.jsp" class="sitemap_link"><b>Player</b></a>&nbsp&nbsp</td>
      <td>&nbsp&nbsp<a href="../../page/category/Player_mainpage.jsp" class="sitemap_link">Best 11</a><br /></td>
      <td>&nbsp&nbsp<a href="../../page/category/Player_mainpage_02.jsp" class="sitemap_link">All Players</a></td>
    </tr>
    <tr class="sitemap" >
      <td  style="border-right:1px solid gray; text-align:right;"><a href="../../page/category/UserBoard_mainpage.jsp" class="sitemap_link"><b>User Board</b></a>&nbsp&nbsp</td>
      <td>&nbsp&nbsp<a href="../../page/category/UserBoard_mainpage.jsp" class="sitemap_link">User Board</a></td>
    </tr>
    <tr class="sitemap" >
      <td  style="border-right:1px solid gray; text-align:right;"><a href="../../page/category/Mypage_mainpage.jsp" class="sitemap_link"><b>My Page</b></a>&nbsp&nbsp</td>
      <td>&nbsp&nbsp<a href="../../page/category/Mypage_mainpage.jsp" class="sitemap_link">My Team</a><br /></td>
      <td>&nbsp&nbsp<a href="../../page/category/Mypage_mainpage.jsp" class="sitemap_link">My Info</a><br /></td>
      <td>&nbsp&nbsp<a href="../../page/category/Mypage_mainpage.jsp" class="sitemap_link">My Favorite</a><br /></td>
      <td>&nbsp&nbsp<a href="../../page/category/Mypage_mainpage.jsp" class="sitemap_link">FnQ</a><br /></td>
    </tr>
  </table>
  </div>
  </center>
</body>
</html>
