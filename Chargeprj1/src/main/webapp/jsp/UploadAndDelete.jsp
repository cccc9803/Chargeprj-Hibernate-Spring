<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="BIG5"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel=stylesheet type="text/css" href="../css/menucss.css" />
        <meta charset="utf-8">
        <title>�������O�b��</title>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                <a href="/Chargeprj1/index.jsp">����</a> <a
				href="../insert_form.do">�s�W</a> <a
				href="../query_form.do">�d��</a> <a
				href="/Chargeprj1/Statistic.html">�έp</a>

            </div>
            <div class="row"></div>
            <div class ="col-xs-8">
                <div id="main">
                    <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; �\��</span>
                    <h1>�R��/�ק�</h1>
                    <form method ="post" action="/Chargeprj1/queryId.do">
                        �п�J�n����/�ק諸ID:<br/>
                        <input type="text" name="idCharge"/>
                        <input type="submit" value="�e�X" >
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
