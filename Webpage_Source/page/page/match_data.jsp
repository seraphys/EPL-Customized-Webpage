<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!Doctype html>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="../../css/main_style.css">

	<style>
	.match_section01 {
		border: 2px solid #FD0057;
		background-color: #FD0057;
		width: 200px;
		height: 200px;
		margin: 10px;
		display: table-cell;
		text-align: center;
		color:white;
	}
	.match_section02 {
		border: 2px solid #30FE8F;
		background-color: #30FE8F;
		width: 200px;
		height: 200px;
		margin: 10px;
		display: table-cell;
		text-align: center;
		color:white;
	}
		.match_section03 {
			border: 2px solid #1DF4FF;
			background-color: #1DF4FF;
			width: 200px;
			height: 200px;
			margin: 10px;
			display: table-cell;
			text-align: center;
			color:white;
		}

		.Home_team {
			height: 70px;
			margin: 30px auto 30px auto;
		}
		.Away_team {
			height: 70px;
			margin: 30px auto 30px auto;
		}

	</style>
</head>

<body>

	<div>
		<span style="font-weight: bold; font-family: sans-serif; font-size: 450%; color: #EEFB36; ">&nbsp38R.</span>
		<span style="color: white; font-family: sans-serif; font-size: 150%;">for English Premier Leaue</span><br />
		<span id="fontcolor02">&nbsp&nbsp&nbsp&nbspSignificant Match </span><br />
		<span id="fontcolor03">&nbsp&nbsp&nbsp&nbspImportant Match </span><br />
		<span id="fontcolor04">&nbsp&nbsp&nbsp&nbspNormal Match </span><br />
	</div>

	<section class="match_section01">
		<img src="../../image/teamlogo/Liverpool_logo.png" class="Home_team">
		VS
		<img src="../../image/teamlogo/Stoke_logo.gif" class="Away_team"><br />
		04.28 <br />
		20:30 Anfield
	</section>
	<section class="match_section03">
		<img src="../../image/teamlogo/Burnley-FC.png" class="Home_team">
		VS
		<img src="../../image/teamlogo/BHA_logo.png" class="Away_team"><br />
		04.28 <br />
		23:00 Turf Moor
	</section>
	<section class="match_section03">
		<img src="../../image/teamlogo/CP_logo.png" class="Home_team">
		VS
		<img src="../../image/teamlogo/LEI_logo.png" class="Away_team"><br />
		04.28 <br />
		23:00 Selhurst Park
	</section>
	<section class="match_section03">
		<img src="../../image/teamlogo/SH_logo.png" class="Home_team">
		VS
		<img src="../../image/teamlogo/BM_logo.png" class="Away_team"><br />
		04.28 <br />
		23:00 St. Mary's Stadium
	</section>
	<section class="match_section03">
		<img src="../../image/teamlogo/NEW_logo.jpg" class="Home_team">
		VS
		<img src="../../image/teamlogo/WBA_logo.png" class="Away_team"><br />
		04.28 <br />
		23:00 St. James' Park
	</section>
	<section class="match_section03">
		<img src="../../image/teamlogo/HT_logo.png" class="Home_team">
		VS
		<img src="../../image/teamlogo/Everton_logo.jpg" class="Away_team"><br />
		04.28 <br />
		23:00 London Stadium
	</section>
	<section class="match_section02">
		<img src="../../image/teamlogo/Swansea_logo.jpg" class="Home_team">
		VS
		<img src="../../image/teamlogo/Chelsea_logo.jpg" class="Away_team"><br />
		04.28 <br />
		01:30 Liberty Stadium
	</section>
	<section class="match_section02">
		<img src="../../image/teamlogo/WH_logo.jpg" class="Home_team">
		VS
		<img src="../../image/teamlogo/MC_logo.png" class="Away_team"><br />
		04.28 <br />
		22:15 London Stadium
	</section>
	<section class="match_section01">
		<img src="../../image/teamlogo/MU_logo.png" class="Home_team">
		VS
		<img src="../../image/teamlogo/Arsenal_logo.png" class="Away_team"><br />
		04.30 <br />
		00:30 Old Trafford
	</section>

</body>
</html>
