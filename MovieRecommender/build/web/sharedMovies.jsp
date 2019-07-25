<%-- 
    Document   : sharedMovies
    Created on : 8 Apr, 2019, 11:28:54 PM
    Author     : Somwanshi
--%>
<%

if(session.getAttribute("email")!=null){
%>
<%@page import="Connection.Config"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  <link href='https://fonts.googleapis.com/css?family=Catamaran' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">  
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<!--// hover-->
<link href="css/hover-min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!--slick--> <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/slick.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link href="css/slick-theme.css" rel="stylesheet" type="text/css"/>
        <style>
                                @font-face {
                font-family:"Staatliches";
                src: url("fonts/Staatliches-Regular.ttf") format("truetype");
            }
           @font-face {
    font-family: "FiraSansCondensed-Bold";
    src: url("fonts/FiraSansCondensed-Bold.otf") format("opentype");
}
            body{
                background-color: #182130;
                font-family: Catamaran;
                
            }

  .carousel {
  position: relative;

  color: white;
}
.centered {
    z-index: 9999;

  position: absolute;
  top: 26%;
  margin-left: 100px;
 
   height: 55px;
  
  color: white;
  
  text-align: left;
}.circle{
    display: inline-block;
    position: relative;
  background: white;
  border-radius: 50%;
  height: 10px;
  width: 10px;
  margin-bottom: 2px;
  margin-left: 15px;
  margin-right:  15px;
}
.car-title  span{
  text-decoration: none;
  color: white;
    font-family: FiraSansCondensed-Bold;
    font-size: 90px;
    letter-spacing: -2px !important;
    font-weight: 1000;
    
    display: block;
}
car-year{ 
    font-weight: 900 !important;
   font-size: 23px;
    display: inline-block;
}
.car-description{
    font-weight: 900;
    padding-top: 30px;
   font-size: 20px;
    display: inline-block;
}

.example_d {
color: #20bf6b !important;
text-transform: uppercase;
background: #ffffff;
padding: 20px;
border: 4px solid white;
border-radius: 6px;
display: inline-block;
}

.example_d:hover {
color: white !important;
border-radius: 3px;
background-color: black;
text-decoration: none;

font-size: 20px;

border: solid white 1px;
transition: all 0.3s ease 0s;
}
.car-description{
    font-size: 20px;
      font-family: Catamaran;
   max-width: 500px;
    display: block;
}



/*// card*/
/* Slow-motion Zoom Container */
.img-hover-zoom--slowmo img {
  transform-origin: 50% 65%;
  transition: transform 2s, filter 2s ease-in-out;
  filter: brightness(150%);
}

/* The Transformation */
.card{
    background-color: #04040e;
    border: none;
    margin-right: 13px;
    height: 400px;
    overflow-y:hidden !important;
}
.card a{
    
    overflow:hidden;
}

.card img {
    border-radius: 5px;
    height: 100%;
  transform-origin: 50% 65%;
  transition: transform 5s, filter 3s ease-in-out;
  filter: brightness(150%);
}

.card:hover img {
  filter: brightness(100%);
  transform: scale(1.2);
}
.view{
  
    float:left;
    
    display: inline-block;
    font-size: 55px;
    color: white;
    font-weight: 900;
    text-transform: uppercase;
    font-family: FiraSansCondensed-Bold;
}
.show{
    text-align: right;
    padding-top: 25px;
    font-weight: 900;
    font-size: 20px;
    float: right;
    padding-right: 20px;
    color: white;}
   /*// navbar css*/
.navig{
    width: 100%;
    position: absolute;
    z-index: 9999;
    background-color: transparent;

}
.navig{
    background-color: transparent !important;
}

.actualnav{
    float:right;
}

.actualnav ul{
    margin-right: 30px;
    float: right;
    display:inline;
    height: 50px;
}

.actualnav li{color:white !important;
   font-weight: 600;
   font-size: 23px;
    margin-left: 30px;
    display: inline-block;
    position: relative;   
    
    
}
.notification {
    color: white;
  text-decoration: none;
  padding: 11px 20px;
  position: relative;
  display: inline-block;
  border-radius: 2px;
}

.notification:hover {
  background: white;
  color:black;
}

.notification .badge {
  position: absolute;
  top: -10px;
  right: -10px;
  padding: 5px 10px;
  border-radius: 50%;
  background: red;
  color: white;
}
.slick-prev:before {
    content: "" !important;
    font-family: 'FontAwesome' !important;
    font-size: 22px !important;
}
.slick-next:before {
    content: "" !important;
    font-family: 'FontAwesome' !important;
    font-size: 22px !important;
}
            

/*//search*/
.logo form{
    
    position: relative;
    top: 50%;
    left: 340px;
    transform: translate(-50%,-50%);
    transition: all 1s;
    width: 50px;
    height: 50px;
    background: white;
    box-sizing: border-box;
    border-radius: 25px;
    border: 4px solid white;
    padding: 5px;
}

.logo input{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;;
    height: 42.5px;
    line-height: 30px;
    outline: 0;
    border: 0;
    display: none;
    font-size: 1em;
    border-radius: 20px;
    padding: 0 20px;
}

.fa{
    box-sizing: border-box;
    padding: 10px;
    width: 42.5px;
    height: 42.5px;
    position: absolute;
    top: 0;
    right: 0;
    border-radius: 50%;
    color: #07051a;
    text-align: center;
    font-size: 1.2em;
    transition: all 1s;
}

.logo form:hover{
    width: 500px;
    cursor: pointer;
}

.logo form:hover input{
    display: block;
}

.logo form:hover .fa{
    background: #07051a;
    color: white;
}
        </style>
    </head>
    <body>
        <%
        Connection conn=Config.Config();
        String email=session.getAttribute("email").toString();
     PreparedStatement pst1 = conn.prepareStatement("select * from share where shareTo=? and isRead=0");
     pst1.setString(1, email);
     ResultSet rst1 = pst1.executeQuery();
    int counter=0;
     while(rst1.next()){
     counter++;
     }
     
      
        
        
     
     
 PreparedStatement pst22 = conn.prepareStatement("select * from share where shareTo=?");
     pst22.setString(1, email);
     ResultSet rs = pst22.executeQuery();
         ResultSet rs3=null;
         int q=0;
         String a1=null;
         String a2=null;
         String a3=null;
         String a4=null;
         String a5=null;

      PreparedStatement pst3 = conn.prepareStatement("select id from moviesmetadata inner join share on moviesmetadata.id=share.original_title where shareTo=?");
     pst3.setString(1, email);
      rs3 = pst3.executeQuery();    
     out.print(q);
     rs.absolute(0);
     %>
     


    <div class="navig">
         <div class="logo" style="float: left; width: 34%; display: inline-block; position: relative; margin-top: 26px !important; padding-top: 24px;">
             <form action="SearchByGenre.jsp" method="post">
                 <input type="search" name="search" placeholder="Find any Movie">
  <i class="fa fa-search"></i>
</form>
    </div>
    <div class="actualnav" style="float: right; display: inline-block; margin-top: 15px;">
        <ul>
            <a href="index.jsp"><li>Home</li></a>
            <a href="mySpace.jsp"><li>My Space</li></a>
            <a href="aboutUs/about.html"> <li>About</li></a>
           
            <li><a href="sharedMovies.jsp" class="notification">
  <span>Inbox</span>
  <span class="badge"><%=counter%></span>
</a></li>
<a href="aboutUs/contact.html"><li>Contact</li></a>
            <li><a href="logout.jsp" >Logout</a></li>
            
        </ul>
    </div>
</div>   

<!--carousel-->
<section class="carousel">
    <div class="row">
        <div class="col-lg-12">
            <div class="carousel-poster">
                <div style="background-image: url(images/469913.jpg); background-size: cover; height: 800px;">
<!--                    <img src="images/wp1851143-the-conjuring-wallpapers.jpg" width="100%" height="700px" alt=""/>-->
                             <div class="centered">
                                 <div class="car-title"><a href="details.jsp?original_title=Batman"><span>BATMAN
                                     </span></a></div>
                                 <span class="car-year">2007</span><div class="circle"></div> <span class="car-year">ACTION, DRAMA, ADVENTURES </span>
                                     <span class="car-subtitle"></span>
                                     <span class="car-description">Batman (Christian Bale) has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker (Heath Ledger) suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.</span>
                
                              </div>
                </div>
                
                   <div style="background-image: url(images/wp2516773-lost-in-space-hd-wallpapers.jpg); background-size: cover; height: 800px;">
                       
<!--                    <img src="images/wp1851143-the-conjuring-wallpapers.jpg" width="100%" height="700px" alt=""/>-->
                             <div class="centered">
                                 <div class="car-title"><a href="details.jsp?original_title=Interstellar"><span>INTERSTELLAR</span></a></div>
                                     <span class="car-year">2007</span><div class="circle"></div> <span class="car-year">ACTION, DRAMA, ADVENTURES </span>
                                     <span class="car-subtitle"></span>
                                     <span class="car-description">In Earth's future, a global crop blight and second Dust Bowl are slowly rendering the planet uninhabitable. Professor Brand (Michael Caine), a brilliant NASA physicist, is working on plans to save mankind by transporting Earth's population to a new home via a wormhole.</span>
                
                              </div>
                </div>
            </div>
</div>
    </div>
   </section>

 
<!--           //carousel-->

<!--          carsusel end-->
<div class="containerMain" style="width: 100%;">
    <div class="contentMain" style="margin-left: 100px; margin-right: 100px;">
        <section class="popular">
            <div style="width: 100%; display: block; height: 50px; margin-bottom: 30px;">
            <span class="view">Movies Inbox</span>
            <span class="show">Showing all</span>
    </div>

  
       <div class="contain">
           <div class="row">
               <div class="col-lg-5">
                   <%int ii=0;
       while(rs3.next()){ii++;
                   %>
                        <a href="details.jsp?original_title=<%=rs3.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs3.getString("poster_path")%>" alt="" /></a>
       <%}%>
                        <%out.print("sdghjksdsakl"+ii);%>
               </div>
                <div class="col-lg-7">
                   <%while(rs.next()){%>
                            <div class="content" style=" color: white; display: inline-block; width: 90%; ">
            
            <div  class="originalTitle"><a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title" style="font-size: 65px;"><br>
                        <%=rs.getString("original_title")%></span></a></div>
                        <div class="sender" style="font-size: 30px;"><span>Recommended to you by : </span><span><%=rs.getString("shareFrom")%></div>
            <div class="message" style="font-size: 30px;"><span>Note : </span><span><%=rs.getString("quickMessage")%></span></div>
       
                   <%}%>
               </div>
               
           </div>
   
        
       </div>
        </section>
    </div>

</div>
           
           
            
          
                  
               
            
            

    

              
        
                <script src="http://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="js/slick.min.js"></script>
<script type="text/javascript" src="js/slickCustom1.js"></script>
    </body>
</html>

<%
}
else{
%>
<script>window.location='login/index.html';</script>
<%
}
%>