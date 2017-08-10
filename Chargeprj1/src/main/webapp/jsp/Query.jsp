<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<title>�������O�b��-�d��</title>
<link rel=stylesheet type="text/css" href="css/menucss.css" />
<meta charset="Big5">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
<!--JQuery-->
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/themes/hot-sneaks/jquery-ui.css"
	rel="stylesheet">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
<script>
	$(document).ready(function() {
		$("#dateChooserFrom").datepicker({
			dateFormat : 'yy-mm-dd'
		});
		$("#dateChooserEnd").datepicker({
			dateFormat : 'yy-mm-dd'
		});
	});

	function myFunctionA() {
		//document.getElementById("date").style.display="block";		
		//document.getElementById("subject").style.display="none";		
		//document.getElementById("amt").style.display="none";
		$('#date').show();
		$('#subject').hide();
		$('#amt').hide();
	}

	function myFunctionB() {
		$('#date').hide();
		$('#subject').show();
		$('#amt').hide();
	}

	function myFunctionC() {
		$('#date').hide();
		$('#subject').hide();
		$('#amt').show();
	}
	function initialize() {
		$('#date').hide();
		$('#subject').hide();
		$('#amt').hide();
	}
</script>
</head>


<body onload=" initialize();">
	<div class="container-fluid">
		<div class="col-xs-6">
			<div id="mySidenav" class="sidenav">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
				<a href="/Chargeprj1/index.jsp">����</a> 
				<a href="insert_form.do">�s�W</a>
				<a href="query_form.do">�d��</a> 
				<a href="/Chargeprj1/Statistic.html">�έp</a>
			</div>
		</div>

		<div id="main">
			<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;
				�\��</span>
			<form>
				<p>
					�п�ܬd�ߤ覡<br /> <input type="radio" name="itemSelect"
						value="showDate" onclick="myFunctionA();" />���<br /> <input
						type="radio" name="itemSelect" value="showSubject"
						onclick="myFunctionB();" />��X����<br /> <input type="radio"
						name="itemSelect" value="showAmount" onclick="myFunctionC();" />�ڶ�<br />
				</p>
			</form>

			<!--���-->
			<form method="POST" action="/Chargeprj1/queryDate.do" id="date">
				<p>
					���<br /> <input type="text" name="DateStart" id="dateChooserFrom" />
					<input type="text" name="DateEnd" id="dateChooserEnd" /> <input
						type="submit" value="�e�X" />
				</p>
			</form>

			<!--��X����-->
			<form method="POST" action="/Chargeprj1/querySubject.do" id="subject">
				<p>
					��X����<br /> <select name='subject'>
						<option value="UNKNOWN">UNKNOWN</option>
						<c:forEach var="subject" items="${subjects_list}">
							<c:if test="${subject eq param.subject}">
								<c:set var="selected" value="selected" />
							</c:if>
							<option value="${subject}" ${selected}>${subject}</option>
						</c:forEach>
					</select> <input type="submit" value="�e�X">
				</p>
			</form>

			<!--�ڶ�-->
			<form method="post" action="/Chargeprj1/queryReason.do" id="amt">
				<p>
					��X��]<br /> <input type="text" name="Reason" value=""> <input
						type="submit" value="�e�X" />
				</p>
			</form>
		</div>
	</div>

</body>
</html>