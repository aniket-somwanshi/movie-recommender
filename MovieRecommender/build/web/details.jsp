<%-- 
    Document   : details
    Created on : 13 Mar, 2019, 6:54:02 PM
    Author     : aditya
--%>
<%

if(session.getAttribute("email")!=null){
%>
<%@page import="Connection.Config"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<% 

        
        try{
            

String originalTitle1 =request.getParameter("original_title");

        }catch(Exception r){out.print("exp"+r);}
        String email=session.getAttribute("email").toString();
String originalTitle =request.getParameter("original_title");
   Connection conn=Config.Config();
        PreparedStatement pst = conn.prepareStatement("select * from moviesmetadata where original_title=?");
        pst.setString(1, originalTitle);
        ResultSet rst = pst.executeQuery();
 
        PreparedStatement pst1 = conn.prepareStatement("select * from share where shareTo=? and isRead=0");
     pst1.setString(1, email);
     ResultSet rst1 = pst1.executeQuery();
    int counter=0;
    
     while(rst1.next()){
     counter++;
     }
     rst1.absolute(1);
     
        String movieId;
        rst.absolute(1);
        movieId= rst.getString("id");
     

 
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://fonts.googleapis.com/css?family=Catamaran' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
<link href='fonts/ars-maquette-regular.ttf' rel='stylesheet'>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>   
<!--// hover-->
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/hover-min.css" rel="stylesheet" media="all">
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Details</title>
    </head>
    <style>
    
        body{
            color: white;
            font-family: Catamaran ;
            background-color: darkslategray;
        }
        .poster img{
            
            border-radius: 20px;
            filter: brightness(140%);
        }
        
        .r1{
            
            height: 460px;
            margin-top: 100px;
        }
        .poster{
            float: left;
            width: 27%;
           
            
            
        }
        .details{
            width: 73%;
            display: inline-block;
            height: 100%;
            position: relative;
        }
         .subtitle{
            font-size: 20px;
            color: #999;
        }
               @font-face {
    font-family: "FiraSansCondensed-Bold";
    src: url("fonts/FiraSansCondensed-Bold.otf") format("opentype");
}
        .title span{
            text-transform: uppercase;
                 font-family: FiraSansCondensed-Bold;
         font-size: 80px;
        font-weight: 900;
    color:white;
    display: block;
           
        }
       
        .information{
            
            margin-top: 20px;
                 font-family: Poppins;
         font-size: 20px;
        font-weight: 600;
        height: 100%;
    color:black;
    display: block;
        }
        .padding{
             padding-top: 5px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .info{
            
            background-color: white;
            height: 340px;
            width: 50%;
            float: left;
            
        }
        .shareButton,.shareEmail{
                    font-family: Poppins;
         font-size: 20px;
        font-weight: 600;
        color:black;
        }
                .overview {
                  font-family: Poppins;  
               font-size: 20px;
        font-weight: 600;
        color: black;
        }
        .overviewSpan{
            font-size: 20px;
            
        }
        
        .performance{
            
            margin-left: 10px;
            background-color: white;
            height: 340px;
            width: 47%;
            display: inline-block;
        }
        
      
            .trailer{
            height: 500px;
        }
        /*rating*/
        @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
fieldset, label { margin: 0; padding: 0; }
h1 { font-size: 1.5em; margin: 10px; }

/****** Style Star Rating Widget *****/

.rating { 
  border: none;
  float: left;
}

.rating > input { display: none; } 
.rating > label:before { 
  margin: 5px;
  font-size: 1.25em;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating > .half:before { 
  content: "\f089";
  position: absolute;
}

.rating > label { 
  color: #ddd; 
 float: right; 
}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating > input:checked ~ label, /* show gold star when clicked */
.rating:not(:checked) > label:hover, /* hover current star */
.rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

.rating > input:checked + label:hover, /* hover current star when changing rating */
.rating > input:checked ~ label:hover,
.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
.rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 
   /*// navbar css*/
.navig{
    width: 100%;
    position: absolute;
    z-index: 9999;
    background-color: transparent;
    margin-top: -90px;
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

label{
    font-size: 44px;
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
.circle{
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
.car-year{ 
    font-weight: 900 !important;
   font-size: 20px;
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

        </style> 

    <body>
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
        <div class="jumbotron1" style="width: 100%;">
            <div class="r1" style="margin-right: 100px; margin-left: 100px">
          <div class="poster"><%rst.absolute(1);%>
              <a href="#" class="hvr-bob"><img height="460px" src="https://image.tmdb.org/t/p/w400<%=rst.getString("poster_path")%>"></a>
            </div>           
            <div class="details">
                <div class="title">
                    <span class="hvr-underline-from-left"><%=rst.getString("original_title")%></span>
                    
                </div>
                      <span class="car-year"><%=rst.getString("release_date")%></span><div class="circle"></div> <span class="car-year"><%=rst.getString("status")%></span>
                                     <span class="car-subtitle"></span>
                                     <span class="car-description" style="margin-bottom:15px;"><%=rst.getString("overview")%></span>
               
<!--                <div class="information">
                    <div class="info">
                        <div style="text-align: center; background-color: orange; display: block;"><span style="text-transform: uppercase; font-size: 25px;">Details</span></div>
                        <div class="release padding"><span>Release Date:</span><span style="float: right;"><%=rst.getString("release_date")%></span></div>
                    <div class="popularity padding"><span>Popularity:</span><span style="float: right;"><%=rst.getString("popularity")%></span></div>
                    <div class="status padding"><span>Status:</span><span style="float: right;"><%=rst.getString("status")%></span></div>
                    <span class="padding">Share the movie with a Friend</span>
-->                    
                    <form action="share.jsp" method="post">
                    <input type="hidden" name="original_title" value="<%=originalTitle%>">
                    <input class="shareEmail padding" type="email" placeholder="Enter email" name="shareTo">
                    <input class="shareEmail padding" type="text" placeholder="Quick Message" name="quickMessage">
                    <input class="shareButton" type="submit" value="share">
                    </form><!--
                    </div>
                    performance
                    <%
                    float voteAverage=Float.parseFloat(rst.getString("vote_average"));
                    float voteAverageWidth=voteAverage*10;
                    
                   float vCnt=Float.parseFloat(rst.getString("vote_count"));
                   float vCntW=(vCnt/14075)*100;
                   int vCount=Math.round(vCntW);
                    %>
-->         
                        
                       
<span style="width: 100%; display: block; margin-top: 15px;">Vote Average</span>
                         <div class="progress" style="width:50%; float: left;">
                        <div class="progress-bar progress-bar-striped active" style="width:<%=voteAverageWidth%>%"><%=voteAverageWidth%>%</div>
                         </div><span><%=vCnt%></span>
                    <div class="s" style="display: block; width: 100%; height: 20px;"></div>
                    <span style="width: 100%; display: block; margin-top: 10px;">Vote Counts</span>
                     
                     <div class="progress" style="width:50%; display: block;">
                        <div class="progress-bar progress-bar-striped active" style="width:<%=vCount%>%">
                            <%=vCount%>%</div>
                    </div>
                    
                   
                    
                   
                    
                    
                    </div><!--
                    
                </div>-->
                
            </div>
           </div>
                     
                   <div class="r2" style="margin-right: 100px; margin-left: 100px">
              
                   </div>
                    
                    
                    <div class="r3" style="margin-right: 100px; margin-left: 100px">
                         <div class="ratings">
                             <form action="insertRatings.jsp" method="post" style="width: 60%;">
                    <fieldset class="rating">
                        <input type="radio" style="width: 30px;" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4half" name="rating" value="5" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3half" name="rating" value="4" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2half" name="rating" value="3" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1half" name="rating" value="2" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
    <input type="radio" id="starhalf" name="rating" value="1" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
    
</fieldset>
                        <input type="hidden" value=<%=movieId%> name="movieId">
                        <input type="hidden" value=<%=originalTitle%> name="original_title">
                        <input  style="width: 50px; height: 50px; margin-top: 20px; color: red;" type="submit" value="Rate">
                    </form>
            </div>
                
                   </div>
    
    <%
    
    
    
       try{
        
       PreparedStatement pst2 = conn.prepareStatement("select * from youtube where title like ?");
        
        pst2.setString(1, "%"+originalTitle +"%");
        ResultSet rst2 = pst2.executeQuery();
      rst2.absolute(1);
      
      

      String play=rst2.getString("youtubeId");
 
%>
    <div class="watchTrailer">
        <iframe  style="margin-left: 200px;"width="1120" height="515" src="https://www.youtube.com/embed/<%=play%>?start=7&autoplay=1&showinfo=0&iv_load_policy=3&rel=0"
                 frameborder="0"  allowfullscreen="1"></iframe>
    </div>
<%
  }
    catch(Exception r){
            out.print(r);
            }
%>

</script>
        <!--//core-->
        
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