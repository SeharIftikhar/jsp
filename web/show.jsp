<%--
  Created by IntelliJ IDEA.
  User: BSE173029
  Date: 11/23/2021
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>show</title>
</head>
<body>
<%@page import="db.DbConnection"%>
<%
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    String gender = request.getParameter("gender");
    String country = request.getParameter("country");

    DbConnection obj=new DbConnection();
    obj.insertRecord(fname, lname, gender, country);
    System.out.println("data inserted");
%>

<p>Student Name is: <%=fname%></p>
<p> Father Name is: <%=lname%></p>
<p>Registration Number is <%=gender%></p>
<p>Registration Number is <%=country%></p>
</body>
</html>
