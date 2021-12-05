<%@page import="com.db.utils.DbConnection"%>
<%@ page import ="java.sql.*"
         %>
<%
    

    String userid = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    Connection con = DbConnection.init();
    Statement st = con.createStatement();
    ResultSet rs;
    


    rs = st.executeQuery("select * from members where uname='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("success.jsp");
    } 
    else {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food Shop</title>
        <link rel="stylesheet" href="w3.css" type="text/css">
    </head>

    <style>
        .dfHgt {
            color: #212121;
            text-align:center;
        }
    </style>
    <div class="w3-container w3-center ">
        <div class="w3-xxlarge"> </div>
    </div>
    <p class="dfHgt">
        <br>
        sorry, these details  are not registered.Please register first!
        <br>
         <a href="register.jsp">Sign up</a>
       
    </p>
   
    <%
        } %>
    
    
    
    
    
    
    
    
    
    
    
    