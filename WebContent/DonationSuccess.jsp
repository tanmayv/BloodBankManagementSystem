<html>

<head>

</head>


<body >


<div id ="webpage">
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

<button class="button1" onClick="location.href='donate.jsp'">DONATE</button>
<button class="button2" >RAISE A REQUEST</button>

</div>
<div id="container">
<div id = "content">

Congratulations!
<br>
You have successfully donated Blood! :)</div>
<form action="index.jsp">
<input type="submit" value ="Home">
</form>
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
height: 800px;
margin-left: -500px;
left: 50%;
margin-top: -20px;
background: #fff;
border: 1px solid #ccc;
box-shadow : 0 2px 2px rgba(0,0,0,.3);
}

#container{
position: relative;
width: 340px;
height: 200px;
top:30%;
left: 50%;
margin-top: -140px;
margin-left: -170px;
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
.settings{
float:right;

height : 60px;
}

</style>

</body>

</html>