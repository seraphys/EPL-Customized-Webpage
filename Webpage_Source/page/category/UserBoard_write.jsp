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

<center style="color:white;">
  <form action="../../JSP/insert.jsp" method="post">
  	<fieldset style="width:800px;">
  	<legend>&nbspEnglish Premier League&nbsp</legend>
  	<table border="3" width="95%">
  	<tr>
  		<td><center><b>제목</b></center></td>
  		<td><input type="text" name="subject" required  size="80" /></td>
  	</tr>
  	<tr>
  		<td><center><b>첨부</b></center></td>
  		<td><input type="file" name="num"/>
  		</td>
  	</tr>
    <tr>
  		<td><center><b>작성자</b></center></td>
  		<td><input type="text" name="writer" required  size="20" /></td>
  		</td>
  	</tr>
  	<tr>
  		<td><center><b>공개 설정</b></center></td>
  		<td>
  		<label for="all">전체</label>
  		<input type="radio" name="authority" id="admin" value="toall" checked>
  		<label for="user">회원</label>
  		<input type="radio" name="authority" id="all_user" value="user">
  		<label for="nope">비공개</label>
  		<input type="radio" name="authority" id="private" value="none">
  		</td>
  	</tr>
  	<tr>
  		<td colspan="2"><center><b>내용</b></center></td>
  	</tr>
  	<tr>
  		<td colspan="2">
  		<textarea name="text_field" cols="110" rows="20" placeholder="이 곳에 내용을 작성해주세요."></textarea></d>
  	</tr>
  	<tr>
  		<td colspan="2" style="text-align: center;">
  		<input type="submit" value="게시글 등록">&nbsp&nbsp<input type="reset" value="다시 쓰기">
  	</tr>
  	</table>
  </form>
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
