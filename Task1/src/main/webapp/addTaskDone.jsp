<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 </head>
<body>



<%@page import="muntaserTask.DataBase" %>
<jsp:useBean id="s" class="muntaserTask.Task"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>


<%
int num = DataBase.saveTask(s);
if(num>0){
	response.sendRedirect("taskAdded.jsp");
}else{
	response.sendRedirect("taskAddedFailed.jsp");
}
%>
</body>
</html>