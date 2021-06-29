
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/select.css" rel="stylesheet">

<%@include file ='Nav.jsp' %>
<%@page import='muntaserTask.Users' %>
<%@page import='muntaserTask.DataBase'%>
<%@page import='java.sql.*'%>
<%@page import="java.util.*"%>  


<div class="container">
<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title"> Add Task   </h3>
  </div>
  
  
  <div class="panel-body">

 <form action="addTaskDone.jsp" method="post">
 
  Type:<br>
  <select name="type" class="selectX">
  <option value="Software">Software</option>
  <option value="Hardware">Hardware</option>
  </select><br>
  
  Name:<br>
  <input type="text" name="name"  class="form-control"><br>
  
  Description:<br>
  <input type="text" name="description"  class="form-control"><br> 
  
  EstimatedTime:<br>
  <input type="text" name="estimatedTime"  class="form-control"><br> 
  
   
   <% List<Users> list=DataBase.getAllRecords(); %>  
    
   Manager:<br>
   
    <select name="manager" class="selectX">
    <option value="-">-</option>
    <% for(Users u:list){   %> 
	  <option value="<%= u.getName() %>"><%= u.getName()   %></option>
     <% }   %>      
      </select>    
         

  <br> <br> 
  Liability:<br>
  <select name="liability" class="selectX">
    <option value="-">-</option>
    <% for(Users u:list){   %> 
	  <option value="<%= u.getName() %>"><%= u.getName()   %></option>
     <% }   %>        
  </select>  
 
  <br><br>
  <input type="submit" value="addUser" class="btn btn-primary btn-lg pull-right">
</form> 


  </div>
</div>
</div>

