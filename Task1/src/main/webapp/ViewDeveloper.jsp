<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html">
<title>All Developer</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
 
</head>
<body>

<%@page import='muntaserTask.Users' %>
<%@page import='muntaserTask.DataBase'%>
<%@page import='java.sql.*'%>
<%@page import="java.util.*"%>  



<%@include file="Nav.jsp" %>
 

<div class="container">
 
  <p>Users information :</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Gender</th>       
      <th>Location</th>
      <th>Position</th>      
      </tr>
    </thead>   
    <% 	List<Users> list=DataBase.getAllRecords(); %>   
    <%  for(Users u:list){   %> 
     <tbody>
      <tr>
        <td><%= u.getId() %></td>
        <td><%= u.getName()   %></td>
        <td><%= u.getEmail() %></td>
        <td><%= u.getGender() %></td>
        <td><%= u.getLocation() %></td>
        <td><%= u.getPosition() %></td>
        <td><a href=" deleteUser.jsp?id=<%= u.getId() %>">delete</a></td>
        <td><a href=" editUser.jsp?id=<%= u.getId() %>">edit</a></td>   
      </tr>
    </tbody>
         <% }    %> 
  </table>
</div>
   
</body>
</html>