<%-- 
    Document   : insertRatings
    Created on : 13 Mar, 2019, 10:23:19 PM
    Author     : aditya
--%>

<%@page import="Connection.Config"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<!DOCTYPE html>
<%
    
     String movieId1=request.getParameter("movieId");
     String email=session.getAttribute("email").toString();
     String original_title=request.getParameter("original_title");
     String rating=request.getParameter("rating");
     Connection conn=Config.Config();
     PreparedStatement pst = conn.prepareStatement("select * from user where email=?");
     pst.setString(1, email);
     ResultSet rs = pst.executeQuery();
     int id=0;
     while(rs.next()){
     id=rs.getInt("id");
     }
     
     //inserting ratings
   
            
     
          String query = "insert into ratings values (?, ?, ?)";
      PreparedStatement pst1 = conn.prepareStatement(query);
      pst1.setInt(1, id);
      pst1.setInt (2,Integer.parseInt(movieId1));
      pst1.setFloat(3,Float.parseFloat(rating));
   
      pst1.execute();
      
      
      
 
  
%>
  <script>
      alert("Thank you for your rating");

</script>




