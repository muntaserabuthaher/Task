<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/logIn.css" rel="stylesheet" id="bootstrap-css">
<link href="css/Nav.css" rel="stylesheet" id="bootstrap-css">
</head>
<body>


   <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">

      <a class="navbar-brand" href="#">ARK</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="Home.jsp">Home</a></li>
        <li class="dropdown"><a href="#"  class="dropbtn">
				   Task
		            <div class="dropdown-content">
		    			<a href="ViewTask.jsp">view Task</a>
		    			<a href="AddTask.jsp">Add Task</a>
		  			</div>
				
		    </a>
		</li>
        <li class="dropdown"><a href="#"  class="dropbtn">
				   Users
		            <div class="dropdown-content">
		    			<a href="ViewDeveloper.jsp">view Users</a>
		    			<a href="AddDeveloper.jsp">AddUsers</a>
		  			</div>
				
		    </a>
		</li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li><a href="profile.jsp">profile</a></li>
        <li><a href="logOut.jsp">LogOut</a></li>
      </ul>
    </div>
  </div>
  


</nav>


</body>
</html>