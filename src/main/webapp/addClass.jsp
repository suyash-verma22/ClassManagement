<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,com.management.dao.*" %>
<%ResultSet[] rs = new ResultSet[8];%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Class</title>
</head>
<body>
<%
    Connection connection = DBConnection.createConnection();
    Statement statement = connection.createStatement() ;
    //resultset =statement.executeQuery("select * from subject");
    for(int i=0;i<8;i++)
    	rs[i] = statement.executeQuery("select * from subject");
%>

<h1 align = 'center'>** ADD CLASS **</h1>
<form action="/AddClassServlet" method="post" align="center">
Subject 1 : 
<% //rs[0] = statement.executeQuery("select * from subject");%>
<select name="sub1" id="sub1">
  <option value="0">FREE</option>
  
  <%  while(rs[0].next()){ %>
         <option value="<%= rs[0].getInt(1)%>"><%= rs[0].getString(2)%></option>
  <% } %>
</select>
<br><br>
Subject 2 : 
<select name="sub2" id="sub2">
  <option value="0">FREE</option>
  <% //rs[1] = statement.executeQuery("select * from subject");%>
  <%  while(rs[1].next()){ %>
         <option value="<%= rs[1].getInt(1)%>"><%= rs[1].getString(2)%></option>
  <% } %>
</select>
<br><br>
Subject 3 : 
<select name="sub3" id="sub3">
  <option value="0">FREE</option>
  <% //ResultSet temp3 = statement.executeQuery("select * from subject");%>
  <%  while(rs[2].next()){ %>
         <option value="<%= rs[2].getInt(1)%>"><%= rs[2].getString(2)%></option>
  <% } %>
</select>
<br><br>
Subject 4 : 
<select name="sub4" id="sub4">
  <option value="0">FREE</option>
  <% //ResultSet temp4 = statement.executeQuery("select * from subject");%>
  <%  while(rs[3].next()){ %>
         <option value="<%= rs[3].getInt(1)%>"><%= rs[3].getString(2)%></option>
  <% } %>
</select>
<br><br>
Subject 5 : 
<select name="sub5" id="sub5">
  <option value="0">FREE</option>
  <% //ResultSet temp5 = statement.executeQuery("select * from subject");%>
  <%  while(rs[4].next()){ %>
         <option value="<%= rs[4].getInt(1)%>"><%= rs[4].getString(2)%></option>
  <% } %>
</select>
<br><br>
Subject 6 : 
<select name="sub6" id="sub6">
  <option value="0">FREE</option>
  <% //ResultSet temp6 = statement.executeQuery("select * from subject");%>
  <%  while(rs[5].next()){ %>
         <option value="<%= rs[5].getInt(1)%>"><%= rs[5].getString(2)%></option>
  <% } %>
</select>
<br><br>
Subject 7 : 
<select name="sub7" id="sub7">
  <option value="0">FREE</option>
  <% //ResultSet temp7 = statement.executeQuery("select * from subject");%>
  <%  while(rs[6].next()){ %>
         <option value="<%= rs[6].getInt(1)%>"><%= rs[6].getString(2)%></option>
  <% } %>
</select>
<br><br>
Subject 8 : 
<select name="sub8" id="sub8">
  <option value="0">FREE</option>
  <% //ResultSet temp8 = statement.executeQuery("select * from subject");%>
  <%  while(rs[7].next()){ %>
         <option value="<%= rs[7].getInt(1)%>"><%= rs[7].getString(2)%></option>
  <% } %>
</select>
<br><br>
<input type="submit" value="ADD">
</form>

</body>
</html>