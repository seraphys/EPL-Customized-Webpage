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
    background-image: url("../../image/mainphoto/04.jpg");
  }

  #team_div {
    width:100%;
    margin: 20px;
  }
  .team_info {
    background-color: white;
    border: 2px solid #30FE8F;
    display: table-cell;
    width: 200px;
    height: 130px;
    margin: 20px;
    padding: 5px;
  }
  .team_info:hover {
    background-color: #F0F0F0;
  }
  .team_link {
    color:black;
    text-decoration: none;
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
      <a href="http://www.afcb.co.uk/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/BM_logo.png" width="auto" height="90" class="team_info_logo"><br />
            AFC Bournemouth
          </center>
        </div>
      </a>
      <a href="http://www.arsenal.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/Arsenal_logo.png" width="auto" height="90" class="team_info_logo"><br />
            Arsenal
          </center>
        </div>
      </a>
      <a href="https://www.brightonandhovealbion.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/BHA_logo.png" width="auto" height="90" class="team_info_logo"><br />
            Brighton & Hove Albion
          </center>
        </div>
      </a>
      <a href="http://www.burnleyfootballclub.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/Burnley-FC.png" width="auto" height="90" class="team_info_logo"><br />
            Burnley
          </center>
        </div>
      </a>
      <a href="https://www.chelseafc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/Chelsea_logo.jpg" width="auto" height="90" class="team_info_logo"><br />
            Chelsea
          </center>
        </div>
      </a>
      <a href="http://www.cpfc.co.uk/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/CP_logo.png" width="auto" height="90" class="team_info_logo"><br />
            Crystal Palace
          </center>
        </div>
      </a>
      <a href="http://www.evertonfc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/Everton_logo.jpg" width="auto" height="90" class="team_info_logo"><br />
            Everton
          </center>
        </div>
      </a>
      <a href="http://www.htafc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/HT_logo.png" width="auto" height="90" class="team_info_logo"><br />
            Huddersfield Town
          </center>
        </div>
      </a>
      <a href="http://www.lcfc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/LEI_logo.png" width="auto" height="90" class="team_info_logo"><br />
            Leicester City
          </center>
        </div>
      </a>
      <a href="http://www.liverpoolfc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/Liverpool_logo.png" width="auto" height="90" class="team_info_logo"><br />
            Liverpool
          </center>
        </div>
      </a>
      <a href="https://www.mancity.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/MC_logo.png" width="auto" height="90" class="team_info_logo"><br />
            Manchester City
          </center>
        </div>
      </a>
      <a href="http://www.manutd.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/MU_logo.png" width="auto" height="90" class="team_info_logo"><br />
            Manchester United
          </center>
        </div>
      </a>
      <a href="https://www.nufc.co.uk/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/NEW_logo.jpg" width="auto" height="90" class="team_info_logo"><br />
            Newcastle United
          </center>
        </div>
      </a>
      <a href="https://southamptonfc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/SH_logo.png" width="auto" height="90" class="team_info_logo"><br />
            Southampton
          </center>
        </div>
      </a>
      <a href="http://www.stokecityfc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/Stoke_logo.gif" width="auto" height="90" class="team_info_logo"><br />
            Stoke City
          </center>
        </div>
      </a>
      <a href="http://www.swanseacity.net/?utm_source=premier-league-website&utm_campaign=website&utm_medium=linkk" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/Swansea_logo.jpg" width="auto" height="90" class="team_info_logo"><br />
            Swansea
          </center>
        </div>
      </a>
      <a href="http://www.tottenhamhotspur.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/Spurs_logo.jpg" width="auto" height="90" class="team_info_logo"><br />
            Spurs
          </center>
        </div>
      </a>
      <a href="https://www.watfordfc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/Watford_logo.png" width="auto" height="90" class="team_info_logo"><br />
            Watford
          </center>
        </div>
      </a>
      <a href="http://www.wba.co.uk/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/WBA_logo.png" width="auto" height="90" class="team_info_logo"><br />
            West Brom
          </center>
        </div>
      </a>
      <a href="http://www.whufc.com/?utm_source=premier-league-website&utm_campaign=website&utm_medium=link" target="_blank" class="team_link">
        <div class="team_info">
          <center>
            <img src="../../image/teamlogo/WH_logo.jpg" width="auto" height="90" class="team_info_logo"><br />
            West Ham
          </center>
        </div>
      </a>



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
