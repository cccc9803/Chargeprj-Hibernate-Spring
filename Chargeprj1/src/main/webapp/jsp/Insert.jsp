<%@ page contentType="text/html; charset=Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>


<title>阿祥的記帳本</title>
<link rel=stylesheet type="text/css" href="css/menucss.css" />
<meta http-equiv="Content-Type" content="text/html" charset="big5">
<!--使用BootStrap-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 使用 jQuery -->
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/themes/hot-sneaks/jquery-ui.css"
	rel="stylesheet">

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>



<script>
	$(document).ready(function() {
		$("#dateChooser").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});
</script>
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
		<div class="row"></div>
		<div class="col-xs-4">
			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a href="/Chargeprj1/index.jsp">首頁</a> 
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
				<form method="POST" action="/Chargeprj1/insert_charge.do">
					<p>
						支出日期<br /> <input type="text" name="Date" id="dateChooser">
					</p>

					<p>
						支出項目<br /> <select name='subject'>
							<option value="UNKNOWN">UNKNOWN</option>
							<c:forEach var="subject" items="${subjects_list}">
								<c:if test="${subject eq param.subject}">
									<c:set var="selected" value="selected" />
								</c:if>
								<option value="${subject}" ${selected}>${subject}</option>
							</c:forEach>
						</select>

					</p>


					<p>
						金額<br /> <input type="text" name="Cost">
					</p>

					<p>
						支出原因<br /> <input type="text" name="Reason" value="">
					</p>

					<p>
						<input type="submit" value="送出">
					</p>
				</form>
			</div>
		</div>
	</div>

</body>

</html>