<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Users</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<%@page import='muntaserTask.Users' %>
<%@page import='muntaserTask.DataBase'%>
  
<%  
String id=request.getParameter("id");  
Users u=DataBase.getRecordById(Integer.parseInt(id));  
%> 

<br><br>
<div class="center">

<h1>Edit user that have id <%=u.getId() %></h1>
</div>
<br><br>

<div class="container">
 <form action="userEdit.jsp" method="post">
  
  Name:<br>
  <input type="text" name="name" value="<%=u.getName() %>"  class="form-control"><br>
  
  Email:<br>
  <input type="text" name="email" value="<%=u.getEmail() %>"  class="form-control"><br> 
  
  Password:<br>
  <input type="password" name="password" value="<%=u.getPassword() %>"  class="form-control"><br> 
  
  Gender:<br>
<input type="radio" name="gender" value="male" <%if(u.getGender().equals("male")){%> checked  <%}%>> Male
<input type="radio" name="gender" value="female" <%if(u.getGender().equals("female")){%> checked  <%}%> > Female
 <br> <br>
  
  location:<br>
  <select name="location" class="selectX" >
  <option value="Qalqilya" <%if(u.getLocation().equals("Qalqilya")){%> selected <%}%>>Qalqilya</option>
  <option value="Nablus" <%if(u.getLocation().equals("Nablus")){%> selected <%}%>>Nablus</option>
  <option value="Ramallah" <%if(u.getLocation().equals("Ramallah")){%> selected <%}%>>Ramallah</option>
  <option value="Tulkarm" <%if(u.getLocation().equals("Tulkarm")){%> selected <%}%>>Tulkarm</option>
  <option value="Jenin" <%if(u.getLocation().equals("Jenin")){%> selected <%}%>>Jenin</option>
  <option value="Hebron" <%if(u.getLocation().equals("Hebron")){%> selected <%}%>>Hebron</option>
  </select>
  
  <br> <br>
  
    Position:<br>
  <select name="position" class="selectX" dir="<%=u.getPosition() %>">
  <option value="Developer" <%if(u.getPosition().equals("Developer")){%> selected <%}%>>Developer</option>
  <option value="Manager"   <%if(u.getPosition().equals("Manager")){%> selected <%}%>>Manager</option>
  </select>
 
  <input type="submit" value="Edit" class="btn btn-primary btn-lg pull-right">
</form> 
     </div>
</body>
</html>