<%-- 
    Document   : share
    Created on : 14 Mar, 2019, 10:52:46 PM
    Author     : aditya
--%>
<%@page import="Connection.Config"%>
<%@page import="java.sql.*"%>
<%
     String shareTo=request.getParameter("shareTo");
     String shareFrom=session.getAttribute("email").toString();
     String original_title=request.getParameter("original_title");
     String quickMessage=request.getParameter("quickMessage");
     Connection conn=Config.Config();
    
     int isRead=0;
     //insert into share db
     PreparedStatement pst1 = conn.prepareStatement("insert into share (shareTo,original_title,shareFrom,quickMessage,isRead) values(?,?,?,?,?)");
     pst1.setString(1, shareTo);
     pst1.setString(2, original_title);
     pst1.setString(3, shareFrom);
     pst1.setString(4, quickMessage);
     pst1.setInt(5, isRead);
     
     pst1.execute();
     %>
     <script>alert("Done sharing!");</script>
<%
     %>
