 <%@ include file="db_connect.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//Connection con;
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String gender = request.getParameter("gender");
String country = request.getParameter("country");
//out.print(name);
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/abc","root","");
PreparedStatement pstm = con.prepareStatement("insert into user(name,email,mobile,gender,country) values(?,?,?,?,?)");
pstm.setString(1, name);
pstm.setString(2, email);
pstm.setString(3, mobile);
pstm.setString(4, gender);
pstm.setString(5, country);
pstm.executeUpdate();
out.print("<h1 align='center'>Record Inserted Successfully...</h1>");
request.getRequestDispatcher("index.jsp").include(request, response);

%>
