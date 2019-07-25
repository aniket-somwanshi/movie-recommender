/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Bean.User;
import DAO.UserDeclaration;
import DAO.UserOperation;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import java.util.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aditya
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
    PrintWriter out=resp.getWriter();
    String username;
   String password,age,email,country,contact;
   
    country=req.getParameter("country");
    
    contact=req.getParameter("contact");
    age=req.getParameter("age");
    username=req.getParameter("username");
    email=req.getParameter("email");
    password=req.getParameter("password");
    //crwate object of user and call interface wala insert method
    User us=new User(username, password, age, email, country, contact);
        UserDeclaration ud=new UserOperation();
        ud.insertUser(us);
        int id=ud.insertUser(us);
        if(id>0){
            resp.sendRedirect("login/index.html");  
            out.print("done");
        }
        else{
            out.print("not done");
    }
            
    }
   
}
