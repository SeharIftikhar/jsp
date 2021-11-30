<%--
  Created by IntelliJ IDEA.
  User: BSE173029
  Date: 11/23/2021
  Time: 4:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>displaying data</title>
</head>
<body>
<%@page import="db.DbConnection"%>
<%@page import="java.sql.*"%>
<% ResultSet rset=new ResultSet();%>
<table>
    <tr>
        <th>Author</th>
        <th>Price</th>
    </tr>
    <%
        while (rset.next()) {

    %>
    <tr>
        <td><%= rset.getString("fname") %></td>
        <td>$<%= rset.getInt("lname") %></td>
    </tr>
    <%

        }
    %>
</table>
</body>
</html>
