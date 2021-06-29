<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import='muntaserTask.Task' %>
<%@page import='muntaserTask.DataBase'%>
<%@page import='java.sql.*'%>
<%@page import="java.util.*"%> 
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/select.css" rel="stylesheet">
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "jsptutorials";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%     
String position=(String)session.getAttribute("position");    //Getting Session Attribute
System.out.print(position);
%> 
<% if(position.equals("Developer")){ %>

<%@include file ='navDev.jsp' %>

<% }else{ %>

<%@include file ='Nav.jsp' %>

<%} %>



<script>
    function  changeState(){
        document.getElementById("changStatus").submit()
    }
</script>



<h2 align="center"><font><strong>My Task</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>ID</b></td>
<td><b>Type</b></td>
<td><b>Name</b></td>
<td><b>Description</b></td>
<td><b>EstimatedTime</b></td>
<td><b>Manager</b></td>
<td><b>Liability</b></td>
<td><b>Status</b></td>

</tr>

<%
String nameX =(String)session.getAttribute("nameUser");
%>

<%
try{ 
connection = DataBase.getConnection();
statement=connection.createStatement();
String sql ="SELECT * FROM `task` WHERE manager ='"+nameX+"' OR liability='"+nameX+"' ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<%int idX =(int)resultSet.getInt("id"); %>
<form action="ChangeTaskServlet" id="changStatus" method="get">
<tr bgcolor="#DEB887">

<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("type") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("estimatedTime") %></td>
<td><%=resultSet.getString("manager") %></td>
<td><%=resultSet.getString("liability") %></td>

<td>
	        <select onchange="changeState()" name="status">
	        	<option value="In-Progress,<%=resultSet.getInt("id") %>" name="In-Progress" <%if(resultSet.getString("status").equals("In-Progress")){%> selected <%}%>>In-Progress</option>
	        	<option value="Completed,,<%=resultSet.getInt("id") %>" name="Completed" <%if(resultSet.getString("status").equals("Completed")){%> selected <%}%>>Completed</option>
	        	<option value="Done,,<%=resultSet.getInt("id") %>" name="Done" <%if(resultSet.getString("status").equals("Done")){%> selected <%}%>>Done</option>
	        </select>

</td>



</tr>
</form>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>



