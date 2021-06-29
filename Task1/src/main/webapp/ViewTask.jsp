<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html">
<title>All Task</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
 
</head>
<body>

<%@page import='muntaserTask.Task' %>
<%@page import='muntaserTask.DataBase'%>
<%@page import='java.sql.*'%>
<%@page import="java.util.*"%>  



<%@include file="Nav.jsp" %>
 

<div class="container">
 
  <p>Task information :</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
      <th>ID</th>
      <th>Type</th>
      <th>Name</th>
      <th>Description</th>       
      <th>EsimatedTime</th>
      <th>Manager</th>   
      <th>Liability</th>
      <th>Status</th>    
      </tr>
    </thead>   
    <% 	List<Task> list=DataBase.getAllTesks(); %>   
    <%  for(Task t:list){   %> 
     <tbody>
      <tr>
        <td><%= t.getId() %></td>
        <td><%= t.getType()   %></td>
        <td><%= t.getName() %></td>
        <td><%= t.getDescription() %></td>
        <td><%= t.getEstimatedTime() %></td>
        <td><%= t.getManager() %></td>
        <td><%= t.getLiability() %></td>
        <td><%= t.getStatus() %></td>
        <td><a href=" deleteTask.jsp?id=<%= t.getId() %>">delete</a></td>
        <td><a href=" editTask.jsp?id=<%= t.getId() %>">edit</a></td>   
      </tr>
    </tbody>
         <% }    %> 
  </table>
</div>
   
</body>
</html>