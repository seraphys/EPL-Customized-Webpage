<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %><!Doctype html>
<html>
<title>
  EPL | English Premier Leaue
</title>

<head>
  <link type="text/css" rel="stylesheet" href="../../css/main_style.css">
  <style>
  span#maintitle {
    font-size: 30px;
    font-weight: bold;
    font-family: sans-serif;
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

  section.best_player_fw{
    background-color: white;
    background-image: url('../../image/icon/FW.png');
    border: 2px solid red;
    margin:8px;
    height: 120px;
    width: 100px;
    display: table-cell;
  }
  .best_player_mf{
    border: 2px solid green;
    background-image: url('../../image/icon/MF.png');
    margin:8px;
    height: 120px;
    width: 100px;
    display: table-cell;
  }
  .best_player_df{
    border: 2px solid blue;
    background-image: url('../../image/icon/DF.png');
    margin:8px;
    height: 120px;
    width: 100px;
    display: table-cell;
  }
  .best_player_gk{
    border: 2px solid yellow;
    background-image: url('../../image/icon/GK.png');
    margin: 8px;
    height: 120px;
    width: 100px;
    display: table-cell;
  }
  .best_player_fw_drag{
    background-color: white;
    background-image: url('../../image/icon/FW.png');
    border: 2px solid red;

    height: 120px;
    width: 100px;
    display: table-cell;
  }
  header {
    background-image: url("../../image/mainphoto/01.jpg");
  }
  #field {
    background-image: url('../../image/etc/field.png');
    height: 620px;
    width: 800px;
    background-repeat: no-repeat;
    margin: 20px;
    text-align: center;
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
  <script>
		function allowDrop(e) {
			e.preventDefault();
		}
		function hangleDragStart(e) {
			e.dataTransfer.effectAllowed = 'move';
			e.dataTransfer.setData("Text", e.target.id);
		}
		function handleDrop(e) {
			e.preventDefault();
			var src = e.dataTransfer.getData("Text");
			e.target.appendChild(document.getElementById(src));
      document.getElementById(src).style.margin = "-2px";
		}
	</script>

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
      <a href="Player_mainpage.jsp" id="team_ranking_page" >BEST 11</a> / <a href="Player_mainpage_02.jsp" id="player_ranking_page" style="font-weight:bold; color: #30FE8F">All Players</a>
    </div>

    <div>
        <span style="color: white;">당신만의 이번 주 <span id="fontcolor02" style="font: bold;">BEST 11</span>을 만들어주세요!
        <br />아래의 선수들을 자유롭게 배치할 수 있습니다!
        </span>
    </div>
    <div id="field" >
      <section id="best_fw_01" class="best_player_fw" style="position: relative; top: 0; left: 222px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>
      <section id="best_fw_02" class="best_player_fw" style="position: relative; top: 0; left: 222px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>
      <section id="best_fw_03" class="best_player_fw" style="position: relative; top: 0; left: 222px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>

      <section id="best_mf_01" class="best_player_mf" style="clear:both; position: relative; top: 0; left: 162px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>
      <section id="best_mf_02" class="best_player_mf" style="position: relative; top: 0; left: 162px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>
      <section id="best_mf_03" class="best_player_mf" style="position: relative; top: 0; left: 162px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>
      <section id="best_mf_04" class="best_player_mf" style="position: relative; top: 0; left: 162px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>

      <section id="best_df_01" class="best_player_df" style="clear:both; position: relative; top: 0; left: 222px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>
      <section id="best_df_02" class="best_player_df" style="position: relative; top: 0; left: 222px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>
      <section id="best_df_03" class="best_player_df" style="position: relative; top: 0; left: 222px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>

      <section id="best_gk_01" class="best_player_gk" style="clear:both; position: relative; top: 0; left: 343px;" ondrop="handleDrop(event)" ondragover="allowDrop(event)">
      </section>
    </div>



    <div class="positon_div">
      <section class="best_player_fw" id="p118748" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p118748.png" height="90"><br />
        M.Salah
      </section>

      <section class="best_player_fw" id="p92217" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p92217.png" height="90"><br />
        R.Firmino
      </section>

      <section class="best_player_mf" id="p112338" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p112338.png" height="90"><br />
        Emre Can
      </section>

      <section class="best_player_mf" id="p56979" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p56979.png" height="90"><br />
        J.Henderson
      </section>

      <section class="best_player_gk" id="p104542" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p104542.png" height="90"><br />
        L.Karius
      </section>

      <section class="best_player_fw" id="p78830" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p78830.png" height="90"><br />
        Harry Kane
      </section>

      <section class="best_player_mf" id="p108823" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p108823.png" height="90"><br />
        Dele Alli
      </section>

      <section class="best_player_mf" id="p17878" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p17878.png" height="90"><br />
        C.Fàbregas
      </section>

      <section class="best_player_df" id="p171287" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p171287.png" height="90"><br />
        J.Gomez
      </section>

      <section class="best_player_df" id="p82263" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p82263.png" height="90"><br />
        M.Alonso
      </section>

      <section class="best_player_df" id="p103192" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p103192.png" height="90"><br />
        Kurt Zouma
      </section>

      <section class="best_player_df" id="p12745" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p12745.png" height="90"><br />
        L.Baines
      </section>

      <section class="best_player_df" id="p7645" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p7645.png" height="90"><br />
        P.Jagielka
      </section>

      <section class="best_player_df" id="p59949" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p59949.png" height="90"><br />
        S.Coleman
      </section>

      <section class="best_player_df" id="p173807" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p173807.png" height="90"><br />
        Tom Davies
      </section>

      <section class="best_player_fw" id="p13017" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p13017.png" height="90"><br />
        W.Rooney
      </section>

      <section class="best_player_fw" id="p54694" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p54694.png" height="90"><br />
        Aubameyang
      </section>

      <section class="best_player_gk" id="p11334" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p11334.png" height="90"><br />
        Petr Cech
      </section>

      <section class="best_player_df" id="p17127" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p17127.png" height="90"><br />
        Mertesacker
      </section>

      <section class="best_player_mf" id="p41792" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p41792.png" height="90"><br />
        A.Ramsey
      </section>

      <section class="best_player_mf" id="p37605" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p37605.png" height="90"><br />
        Mesut Özil
      </section>

      <section class="best_player_mf" id="p84450" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p84450.png" height="90"><br />
        G.Xhaka
      </section>

      <section class="best_player_fw" id="p59966" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p59966.png" height="90"><br />
        A.Lacazette
      </section>

      <section class="best_player_gk" id="p60772" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p60772.png" height="90"><br />
        T.Courtois
      </section>

      <section class="best_player_fw" id="p42786" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p42786.png" height="90"><br />
        E.Hazard
      </section>

      <section class="best_player_mf" id="p47431" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p47431.png" height="90"><br />
        Willian
      </section>

      <section class="best_player_mf" id="p88894" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p88894.png" height="90"><br />
        R.Barkley
      </section>

      <section class="best_player_fw" id="p88482" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p88482.png" height="90"><br />
        A.Morata
      </section>

      <section class="best_player_fw" id="p205651" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p205651.png" height="90"><br />
        G.Jesus
      </section>

      <section class="best_player_gk" id="p121160" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p121160.png" height="90"><br />
        Ederson
      </section>

      <section class="best_player_df" id="p57410" draggable="true" ondragstart="hangleDragStart(event)">
        <img src="../../image/player/p57410.png" height="90"><br />
        Otamendi
      </section>

    </div>






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
