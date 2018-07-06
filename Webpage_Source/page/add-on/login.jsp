<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!Doctype html>
<html>
	<head>
		<h2>회원가입</h2>
    <link type="text/css" rel="stylesheet" href="../../css/main_style.css">
		<style>
			#tables {
				border: 1px solid black;
				border-collapse: collapse;
			}
			#comment {
				color : red;
			}
			fieldset {
				border: 1px solid black;
        width: auto;
				}
			#legend_field {
				font-weight: bold;
			}
			.table_front {
				background-color: #F0F0F0;
				font-weight:bold;
			}

			#join {
				text-align: center;
				width: 150px;
				height: 40px;
				color:white;
				background-color: #37033C;
        margin: 10px;
			}
      td {
        margin: 3px;
      }
		</style>
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.3.min.js" ></script>
		<script>
		$(window).load(function() {
			window.resizeTo(600, 400 );
			});
		</script>
	</head>

	<body>
    <div id="upper_section">
      <a href="../../mainpage.jsp" target="_self"><img src="../../image/etc/mainlogo.png" id="mainlogo" height="34px" width="32px"></a>
      <span id="maintitle" style="color:white;"><span id="fontcolor04" style="font-size:120%;">&nbspE</span>nglish <span id="fontcolor02" style="font-size:120%;">P</span>remier <span id="fontcolor03" style="font-size:120%;">L</span>eague</span>
    </div>

    <center> <!--../../JSP/login_confirm.jsp-->
			<form action="" method="post">
				<fieldset>
					<table id="tables" border="1">
						<tr>
							<td class="table_front">아이디</td>
							<td>&nbsp <input type="text" id="idbox" name="idbox"></td>
						</tr>
							<td class="table_front">비밀번호</td>
							<td>&nbsp <input type="password" id="passwordbox" name="passwordbox"></td>
						</tr>
					</table>
				<center><input id="join" type="submit" value="로그인" onclick='local_save()'></center>
				<script>
					function local_save(){
						var id_value = $('#idbox').val();
						var pw_value = $('#passwordbox').val();
						alert('로그인 하였습니다.');
						localStorage.setItem("id_data", id_value);
						localStorage.setItem("password_data", pw_value);
					  window.close();
					}
				</script>

			</form>
	</body>
</html>
