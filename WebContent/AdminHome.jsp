<%@page import="Beans.PatientBloodBean"%>
<%@page import="Beans.DonorBloodbean"%>
<%@page import="java.util.*"%>
<html>

<head>
<link rel="stylesheet" href="animate.css">
</head>


<body >

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   <!-- Standard Tag Library for JSP -->

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
<div id = "container" class="animated fadeIn">
<div id = "content">
<%! int index = 0;
Map<Integer,String> map = new HashMap<Integer,String>();
%>
<%map.put(0,"A+");
map.put(1,"A-");
map.put(2,"B+");
map.put(3,"B-");
map.put(4,"AB+");
map.put(5,"AB-");
map.put(6,"O+");
map.put(7,"O-");%>

<br>
<table class="flatTable">
<tr class ="titleTr">
<td class = titleTd colspan="2">Total Blood Units Donated :</td>

</tr>
  <tr class="headingTr">
    <td>Blood Group</td>
    <td>Units</td>		
  </tr>

<%index = 0; %>
<c:forEach var = "number" items="${totaldonorblood}">

<tr>
<td>
<%= map.get(index) %>
</td>
<%index = index + 1; %>
<td>
<c:out value="${number}"> </c:out>
</td>
</tr>
</c:forEach>


</table>
<br>
<br>
<table class="flatTable">
<tr  class="titleTr">
<td class="titleTd" colspan="2">
Total Blood Unit Request :
</td>
</tr>
  <tr class = "headingTr">
    <td>Blood Group</td>
    <td>Units</td>		
  </tr>

<%index = 0; %>
<c:forEach var = "number" items="${totalpatientblood}">

<tr>
<td>
<%= map.get(index) %>
</td>
<%index = index + 1; %>
<td>
<c:out value="${number}"> </c:out>
</td>
</tr>
</c:forEach>
</table>
</div>
</div>
<div id = "footer">
© Copyright 2014 BloodConnect. All rights reserved
</div>
</div>


<style>
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
	padding-left: :30px;
	padding-left: 50px;
	padding-right: 50px;
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

</body>

</html>