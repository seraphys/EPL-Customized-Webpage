<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!Doctype html>
<html>
	<head>
		<h2>회원가입</h2>
    <link type="text/css" rel="stylesheet" href="../../css/main_style.css">
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.3.min.js" ></script>
		<script>
		$(window).load(function() {
			window.resizeTo(700, 800 );
			});
		</script>
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
	</head>

	<body>
    <div id="upper_section">
      <a href="../../mainpage.jsp" target="_self"><img src="../../image/etc/mainlogo.png" id="mainlogo" height="34px" width="32px"></a>
      <span id="maintitle" style="color:white;"><span id="fontcolor04" style="font-size:120%;">&nbspE</span>nglish <span id="fontcolor02" style="font-size:120%;">P</span>remier <span id="fontcolor03" style="font-size:120%;">L</span>eague</span>
    </div>

    <center>
			<form action="../../JSP/join_insert.jsp" method="post">
				<fieldset>
					<legend><b>회원정보입력(필수)</b></legend>

					<table id="tables" border="1">
						<tr>
							<td class="table_front">이름</td>
							<td>&nbsp <input type="text" name="namebox"></td>
						</tr>
						<tr>
							<td class="table_front">아이디</td>
							<td>&nbsp <input type="text" name="idbox"></td>
						</tr>
						<tr>
							<td class="table_front">닉네임</td>
							<td>&nbsp <input type="text" name="nicknamebox"><br />
							<span id="comment">※ 닉네임은 자유롭게 변경이 불가능합니다.</span></td>
						</tr>
						<tr>
							<td class="table_front">비밀번호</td>
							<td>&nbsp <input type="password" name="passwordbox"></td>
						</tr>
						<tr>
							<td class="table_front">비밀번호확인</td>
							<td>&nbsp <input type="password" name="repasswordbox"></td>
						</tr>
						<tr>
							<td class="table_front">이메일</td>
							<td>&nbsp <input type="text" name="email_front">@<input type="text" name="email_rear">
								<select name="email_tail">
									<option value="self">
									<option value="naver.com" selected="selected">naver.com</option>
									<option value="daum.net">daum.net</option>
									<option value="gmail.com">gmail.com</option>
								</select><br />
							<span id="comment">※ 아이디/비밀번호 찾기 시, 인증 이메일이 발송되므로 정확하게 입력해주세요.</span></td>
						</tr>
						<tr>
							<td class="table_front">휴대폰번호</td>
							<td>&nbsp <input type="radio" name="tel" id="SKT"><label for="SKT">SKT</label> <input type="radio" name="tel" id="KT"><label for="KT">KT</label> <input type="radio" name="tel" id="LG"><label for="LG">LG</label> <input type="radio" name="tel" id="cheap"><label for="cheap">알뜰폰</label> <input type="text" name="tel_first" size="7">-<input type="text" size="7" name="tel_middle">-<input type="text" name="tel_last" size="7"></td>
						</tr>
					</table>
				</fieldset>
				<fieldset>
		      <legend><b>커뮤니티 이용약관 동의(필수)</b></legend>
		      <div>
		        EPL(English Premier League) 커뮤니티를 이용해주셔서 감사합니다. 본 약관은 다양한 커뮤니티 서비스의 이용과 관련하여 서비스 제공의 주체인 EPL(English Premier League) 커뮤니티와 커뮤니티의 회원 또는 비회원과의 관계를 분명히 하는 약관입니다.
		      </div>
		    </fieldset>
		    <br />
		    <fieldset>
		      <legend><b>개인정보 수집 및 이용에 관한 안내(필수)</b></legend>
		      <div>
		        정보통신망법 규정에 따라 EPL(English Premier League) 커뮤니티에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.
		      </div>
		    </fieldset>
				<center><input id="join" type="submit" value="동의 및 가입하기" onclick='selfclose()'></center>
				<script>
					function selfclose(){
						alert('가입에 성공하였습니다.');
					  self.close();
					}
				</script>

			</form>
	</body>
</html>
