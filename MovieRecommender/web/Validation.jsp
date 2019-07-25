<%-- 
    Document   : Validation
    Created on : 8 Mar, 2019, 5:26:16 PM
    Author     : aditya
--%>
<%@page import="Connection.Config"%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 
<%
    try{
    String email = request.getParameter("email");
    String password = request.getParameter("password");

        Connection conn=Config.Config();
        PreparedStatement pst = conn.prepareStatement("Select * from user where email=? and password=?");
        pst.setString(1, email);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())
        {          
            session.setAttribute("email", email);
            
           %><script>
            window.location='index.jsp'; 
            </script><%
        }
        else{
           out.println("alert('Invalid login credentials')");            
        }
 }
        
   catch(Exception e){       
       out.print(e);
       out.println("Something went wrong !! Please try again");       
   }
    %>