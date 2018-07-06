jsp<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!Doctype html>
<html>
  <title>
    EPL | English Premier Leaue
  </title>

  <head>
    <link type="text/css" rel="stylesheet" href="css/main_style.css">
      <script src="http://code.jquery.com/jquery-latest.min.js"></script>
      <script>
        $(document).ready(function() {
          var id = localStorage.getItem("id_data");

          var text = $('#account_info').text();
          if ((text == 'Log In') && (id != null)){
            $('#login_id').text(id);
            $('#account_info').html("<a href='page/category/Mypage_mainpage.jsp' class='normal1'>" + id + "</a>");
            $('#signinORlogout').html("<a href='JSP/logout.jsp' class='normal2'>Log out</a>");
          };
        });
      </script>
    <style>

    header {
      background-image: url("image/mainphoto/main.jpg");
    }

    section#photo_slide {
      border: 2px solid #FD0057;
      width:858px;
      max-width: 98%;
      display:table-cell;
      margin:10px;
      height:300px;
      animation: 20s slide_effect;
      animation-iteration-count: infinite;
    }
    @keyframes slide_effect {
      0% {background-image: url('image/slide/slide_photo_05.jpg')}
      20% {background-image: url('image/slide/slide_photo_01.jpg')}
      40% {background-image: url('image/slide/slide_photo_02.jpg');}
      60% {background-image: url('image/slide/slide_photo_03.jpg');}
      80% {background-image: url('image/slide/slide_photo_04.jpeg');}
      100% {background-image: url('image/slide/slide_photo_05.jpg');}
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
      <a href="mainpage.jsp" target="_self"><img src="image/etc/mainlogo.png" id="mainlogo" height="34px" width="32px"></a>
      <span id="maintitle" style="color:white;"><span id="fontcolor04" style="font-size:120%;">&nbspE</span>nglish <span id="fontcolor02" style="font-size:120%;">P</span>remier <span id="fontcolor03" style="font-size:120%;">L</span>eague</span>
      <ul id="upper_bar">
        <li class="upper_tap"><a href="page/add-on/sitemap.jsp" target="_self" class="upper_button"><span id="fontcolor04">Site Map</span></a></li>
        <li id="account_info" class="upper_tap"><a href="" onclick="window.open('page/add-on/login.jsp', '로그인', 'width=auto, heigth=300')" target="_self" class="upper_button"><span id="fontcolor04">Log In</span></a></li>
        <li id="signinORlogout" class="upper_tap"><a href="" class="upper_button" onclick="window.open('page/add-on/join.jsp', '회원가입', 'width=auto, heigth=auto')"><span id="fontcolor04">Sign Up</span></a></li>
      </ul>
    </div>

    <header>
      <div id="main_photo" height="auto" width="100%">
      </div>
    </header>

    <nav>
      <ul id="menu_list">
        <a href="mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Home</li></a>
        <a href="page/category/Match_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Match</li></a>
        <a href="page/category/Ranking_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Ranking</li></a>
        <a href="page/category/Team_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Team</li></a>
        <a href="page/category/Player_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">Player</li></a>
        <a href="page/category/UserBoard_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">User Board</li></a>
        <a href="page/category/Mypage_mainpage.jsp" target="_self" class="menu_link"><li class="menu_tap">My Page</li></a>
      </ul>
    </nav>

    <!-- SECTIONS -->
    <section id="round_info">
      <span style="color: #1DF4FF; font-weight:bold; font-family: sans-serif; font-size: 98pt;">38R.</span><br/>
      <center>
        <div>
          <table width="100%" style="table-layout:fixed; text-align:center;">
            <tr>
              <td height="auto" style="word-break:break-all;">Liverpool</td>
              <td height="auto" style="word-break:break-all;"><b>vs</b></td>
              <td height="auto" style="word-break:break-all; font-size:73%">Manchester City</td>
            </tr>
            <tr>
              <td><img src="image/teamlogo/Liverpool_logo.png" width="25" height="auto"></td>
              <td>22:00</td>
              <td><img src="image/teamlogo/MC_logo.png" width="25" height="auto"></td>
            </tr>
          </table>
          <a href="page/category/Match_mainpage.html" target="_self" id="moreview_link" style="color: #1DF4FF">
            + 더 보기</a>
        </div>
      </secnter>
    </section>

    <section id="ranking_information">
      <center>
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
      			String sql = "select * from RANK where id < 6 order by id asc ";
      			ResultSet rs = stmt.executeQuery(sql);

      			if(rs != null) {
      				while(rs.next()) {
      					int id = Integer.parseInt(rs.getString("id"));
      		%>
      		<tr>
      			<td class="ranking_td"><%= rs.getString("rank") %></td>
            <td class="ranking_td"><img src="image/small_teamlogo/<%= rs.getString("spell") %>.jpg" width="20" height="20"></td>
      			<td class="ranking_td"><%= rs.getString("spell") %></td>
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
      <a href="page/category/Ranking_mainpage.jsp" target="_self" id="moreview_link" style="color: #FD0057">
        + 더 보기</a>
    </center>
    </section>

    <section id="match_highlight_infomation">
      <center>
        <b style="color:white; font-size: 130%;">Weekly Team</b><br />
        <span style="color:white;">Manchester City</span><br /><br />
        <img src="image/teamlogo/MC_logo.png" width="70%">
      </center>
    </section>

    <section id="weekly_player_infomation">
      <center>
        <br />
        <img src="image/player/p104542.png" height="180" width="auto"><br />
        <hr  style="border 1px solid white;" />
        <b>Loris Karius</b><br />
        of Liverpool
      </center>
    </section>

    <section id="weekly_posting">
      <iframe name="main_frame" width="100%" height="100%" scrolling="no" frameborder="0" src="page/page/weekly_posting.jsp">

        </iframe>
    </section>

    <section id="contents">
      <iframe name="main_frame" width="100%" height="100%" scrolling="no" frameborder="0" src="page/page/mainpage_main.jsp">

      </iframe>
    </section>

    <section id="weekly_video">
      <iframe width="270" height="270" src="https://www.youtube.com/embed/Ao2HfsKrhKM" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
    </section>
    <section id="weekly_video">
      <iframe width="270" height="270" src="https://www.youtube.com/embed/spMI_x7JMTE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
    </section>
    <section id="weekly_video">
      <iframe width="270" height="270" src="https://www.youtube.com/embed/SrIaosO9Cas" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
    </section>

    <section id="photo_slide" onclick="">
      <div style="background-color: black; height:auto; color: white; font-size: 105%; padding: 5px;opacity: 0.6;">
        Weekly Photos
      </div>
    </section>

    <section id="fifaonline4">
      <a href="http://fifaonline4.nexon.com/main/index" target="_blank">
        <img src="image/ad/fifa4_logo.jpg" height="100%">
      </a>
    </section>

    <section id="EPL_link">
      <a href="https://www.premierleague.com/" target="_blank">
        <img src="image/etc/epl_logo.jpg" height="100%">
      </a>
    </section>

    <section class="mini_div">
      <a href="http://comic.naver.com/webtoon/detail.nhn?titleId=577830&no=8&weekday=mon">
        <img src="image/ad/comics.jpg" width="100%" height="100%">
      </a>
    </section>

    <section class="mini_div">
      <a href="http://fd.naver.com/">
        <img src="image/ad/fd.jpg" width="100%">
      </a>
    </section>

    <section id="extra">
      <iframe src="page/page/match_data.jsp" width="100%" height="100%"  scrolling="no" border="no" maginwidth="0" marginheight="0" frameborder="0">
      </iframe>
    </section>



    <div id="quickmenu"> <!-- 해당 기능에 아이콘 넣기-->
      <table id="quickmenu_table" border="1px solid #FD0057">
        <tr class="quickmenu_table_cell">
          <td><a href="mainpage.jsp" target="_self" class="quickmenu_tap">
            <img src="image/icon/home.png" height="20"></a></td>
        </tr>
        <tr class="quickmenu_table_cell"> <!-- or SCRAP -->
          <td><a href="page/category/Mypage_mainpage.jsp" target="_self" class="quickmenu_tap">
            <img src="image/icon/mypage.png" height="20"></a></td>
        </tr>
        <tr class="quickmenu_table_cell">
          <td><a href="#upper_section" class="quickmenu_tap">
            <img src="image/icon/top.png" height="20"></a></td> <!-- 맨 위로 올라가도록 수정하기 -->
        </tr>
      </table>
    </div>

    <footer>
      <div>
        <br />
        <center>
          <table>
            <tr class="sitemap" >
              <td style="border-right:1px solid gray; text-align:right;"><a href="mainpage.jsp" class="sitemap_link"><b>Home</b></a>&nbsp&nbsp</td>
              <td id="footer_td">&nbsp&nbsp<a href="mainpage.jsp" class="sitemap_link">Home</a></td>
            </tr>
            <tr class="sitemap" >
              <td  style="border-right:1px solid gray; text-align:right;"><a href="page/category/Ranking_mainpage.jsp" class="sitemap_link"><b>Ranking</b></a>&nbsp&nbsp</td>
              <td id="footer_td">&nbsp&nbsp<a href="page/category/Ranking_mainpage.jsp" class="sitemap_link">Team Ranking</a><br /></td>
              <td id="footer_td">&nbsp&nbsp<a href="page/category/Ranking_mainpage_02.jsp" class="sitemap_link">Player Ranking</a></td>
            </tr>
            <tr class="sitemap" >
              <td  style="border-right:1px solid gray;  text-align:right;"><a href="page/category/Team_mainpage.jsp" class="sitemap_link"><b>Team</b></a>&nbsp&nbsp</td>
              <td id="footer_td">&nbsp&nbsp<a href="page/category/Team_mainpage.jsp" class="sitemap_link">Team</a></td>
            </tr>
            <tr class="sitemap" >
              <td  style="border-right:1px solid gray;  text-align:right;"><a href="page/category/Player_mainpage.jsp" class="sitemap_link"><b>Player</b></a>&nbsp&nbsp</td>
              <td id="footer_td">&nbsp&nbsp<a href="page/category/Player_mainpage.jsp" class="sitemap_link">Best 11</a><br /></td>
              <td id="footer_td">&nbsp&nbsp<a href="page/category/Player_mainpage_02.jsp" class="sitemap_link">All Players</a></td>
            </tr>
            <tr class="sitemap" >
              <td  style="border-right:1px solid gray; text-align:right;"><a href="page/category/UserBoard_mainpage.jsp" class="sitemap_link"><b>User Board</b></a>&nbsp&nbsp</td>
              <td id="footer_td">&nbsp&nbsp<a href="page/category/UserBoard_mainpage.jsp" class="sitemap_link">User Board</a></td>
            </tr>
            <tr class="sitemap" >
              <td  style="border-right:1px solid gray; text-align:right;"><a href="page/category/Mypage_mainpage.jsp" class="sitemap_link"><b>My Page</b></a>&nbsp&nbsp</td>
              <td id="footer_td">&nbsp&nbsp<a href="page/category/Mypage_mainpage.jsp" class="sitemap_link">My Team</a><br /></td>
              <td id="footer_td">&nbsp&nbsp<a href="page/category/Mypage_mainpage.jsp" class="sitemap_link">My Info</a><br /></td>
              <td id="footer_td">&nbsp&nbsp<a href="page/category/Mypage_mainpage.jsp" class="sitemap_link">My Favorite</a><br /></td>
              <td id="footer_td">&nbsp&nbsp<a href="page/category/Mypage_mainpage.jsp" class="sitemap_link">FnQ</a><br /></td>
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
  </body>
</html>
