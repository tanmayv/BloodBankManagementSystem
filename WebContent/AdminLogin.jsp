<html>

<head>
<link rel="stylesheet" href="animate.css">
</head>


<body >


<div id ="webpage" class = "animated slideInDown">
<div id = "header">
<a href="index.jsp">
<img class="logo" src="logo.png" height="60px" >
</a>

<hr>
</div>
<button class="button1" onClick="location.href='donate.jsp'">DONATE</button>
<button class="button2" onClick="location.href='Request.jsp'">RAISE A REQUEST</button>


<div id="container" class="animated fadeIn">
    
    
    <div id ="containerheader">
    Admin Login
    </div>
<form id = "donorform" action="AdminHomeServlet" >
<label for="username">Username:</label>
<input type="text" id="password" name="username" required="required">


<label for="password">Password:</label>
<input type="password" id="password" name="password" required="required">
<div id="lower">

<input type="submit" value="Login">
</div><!--/ lower-->
</form>
</div>
<div id = "footer">
© Copyright 2014 BloodConnect. All rights reserved
</div>
</div>




<style>

.fadeIn{

-webkit-animation-delay:0.5s;
}
html, body{

width: 100%;
height: 100%;
font-family: "Helvetica Neue", Helvetica, sans-serif;
color: #444
-webkit-font-smoothing : antialiased;

}

#containerheader{
width:100%;
height:35px;
background: #BD0000;
color : #f6f3f7;
text-align: center;
padding-top:15px;
font-weight: bold;
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
height:580px;
margin-left: -500px;
left: 50%;
margin-top: -20px;
background: #fff;
border: 1px solid #ccc;
box-shadow : 0 2px 2px rgba(0,0,0,.3);
}

#container{
position: relative;
width: 330px;
height: 275px;
top:170px;
left: 50%;
margin-top: -140px;
margin-left: -165px;
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
    display: block;
}

input, select, textarea{
font-family: "Helvetica Neue", Helvetica, sans-serif;
font-size: 15px;
outline: blue;
display:block;
box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #f5f7f8;
    -webkit-transition: all .4s ease;
    -moz-transition: all .4s ease;
    transition: all .4s ease;
}
input[type=text]:hover,
input[type=password]:hover,textarea:hover {
    border: 1px solid #b6bfc0;
    background:white;
    color:black;
    box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .7), 0 0 0 5px #f5f7f8;
}
input[type=text]:focus,
input[type=password]:focus,textarea:hover {
    border: 1px solid #a8c9e4;
    background:white;
    color:black;
    box-shadow: inset 0 1.5px 3px rgba(190, 190, 190, .4), 0 0 0 5px #e6f2f9;
}

select{
color: #777;
    padding-left: 10px;
 	margin-top : 2px;
    margin-left: 18px;
    width: 290px;
    height: 30px;
    color:gray;
    border:1px;
    background : #eeeeee;
   	border:0px;
    border-radius: 2px;
    box-shadow: inset 0 1.5px 3px rgba(190,190,190,.4), 0 0 0 5px #f5f7f8;
}


textarea{
color: #777;
    padding-left: 10px;
 	margin-top : 2px;
    margin-left: 18px;
    width: 290px;
    height:80px;
    color:gray;
    
    background : #eeeeee;
   	border:0px;
    border-radius: 2px;
    box-shadow: inset 0 1.5px 3px rgba(190,190,190,.4), 0 0 0 5px #f5f7f8;
}
input[type=text],
input[type=password]{
    color: #777;
    padding-left: 10px;
 	margin-top : 2px;
    margin-left: 18px;
    width: 290px;
    height: 30px;
    color:gray;
    
    background : #eeeeee;
   	border:0px;
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
.settings{
float:right;

height : 60px;
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