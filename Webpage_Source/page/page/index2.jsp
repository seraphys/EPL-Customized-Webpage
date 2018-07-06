<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<!Doctype html>
<html>
<head>
	<link type="text/css" rel="stylesheet" href="../../main_style.css">
	<link href="../../css/demo.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="jqbar.css" />

	<style>
		.match_section {
			border: 2px solid black;
			width: 200px;
			height: 200px;
			margin: 10px;
			display: table-cell;
			animation: 5s cal_effect;
			animation-iteration-count: 1;
		}


	}
	@keyframes cal_effect {
		0% {background-image: url('../../image/slide_photo_05.jpg')}
		100% {background-image: url('../../image/slide_photo_05.jpg');}
	}


	</style>
</head>

<body>

	<div>
		<span style="font-weight: bold; font-family: sans-serif; font-size: 200%; color: black; ">37R.</span><br />
		Significant Match : <br />
		Important Match : <br />
	</div>

	<section class="match_section">
		<img src="../../image/teamlogo/Liverpool_logo.png" height="100" class="Home_team"><br />
		VS
		<img src="../../image/teamlogo/Stoke_logo.png" height="100" class="Away_team"><br />
		4.28 <br />
		20:30 Anfield
	</section>
	<section class="match_section">
		<img src="../../image/teamlogo/Burnley_logo.png" height="100" class="Home_team"><br />
		VS
		<img src="../../image/teamlogo/브라이튼_logo.png" height="100" class="Away_team"><br />
		4.28 <br />
		23:00 Turf Moor
	</section>
	<section class="match_section">
		<img src="../../image/teamlogo/CP_logo.png" height="100" class="Home_team"><br />
		VS
		<img src="../../image/teamlogo/LEI_logo.png" height="100" class="Away_team"><br />
		4.28 <br />
		Selhurst Park
	</section>
	<section class="match_section">
		<img src="../../image/teamlogo/SH_logo.png" height="100" class="Home_team"><br />
		VS
		<img src="../../image/teamlogo/BM_logo.png" height="100" class="Away_team"><br />
		4.28 <br />
		23:00 St. Mary's Stadium
	</section>
	<section class="match_section">
		<img src="../../image/teamlogo/NEW_logo.png" height="100" class="Home_team"><br />
		VS
		<img src="../../image/teamlogo/WBA_logo.png" height="100" class="Away_team"><br />
		4.28 <br />
		23:00 St. James' Park
	</section>
	<section class="match_section">
		<img src="../../image/teamlogo/HFT_logo.png" height="100" class="Home_team"><br />
		VS
		<img src="../../image/teamlogo/Everton_logo.png" height="100" class="Away_team"><br />
		4.28 <br />
		23:00 London Stadium
	</section>
	<section class="match_section">
		<img src="../../image/teamlogo/Swansea_logo.png" height="100" class="Home_team"><br />
		VS
		<img src="../../image/teamlogo/Chelsea_logo.png" height="100" class="Away_team"><br />
		4.28 <br />
		01:30 Liberty Stadium
	</section>
	<section class="match_section">
		<img src="../../image/teamlogo/WH_logo.png" height="100" class="Home_team"><br />
		VS
		<img src="../../image/teamlogo/MC_logo.png" height="100" class="Away_team"><br />
		4.28 <br />
		22:15 London Stadium
	</section>
	<section class="match_section">
		<img src="../../image/teamlogo/MU_logo.png" height="100" class="Home_team"><br />
		VS
		<img src="../../image/teamlogo/Arsenal_logo.png" height="100" class="Away_team"><br />
		4.30 <br />
		00:30 Old Trafford
		<div>46%
		</div>
		<div>54%
		</div>
	</section>




<div>
	<div id="bar-1"></div>
	<div id="bar-2"></div>
	<div id="bar-3"></div>
	<div id="bar-4"></div>
	<div id="bar-5"></div>
	<div id="bar-6"></div>
</div>


<br/><br/><br/><br/>
<div class="bars">
	<div id="bar-7"></div>
	<div id="bar-8"></div>
	<div id="bar-9"></div>
	<div id="bar-10"></div>
	<div id="bar-11"></div>
	<div id="bar-12"></div>
</div>

<script src="../../js/jquery.min.js" type="text/javascript"></script>
<script src="../../js/jqbar.js" type="text/javascript"></script>
<script type="text/javascript">

	$(document).ready(function () {
		$('#bar-1').jqbar({ label: 'ASP.NET', value: 99, barColor: '#D64747' });
		$('#bar-2').jqbar({ label: 'C#', value: 99, barColor: '#FF681F' });
		$('#bar-3').jqbar({ label: 'Javascript', value: 90, barColor: '#ea805c' });
		$('#bar-4').jqbar({ label: 'HTML5', value: 50, barColor: '#88bbc8' });
		$('#bar-5').jqbar({ label: 'CSS3', value: 60, barColor: '#939393' });
		$('#bar-6').jqbar({ label: 'jQuery', value: 70, barColor: '#3a89c9' });
		$('#bar-7').jqbar({ label: 'Wal', value: 90, barColor: '#D64747', orientation: 'v' });
		$('#bar-8').jqbar({ label: 'Ohi', barColor: '#FF681F', value: 70, orientation: 'v' });
		$('#bar-9').jqbar({ label: 'Song', barColor: '#ea805c', value: 50, orientation: 'v' });
		$('#bar-10').jqbar({ label: 'Pisho', barColor: '#88bbc8', value: 90, orientation: 'v' });
		$('#bar-11').jqbar({ label: 'Mara', barColor: '#939393', value: 70, orientation: 'v' });
		$('#bar-12').jqbar({ label: 'Dagha', barColor: '#3a89c9', value: 50, orientation: 'v' });
	});
</script>


</body>
</html>
