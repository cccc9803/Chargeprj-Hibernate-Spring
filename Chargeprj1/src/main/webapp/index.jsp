<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>

<html>
<head>
<link rel=stylesheet type="text/css" href="css/menucss.css" />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>阿祥的記帳本</title>

<script>
	function openNav() {
		document.getElementById("mySidenav").style.width = "250px";
		document.getElementById("main").style.marginLeft = "250px";
	}

	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
		document.getElementById("main").style.marginLeft = "0";
	}
</script>

</head>
<body>
	<div class="container-fluid">


		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a> 
			<a href="/Chargeprj1/index.html">首頁</a> 
			<a href="insert_form.do">新增</a> 
			<a href="query_form.do">查詢</a> 
			<a href="/Chargeprj1/Statistic.html">統計</a>
		</div>
	</div>
	<div class="row"></div>
	<div class="col-xs-6">
		<div id="main">
			<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;
				功能</span>
		</div>

	</div>



</body>
</html>
</html>