
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/select.css" rel="stylesheet">
<%@page import='muntaserTask.Users' %>
<%@page import='muntaserTask.DataBase'%>
<%@page import='java.sql.*'%>
<%@page import="java.util.*"%>  
<%
String nameX =(String)session.getAttribute("nameUser");
%>

<% Users t=DataBase.getRecordByName(nameX); %> 




<%     
String position=(String)session.getAttribute("position");    //Getting Session Attribute
System.out.print(position);
%> 
<% if(position.equals("Developer")){ %>

<%@include file ='navDev.jsp' %>

<% }else{ %>

<%@include file ='Nav.jsp' %>

<%} %>




<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="css/profile.css" rel="stylesheet" id="bootstrap-css">

<div class="container">
    <div class="row profile">
    <div class="col-md-4"></div>
		<div class="col-md-4">
			<div class="profile-sidebar">
				<div class="profile-userpic">
					<img src="image/arkLogo.png" class="img-responsive" alt="">
				</div>
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						<% out.print(t.getName()); %>
					</div>
					<div class="profile-usertitle-job">
						<% out.print(t.getPosition()); %>
					</div>
				</div>
				<div class="profile-usermenu">
					<ul class="nav">
						<li class="active">
							<a href="#">
							<i class="glyphicon glyphicon-envelope"></i>
							<% out.print(t.getEmail()); %> </a>
						</li>
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-lock"></i>
							<% out.print(t.getPassword()); %> </a>
						</li>
						<li>
							<a href="#" target="_blank">
							<i class="glyphicon glyphicon-user"></i>
							<% out.print(t.getGender()); %> </a>
						</li>
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-map-marker"></i>
							<% out.print(t.getLocation()); %> </a>
						</li>
					</ul>
				</div>
			</div>
		</div>
    <div class="col-md-4"></div>
	</div>
</div>

<br>
<br>