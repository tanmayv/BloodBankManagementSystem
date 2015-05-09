<%@page import="Beans.PatientBloodBean"%>
<%@page import="Beans.DonorBloodbean"%>

<%@page import="java.util.*"%>
<html>

<head>
<link rel="stylesheet" href="animate.css">
</head>


<body >
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
  

<div id ="webpage" class = "animated slideInDown">
<div id = "header">
<a href="index.jsp">
<img class="logo" src="logo.png" height="60px" >
</a>
<a href = "AdminLogin.jsp">
<img class="settings" src="setting.png">
</a>
<hr>
</div>
<div id= "menu">

<button class="button1" onClick="location.href='AllDonorServlet'">DONATE</button>
<button class="button2" onClick="location.href='AllRequestServlet'">RAISE A REQUEST</button>

</div>

<%! int index = 0;
Map<Integer,String> bloodmap = new HashMap<Integer,String>();
Map<Integer,String> citymap = new HashMap<Integer,String>();
%>
<%bloodmap.put(0,"A+");
bloodmap.put(1,"A-");
bloodmap.put(2,"B+");
bloodmap.put(3,"B-");
bloodmap.put(4,"AB+");
bloodmap.put(5,"AB-");
bloodmap.put(6,"O+");
bloodmap.put(7,"O-");

citymap.put(0,"city0");
citymap.put(1,"city1");
citymap.put(2,"city2");
citymap.put(3,"city3");
citymap.put(4,"city4");
citymap.put(5,"city5");
%>

<br>
<br>
<table class="flatTable" id = "donortable">
<tr  class="titleTr">
<td class="titleTd" colspan="9">
List Of All Donors
</td>
</tr>
  <tr class = "headingTr">
    <td class="id">ID</td>
    <td class="name">Name</td>
    <td class="age">Age</td>
    <td class="bgroup">B-Group</td>
    <td class="units">Units</td>
    <td class="phone">Phone</td>
    <td class="hospital">Hospital</td>
    <td class="city">City</td>
    <td class="email">Email</td>		
  </tr>

<c:forEach var="donor" items="${donors}">
<tr>
	<td class="id">${donor.id}</td>
    <td class="name">${donor.name}</td>
    <td class="age">${donor.age}</td>
    <td class="bgroup">${donor.bgroup}</td>
    <td class="units">${donor.units}</td>
    <td class="phone">${donor.phone}</td>
    <td class="hospital">${donor.hospital}</td>
    <td class="city">${donor.city}</td>
    <td class="email">${donor.email}</td>	
</tr>
</c:forEach>
</table>

<div id = "footer">
© Copyright 2014 BloodConnect. All rights reserved
</div>
</div>
<form action="GetDonorServlet" id="donorform" method="get">
<input type="hidden" name="idtosend" id = "idtosend">
</form>

<style>

td{
height:35px;

}
html, body{

width: 100%;
height: 100%;
font-family: "Helvetica Neue", Helvetica, sans-serif;
color: #444
-webkit-font-smoothing : antialiased;

}

.fadeIn{
-webkit-animation-delay : 0.6s;
}
.settings{
float:right;

height : 60px;
}
.flatTable{
border: 1px solid #ccc;
box-shadow : 0 1px 2px rgba(0,0,0,.3);
	width:100%;
	margin-top:-20px;
	min-width : 350px;
	border-collapse: collapse;
	font-weight: bold;
	color: #6E6E6E;
	
}
tr{
	-webkit-transition: all .4s ease;
    -moz-transition: all .4s ease;
    transition: all .4s ease;
	height:25px;
	background: #E6E6E6;
	border-bottom: rgba(0,0,0,.05) 1px solid;
}

td{
padding-left: 10px;
}
tr:hover{
	background: #F0F0F0;
}

.titleTr{
	height: 50px;
	background: #BD0000;
	color:#f6f3f7; 
	border:0px solid;
}
.titleTr:hover{
background: #BD0000;
}
.headingTr{
	height: 35px;
	background: #CC0000;
	color:#f6f3f7; 
	border:0px solid;
}
.headingTr:hover{
	background: #CC0000;
}
#content{
margin: 30px;
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	font-size:13px;
	letter-spacing: 1px;
	word-spacing: 2px;
	line-height: 20px; 
	text-align: justify; 
overflow: auto; 
}
#footer{
-webkit-transition: all .4s ease;
    -moz-transition: all .4s ease;
    transition: all .4s ease;
width : 100%;
background:#222222;
position: absolute;
padding-top:25px;
padding-bottom : 25px;
bottom : 0;
text-align: center;
color: gray;
font-size: 12px;
}

#menu{
margin-right: 30px;
}

.button1{
	-webkit-transition: all .4s ease;
    -moz-transition: all .4s ease;
    transition: all .4s ease;
	margin-left : 30px;
	background-color:#ffffff;
	border-radius:0;
	-webkit-border-radius:0;
	-moz-border-radius:0;
	color:#888;
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	font-size:13px;
	font-weight:700;
	border:0px;
	padding:2px 30px;
	height:28px	
}
.button1:hover{
	background-color: #B82E00;
	color:white;
}

.button2{
	-webkit-transition: all .4s ease;
    -moz-transition: all .4s ease;
    transition: all .4s ease;
	background-color:#ffffff;
	border-radius:0;
	-webkit-border-radius:0;
	-moz-border-radius:0;
	color:#888;
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	font-size:13px;
	font-weight:700;
	border:0px;
	padding:2px 30px;
	height:28px	
}
.button2:hover{
	background-color: #B82E00;
	color:white;
}

#header{
margin-top : 40px;
margin-left: 30px;
margin-right: 30px;
}

body{

background-image: url("bg_img.png");
background-repeat: repeat;
}


#webpage{
position : relative;
width: 1000px;
height: 900px;
margin-left: -500px;
left: 50%;
margin-top: -20px;
background: #fff;
border: 1px solid #ccc;
box-shadow : 0 2px 2px rgba(0,0,0,.3);
}

#container{
position: relative;
width: 500px;
height: 660px;
top:150px;
left: 50%;
margin-top: -140px;
margin-left: -250px;
background: #fff;
border: 1px solid #ccc;
box-shadow : 0 1px 2px rgba(0,0,0,.3);
box-radius:3px;
}

form {
    margin: 0 auto;
    margin-top: 20px;
}
label {
    color: #555;
    display: inline-block;
    margin-left: 18px;
    padding-top: 10px;
    font-size: 14px;
}

input{
font-family: "Helvetica Neue", Helvetica, sans-serif;
font-size: 12px;
outline: blue;
box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #f5f7f8;
    -webkit-transition: all .4s ease;
    -moz-transition: all .4s ease;
    transition: all .4s ease;
}
input[type=text]:hover,
input[type=password]:hover {
    border: 1px solid #b6bfc0;
    box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .7), 0 0 0 5px #f5f7f8;
}
input[type=text]:focus,
input[type=password]:focus {
    border: 1px solid #a8c9e4;
    box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #e6f2f9;
}

input[type=text],
input[type=password] {
    color: #777;
    padding-left: 10px;
    margin: 10px;
    margin-top: 12px;
    margin-left: 18px;
    width: 290px;
    height: 35px;
    border: 1px solid #c7d0d2;
    border-radius: 2px;
    box-shadow: inset 0 1.5px 3px rgba(190,190,190,.4), 0 0 0 5px #f5f7f8;
}
#lower {
    background: #ecf2f5;
    width: 100%;
    height: 69px;
    margin-top: 20px;
}
{
    margin-left: 3px;
}
input[type=submit]{
float: right;
margin-right:  20px;
margin-top: 20px;
width: 80px;
height: 30px;
font-size: 14px;
font-weight: bold;
color: #fff;
background-color: #acd6ef;
background-image: -webkit-gradient(linear, left top, left bottom, from(#acd6ef), to(#6ec2e8));
background-image: linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
border-radius: 30px;
    border: 1px solid #66add6;
    box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0 rgba(255, 255, 255, .5);
   cursor: pointer;
}
input[type=submit]:hover {
    background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff), to(#6ec2e8));
    background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
    background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
}
input[type=submit]:active {
    background-image: -webkit-gradient(linear, left top, left bottom, from(#6ec2e8), to(#b6e2ff));
    background-image: -moz-linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
    background-image: linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
}
input[type=checkbox]{
	margin-left: 20px;
}
p a {
    font-size: 11px;
    color: #aaa;
    float: right;
    margin-top: -13px;
    margin-right: 20px;
    -webkit-transition: all .4s ease;
    -moz-transition: all .4s ease;
    transition: all .4s ease;
}

</style>
<script type="text/javascript">
function example4() {
    var table = document.getElementById("donortable");
    var rows = table.rows; // or table.getElementsByTagName("tr");
    for (var i = 0; i < rows.length; i++) {
        rows[i].onclick = (function() { // closure
            var cnt = i; // save the counter to use in the function
            return function() {
              var data = this.cells[0].innerHTML;
              document.getElementById("idtosend").value = data;
              document.forms["donorform"].submit();
              alert()
            }    
        })(i);
    }
}
window.onload = function() { example4(); }
</script>
</body>

</html>