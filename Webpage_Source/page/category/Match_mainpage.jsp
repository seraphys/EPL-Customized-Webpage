<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!Doctype html>
<html>
<title>
  EPL | English Premier Leaue
</title>

<head>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script>
    $(document).ready(function() {
      var countDownDate = new Date("August 11, 2018 00:00:00").getTime();

      var x = setInterval(function d_day(){
        var now_date =  new Date().getTime();
        var distance = countDownDate - now_date;

        var d = Math.floor(distance / (1000 * 60 * 60 * 24));
        var h = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var m = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var s = Math.floor((distance % (1000 * 60)) / 1000);

        draw(d, h, m, s);
      });

      var id = localStorage.getItem("id_data");

      var text = $('#account_info').text();
      if ((text == 'Log In') && (id != null)){
        $('#login_id').text(id);
        $('#account_info').html("<a href='Mypage_mainpage.jsp' class='normal1'>" + id + "</a>");
        $('#signinORlogout').html("<a href='../../JSP/logout.jsp' class='normal2'>Log out</a>");
      };
    });

  </script>
  <link type="text/css" rel="stylesheet" href="../../css/main_style.css">
  <style>
  span#maintitle {
    font-size: 30px;
    font-weight: bold;
    font-family: sans-serif;
  }

  header {
    background-image: url("../../image/mainphoto/02.jpg");
  }

  .timer {
    width: 800px;
    height: 200px;

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

  <header>
    <div id="main_photo" height="auto" width="100%" style="border: 0px solid black;">
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

  <br />
  <center>
    <img src="../../image/etc/LIV-home-kit.jpg" height="300"><br />
    <canvas id="myCanvas2" class="timer"></canvas><br />
    <canvas id="myCanvas3" class="timer"></canvas></center>
  <br /><br />
  <center><span style="color: #EEFB36; position:absolute; top:780px; left:'50% - 100px'; transform:translateX(-50%); font-size: 30pt;">개막까지 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp일 그리고..</span></center>

  <script>


    var x;
    var y;
    draw();

    function draw(day, hour, min, sec) {
      var d = new Date();
      var days = day;
      var hours = hour;
      var minutes = min;
      var seconds = sec;

      var day_f = parseInt(days / 10);
      var day_l = days % 10;

      var hours_f = parseInt(hours/10);
      var hours_l = hours%10;
      var min_f = parseInt(minutes/10);
      var min_l = minutes%10;
      var sec_f = parseInt(seconds/10);
      var sec_l = seconds%10;

      x = 10;
      y = 15;

      var c = document.getElementById('myCanvas3');
      var context = c.getContext('2d');
      context.beginPath();
      context.rect(0, 0, 800, 200);
      context.fillStyle = "#37033C";
      context.fill();

      var count = document.getElementById('myCanvas2');
      var context2 = count.getContext('2d');
      context2.beginPath();
      context2.rect(0, 0, 800, 200);
      context2.fillStyle = "#37033C";
      context2.fill();

      draw_default(x, y, 3);

      printf(day_f, x+100, y, 2);
      printf(day_l, x+145, y, 2);

      printf(hours_f, x, y, 3);
      printf(hours_l, x+45, y, 3);

      printf(min_f, x+100, y, 3);
      printf(min_l, x+145, y, 3);

      printf(sec_f, x+200, y, 3);
      printf(sec_l, x+245, y, 3);
    }

    function printf(num, x, y, can) {
      switch(num){
        case 0:
          draw0(x, y, can);
          break;

        case 1:
          draw1(x, y, can);
          break;

        case 2:
          draw2(x, y, can);
          break;

        case 3:
          draw3(x, y, can);
          break;

        case 4:
          draw4(x, y, can);
          break;

        case 5:
          draw5(x, y, can);
          break;

        case 6:
          draw6(x, y, can);
          break;

        case 7:
          draw7(x, y, can);
          break;

        case 8:
          draw8(x, y, can);
          break;

        case 9:
          draw9(x, y, can);
          break;

        default:
          break;
      }
    }

    function draw0(x, y, can) {
      var plat;
      if (can == 3) {
        plat = "myCanvas3";
      }
      else {
        plat = "myCanvas2";
      }
      var c = document.getElementById(plat);
      var context = c.getContext('2d');


      context.strokeStyle = '#EEFB36';
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(x, y);
      context.lineTo(x+30, y);
      context.moveTo(x, y+120);
      context.lineTo(x+30, y+120);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(x, y);
      context.lineTo(x, y+58);
      context.moveTo(x+30, y);
      context.lineTo(x+30, y+58);
      context.moveTo(x, y+60);
      context.lineTo(x, y+120);
      context.moveTo(x+30, y+60);
      context.lineTo(x+30, y+118);
      context.stroke();
    }


    function draw_default(x, y, can) {
      var plat;
      if (can == 3) {
        plat = "myCanvas3";
      }
      else {
        plat = "myCanvas2";
      }
      var c = document.getElementById(plat);
      var context = c.getContext('2d');

      var k = 10;
      var l = 15;;

      context.strokeStyle = 'gray';
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(k, l);
      context.lineTo(k+30, l);
      context.moveTo(k, l+60);
      context.lineTo(k+30, l+60);
      context.moveTo(k, l+120);
      context.lineTo(k+30, l+120);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(k, l);
      context.lineTo(k, l+58);
      context.moveTo(k+30, l);
      context.lineTo(k+30, l+58);
      context.moveTo(k, l+60);
      context.lineTo(k, l+120);
      context.moveTo(k+30, l+60);
      context.lineTo(k+30, l+118);
      context.stroke();

      k = k+45;
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(k, l);
      context.lineTo(k+30, l);
      context.moveTo(k, l+60);
      context.lineTo(k+30, l+60);
      context.moveTo(k, l+120);
      context.lineTo(k+30, l+120);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(k, l);
      context.lineTo(k, l+58);
      context.moveTo(k+30, l);
      context.lineTo(k+30, l+58);
      context.moveTo(k, l+60);
      context.lineTo(k, l+120);
      context.moveTo(k+30, l+60);
      context.lineTo(k+30, l+118);
      context.stroke();

      k = k + 10;
      // 중간 : 찍기
      context.lineWidth = "4";
      context.moveTo(k+33, l+20);
      context.lineTo(k+33, l+30);
      context.moveTo(k+33, l+80);
      context.lineTo(k+33, l+90);
      context.stroke();

      k = k + 45;
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(k, l);
      context.lineTo(k+30, l);
      context.moveTo(k, l+60);
      context.lineTo(k+30, l+60);
      context.moveTo(k, l+120);
      context.lineTo(k+30, l+120);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(k, l);
      context.lineTo(k, l+58);
      context.moveTo(k+30, l);
      context.lineTo(k+30, l+58);
      context.moveTo(k, l+60);
      context.lineTo(k, l+120);
      context.moveTo(k+30, l+60);
      context.lineTo(k+30, l+118);
      context.stroke();

      k = k + 45;
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(k, l);
      context.lineTo(k+30, l);
      context.moveTo(k, l+60);
      context.lineTo(k+30, l+60);
      context.moveTo(k, l+120);
      context.lineTo(k+30, l+120);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(k, l);
      context.lineTo(k, l+58);
      context.moveTo(k+30, l);
      context.lineTo(k+30, l+58);
      context.moveTo(k, l+60);
      context.lineTo(k, l+120);
      context.moveTo(k+30, l+60);
      context.lineTo(k+30, l+118);
      context.stroke();

      k = k + 10;
      // 중간 : 찍기
      context.lineWidth = "4";
      context.moveTo(k+33, l+20);
      context.lineTo(k+33, l+30);
      context.moveTo(k+33, l+80);
      context.lineTo(k+33, l+90);
      context.stroke();

      k = k + 45;
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(k, l);
      context.lineTo(k+30, l);
      context.moveTo(k, l+60);
      context.lineTo(k+30, l+60);
      context.moveTo(k, l+120);
      context.lineTo(k+30, l+120);
      context.stroke();

      context.strokeStyle = 'gray';
      context.lineWidth = "4";
      context.moveTo(k, l);
      context.lineTo(k, l+58);
      context.moveTo(k+30, l);
      context.lineTo(k+30, l+58);
      context.moveTo(k, l+60);
      context.lineTo(k, l+120);
      context.moveTo(k+30, l+60);
      context.lineTo(k+30, l+118);
      context.stroke();

      k = k + 45;
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(k, l);
      context.lineTo(k+30, l);
      context.moveTo(k, l+60);
      context.lineTo(k+30, l+60);
      context.moveTo(k, l+120);
      context.lineTo(k+30, l+120);
      context.stroke();

      context.strokeStyle = 'gray';
      context.lineWidth = "4";
      context.strokeStyle = 'gray';
      context.moveTo(k, l);
      context.lineTo(k, l+58);
      context.moveTo(k+30, l);
      context.lineTo(k+30, l+58);
      context.moveTo(k, l+60);
      context.lineTo(k, l+120);
      context.moveTo(k+30, l+60);
      context.lineTo(k+30, l+118);
      context.stroke();
    }


    function draw1(x, y, can) {
      var plat;
      if (can == 3) {
        plat = "myCanvas3";
      }
      else {
        plat = "myCanvas2";
      }
      var c = document.getElementById(plat);
      var context = c.getContext('2d');

      context.strokeStyle = '#EEFB36';
      context.lineWidth = "4";
      context.moveTo(x+30, y);
      context.lineTo(x+30, y+58);
      context.moveTo(x+30, y+60);
      context.lineTo(x+30, y+118);
      context.stroke();
    }

    function draw2(x, y, can) {
      var plat;
      if (can == 3) {
        plat = "myCanvas3";
      }
      else {
        plat = "myCanvas2";
      }
      var c = document.getElementById(plat);
      var context = c.getContext('2d');


      context.strokeStyle = '#EEFB36';
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(x, y);
      context.lineTo(x+30, y);
      context.moveTo(x, y+60);
      context.lineTo(x+30, y+60);
      context.moveTo(x, y+120);
      context.lineTo(x+30, y+120);
      context.stroke();

      context.lineWidth = "4";

      context.moveTo(x+30, y);
      context.lineTo(x+30, y+58);
      context.moveTo(x, y+60);
      context.lineTo(x, y+120);
      context.stroke();
    }

    function draw3(x, y, can) {
      var plat;
      if (can == 3) {
        plat = "myCanvas3";
      }
      else {
        plat = "myCanvas2";
      }
      var c = document.getElementById(plat);
      var context = c.getContext('2d');


      context.strokeStyle = '#EEFB36';
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(x, y);
      context.lineTo(x+30, y);
      context.moveTo(x, y+60);
      context.lineTo(x+30, y+60);
      context.moveTo(x, y+120);
      context.lineTo(x+30, y+120);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(x+30, y);
      context.lineTo(x+30, y+58);
      context.moveTo(x+30, y+60);
      context.lineTo(x+30, y+118);
      context.stroke();
    }

    function draw4(x, y, can) {
      var plat;
      if (can == 3) {
        plat = "myCanvas3";
      }
      else {
        plat = "myCanvas2";
      }
      var c = document.getElementById(plat);
      var context = c.getContext('2d');


      context.strokeStyle = '#EEFB36';
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(x, y+60);
      context.lineTo(x+30, y+60);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(x, y);
      context.lineTo(x, y+58);
      context.moveTo(x+30, y);
      context.lineTo(x+30, y+58);
      context.moveTo(x+30, y+60);
      context.lineTo(x+30, y+118);
      context.stroke();
    }

    function draw5(x, y, can) {
      var plat;
      if (can == 3) {
        plat = "myCanvas3";
      }
      else {
        plat = "myCanvas2";
      }
      var c = document.getElementById(plat);
      var context = c.getContext('2d');


      context.strokeStyle = '#EEFB36';
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(x, y);
      context.lineTo(x+30, y);
      context.moveTo(x, y+60);
      context.lineTo(x+30, y+60);
      context.moveTo(x, y+120);
      context.lineTo(x+30, y+120);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(x, y);
      context.lineTo(x, y+58);
      context.moveTo(x+30, y+60);
      context.lineTo(x+30, y+118);
      context.stroke();
    }

    function draw6(x, y) {
      var c = document.getElementById('myCanvas3');
      var context = c.getContext('2d');


      context.strokeStyle = '#EEFB36';
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(x, y);
      context.lineTo(x+30, y);
      context.moveTo(x, y+60);
      context.lineTo(x+30, y+60);
      context.moveTo(x, y+120);
      context.lineTo(x+30, y+120);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(x, y);
      context.lineTo(x, y+58);
      context.moveTo(x, y+60);
      context.lineTo(x, y+120);
      context.moveTo(x+30, y+60);
      context.lineTo(x+30, y+118);
      context.stroke();
    }

    function draw7(x, y, can) {
      var plat;
      if (can == 3) {
        plat = "myCanvas3";
      }
      else {
        plat = "myCanvas2";
      }
      var c = document.getElementById(plat);
      var context = c.getContext('2d');


      context.strokeStyle = '#EEFB36';
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(x, y);
      context.lineTo(x+30, y);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(x, y);
      context.lineTo(x, y+58);
      context.moveTo(x+30, y);
      context.lineTo(x+30, y+58);
      context.moveTo(x+30, y+60);
      context.lineTo(x+30, y+118);
      context.stroke();
    }

    function draw8(x, y, can) {
      var plat;
      if (can == 3) {
        plat = "myCanvas3";
      }
      else {
        plat = "myCanvas2";
      }
      var c = document.getElementById(plat);
      var context = c.getContext('2d');


      context.strokeStyle = '#EEFB36';
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(x, y);
      context.lineTo(x+30, y);
      context.moveTo(x, y+60);
      context.lineTo(x+30, y+60);
      context.moveTo(x, y+120);
      context.lineTo(x+30, y+120);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(x, y);
      context.lineTo(x, y+58);
      context.moveTo(x+30, y);
      context.lineTo(x+30, y+58);
      context.moveTo(x, y+60);
      context.lineTo(x, y+120);
      context.moveTo(x+30, y+60);
      context.lineTo(x+30, y+118);
      context.stroke();
    }

    function draw9(x, y, can) {
      var plat;
      if (can == 3) {
        plat = "myCanvas3";
      }
      else {
        plat = "myCanvas2";
      }
      var c = document.getElementById(plat);
      var context = c.getContext('2d');


      context.strokeStyle = '#EEFB36';
      context.lineWidth = "8";
      context.beginPath();
      context.moveTo(x, y);
      context.lineTo(x+30, y);
      context.moveTo(x, y+60);
      context.lineTo(x+30, y+60);
      context.stroke();

      context.lineWidth = "4";
      context.moveTo(x, y);
      context.lineTo(x, y+58);
      context.moveTo(x+30, y);
      context.lineTo(x+30, y+58);
      context.moveTo(x+30, y+60);
      context.lineTo(x+30, y+118);
      context.stroke();
    }
  </script>

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
