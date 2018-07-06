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
    background-image: url("../../image/mainphoto/05.jpg");
  }

  .Ranking_div{
    background-color: #37033C;
    border: 2px solid #30FE8F;
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
      <a href="../category/Match_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Match</li></a>
      <a href="../category/Ranking_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Ranking</li></a>
      <a href="../category/Team_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Team</li></a>
      <a href="../category/Player_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Player</li></a>
      <a href="../category/UserBoard_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">User Board</li></a>
      <a href="../category/Mypage_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">My Page</li></a>
    </ul>
  </nav>
  <center>
    <div id="selet_ranking">
      <a href="Ranking_mainpage.jsp" id="team_ranking_page">Team Ranking</a> / <a href="Ranking_mainpage_02.jsp" id="player_ranking_page" style="font-weight:bold; color: #30FE8F">Player Ranking</a>
    </div>
  </center>

    <section id="Goal_div">
      <center>
      <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 40pt;">
        Who Scored?</span>
      </center><br />
      <section class="score_card_1st">
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 100pt;">32</span><span id="fontcolor04">Goals</span> by
        <img src="../../image/player/p118748.png" height="100">
        M.Salah
      </section>
      <section class="score_card_2nd">
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 50pt;">30</span><span id="fontcolor04">Goals</span> by
        <img src="../../image/player/p78830.png" height="60">
        Harry Kane
      </section>
      <section class="score_card_2nd">
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 50pt;">21</span><span id="fontcolor04">Goals</span> by
        <img src="../../image/player/p37572.png" height="60">
        Sergio Agüero
      </section>
      <section class="score_card_normal">
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 20pt;">20</span><span id="fontcolor04">Goals</span> by
        <img src="../../image/player/p101668.png" height="30">
        Jamie Vardy
      </section>
      <section class="score_card_normal">
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 20pt;">18</span><span id="fontcolor04">Goals</span> by
        <img src="../../image/player/p103955.png" height="30">
        Raheem Sterling
      </section>
      <section class="score_card_normal">
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 20pt;">16</span><span id="fontcolor04">Goals</span> by
        <img src="../../image/player/p66749.png" height="30">
        Romelu Lukaku
      </section>
      <section class="score_card_normal">
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 20pt;">15</span><span id="fontcolor04">Goals</span> by
        <img src="../../image/player/p92217.png" height="30">
        Roberto Firmino
      </section>
    </section>

    <section id="Goal_div">
      <center>
      <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 40pt;">
        &nbsp&nbspWho Helped?</span>
      </center><br />
      <section class="assist_card_1st">
        K.De Bruyne
        <img src="../../image/player/p61366.png" height="100">
        <span id="fontcolor04">assists</span>
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 100pt;">16</span>
      </section>
      <section class="assist_card_2nd">
        Leroy Sané
        <img src="../../image/player/p182156.png" height="60">
        <span id="fontcolor04">assists</span>
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 50pt;">15</span>
      </section>
      <section class="assist_card_2nd">

        David Silva
        <img src="../../image/player/p20664.png" height="60">
        <span id="fontcolor04">assists</span>
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 50pt;">11</span>
      </section>
      <section class="assist_card_normal">
        Paul Pogba
        <img src="../../image/player/p74208.png" height="30">
        <span id="fontcolor04">assists</span>
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 20pt;">10</span>
      </section>
      <section class="assist_card_normal">
        Dele Alli
        <img src="../../image/player/p108823.png" height="30">
        <span id="fontcolor04">assists</span>
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 20pt;">10</span>
      </section>
      <section class="assist_card_normal">
        H.Mkhitaryan
        <img src="../../image/player/p57249.png" height="30">
        <span id="fontcolor04">assists</span>
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 20pt;">10</span>
      </section>
      <section class="assist_card_normal">
        M.Salah
        <img src="../../image/player/p118748.png" height="30">
        <span id="fontcolor04">assists</span>
        <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 20pt;">10</span>
      </section>
    </section>

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
