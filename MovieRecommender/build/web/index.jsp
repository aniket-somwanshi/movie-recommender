<%

if(session.getAttribute("email")!=null){
%>

<%@page import="Connection.Config"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/index.css" type="text/css" media="all" />
<!--<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>-->
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
<link href="css/slick-theme.css" rel="stylesheet" type="text/css"/>
<!--for navbarcss-->
 

    <!-- Stylesheet -->
    

        <title>JSP Page</title>
<%
Connection conn=Config.Config();
String sql="SELECT * FROM moviesmetadata where popularity>140";
Statement stmt = conn.createStatement();

ResultSet rs = stmt.executeQuery(sql);  

Statement stmt1 = conn.createStatement();
String sql1="SELECT * FROM moviesmetadata where vote_count>800 ORDER BY vote_average DESC";
ResultSet rs1 = stmt1.executeQuery(sql1); 
%>

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



/*//viewBy*/
.viewBy {
    width: 68%;
    float:left;
    height: 50px;
    display: inline-block;
    font-size: 55px;
    color: white;
    font-weight: 900;
    text-transform: uppercase;
    font-family: FiraSansCondensed-Bold;
    
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
    text-align: center;
    overflow:hidden;
}
.card-title{
    text-decoration: none;
    overflow-wrap: break-word;
    padding-left: 3px;
      font-weight:600;
      text-align: center;
      color: white;
      
}
.card img {
    height: 100%;
  transform-origin: 50% 65%;
  transition: transform 5s, filter 3s ease-in-out;
  filter: brightness(150%);
}

.card:hover img {
  filter: brightness(100%);
  transform: scale(1.2);
}
.showing{
    width: 30%;
    font-weight: 900;
    font-size: 20px;
    float: right;
    color: white;
}
/*// navbar css*/
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
form{
    
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

input{
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

form:hover{
    width: 500px;
    cursor: pointer;
}

form:hover input{
    display: block;
}

form:hover .fa{
    background: #07051a;
    color: white;
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
        </style> 
    </head>
    <body>
        <%
        String email=session.getAttribute("email").toString();
     PreparedStatement pst1 = conn.prepareStatement("select * from share where shareTo=? and isRead=0");
     pst1.setString(1, email);
     ResultSet rst1 = pst1.executeQuery();
    int counter=0;
     while(rst1.next()){
     counter++;
     }
     %>
<!--real carousel-->
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
<section class="carousel">
    <div class="row">
        <div class="col-lg-12">
            <div class="carousel-poster">
                <div style="background-image: url(images/469913.jpg); background-size: cover; height: 800px;">
<!--                    <img src="images/wp1851143-the-conjuring-wallpapers.jpg" width="100%" height="700px" alt=""/>-->
                             <div class="centered">
                                 <div class="car-title"><a href="details.jsp?original_title=Batman: Under the Red Hood"><span>BATMAN
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
                                     <span class="car-year">2004</span><div class="circle"></div> <span class="car-year">ACTION, ADVENTURE </span>
                                     <span class="car-subtitle"></span>
                                     <span class="car-description">In Earth's future, a global crop blight and second Dust Bowl are slowly rendering the planet uninhabitable. Professor Brand (Michael Caine), a brilliant NASA physicist, is working on plans to save mankind by transporting Earth's population to a new home via a wormhole.</span>
                
                              </div>
                </div>
 


</div>
 
<!--           //carousel-->

<!--          carsusel end-->
<div class="containerMain" style="width: 100%;">
    <div class="contentMain" style="margin-left: 100px; margin-right: 100px;">
        <section class="popular">
            <div style="width: 100%; display: block; height: 50px; margin-bottom: 30px;">
            <span class="view">Most Popular</span>
            <span class="show">Showing 10 of 40</span>
    </div>
<div class="row">
    <div class="col-lg-12">
        <div class="slider">
            <div>
                <div class="card"><%rs.absolute(1);%>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title"><%=rs.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs.absolute(2);%>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><img  src="https://image.tmdb.org/t/p/w300<%=rs.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title"><%=rs.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs.absolute(3);%>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs.getString("poster_path")%>" alt="" /></a>
                <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title"><%=rs.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs.absolute(4);%>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title"><%=rs.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs.absolute(5);%>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title"><%=rs.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs.absolute(6);%>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title"><%=rs.getString("original_title")%></span></a>   
                </div>
            </div>
            <div>
                <div class="card"><%rs.absolute(7);%>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title"><%=rs.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs.absolute(8);%>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title"><%=rs.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs.absolute(9);%>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title"><%=rs.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs.absolute(10);%>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs.getString("original_title")%>"><span class="card-title"><%=rs.getString("original_title")%></span></a>
                </div>
            </div>                
                

</div>
    </div>
</div>

                 </section>
                                <!--rated high section-->
                <section class="rated">
        <div style="width: 100%; display: block; height: 50px; margin-bottom: 30px;">
            <span class="view">Top Rated</span>
            
            <span class="show">Showing 10 of 40</span>
    </div>
<div class="row">
    <div class="col-lg-12">
        <div class="slider">
            <div>
                <div class="card"><%rs1.absolute(1);%>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs1.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><span class="card-title"><%=rs1.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs1.absolute(2);%>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs1.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><span class="card-title"><%=rs1.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs1.absolute(3);%>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs1.getString("poster_path")%>" alt="" /></a>
                <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><span class="card-title"><%=rs1.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs1.absolute(4);%>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs1.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><span class="card-title"><%=rs1.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs1.absolute(5);%>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs1.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><span class="card-title"><%=rs1.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs1.absolute(6);%>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs1.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><span class="card-title"><%=rs1.getString("original_title")%></span></a>   
                </div>
            </div>
            <div>
                <div class="card"><%rs1.absolute(7);%>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs1.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><span class="card-title"><%=rs1.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs1.absolute(8);%>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs1.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><span class="card-title"><%=rs1.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs1.absolute(9);%>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs1.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><span class="card-title"><%=rs1.getString("original_title")%></span></a>
                </div>
            </div>
            <div>
                <div class="card"><%rs1.absolute(10);%>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs1.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs1.getString("original_title")%>"><span class="card-title"><%=rs1.getString("original_title")%></span></a>
                </div>
            </div>                
                

</div>
    </div>
</div>                   
                </section>
                <!--recommendation cards-->
<%
                try{
int s[]=new int[100000];
                int x=0;
        
            //fetching userId
            String sq="select * from user where email=?";
            PreparedStatement p=conn.prepareStatement(sq);
            p.setString(1, email);
           ResultSet r=p.executeQuery(); 
           r.absolute(1);
           int userId=r.getInt("id");
           
           
           
            String sqlx="select * from ratings where userId=? and ratings>2";
            PreparedStatement pstx=conn.prepareStatement(sqlx);
            pstx.setInt(1, userId);
           ResultSet rsx=pstx.executeQuery();
           //rs is users top rated movies

           while(rsx.next())
           {
                String sql1x="select * from ratings where movieId=? and ratings>2";
                PreparedStatement pst1x=conn.prepareStatement(sql1x);
                pst1x.setInt(1, rsx.getInt("movieId"));
                ResultSet rs1x=pst1x.executeQuery();
                //rs1 has similar users
                while(rs1x.next()){
                 
                String sql2x="select * from ratings where userId=? and ratings>=4";
                PreparedStatement pst2x=conn.prepareStatement(sql2x);
                pst2x.setInt(1, rs1x.getInt("userId"));
                ResultSet rs2x=pst2x.executeQuery();
                while(rs2x.next()){
                
                
                s[x]=rs2x.getInt("movieId");
                x++;
                
                
                
                }
                }   
           }
           for(int q=0;q<x;q++){
             //  out.print(s[q]);       
           }
            //finding how many times a movie is repeated and arranging in descending order
                        
	
                   int data[]= new int[100000];
                   int repeat[]=new int[100000];
	int i,j,temp,n,count=1,k=0,d=0;
	n=x;
	//n is no. of movies in array s
	
	for (i = 0 ; i < n - 1; i++)
  	{
    	for (j = 0 ; j < n - i - 1; j++)
    	{
	      if (s[j] > s[j+1])
	      {
	        temp = s[j];
	        s[j] = s[j+1];
	        s[j+1] = temp;
	      }
	    }
  	}
	for(i=0;i<n;i++)
	{
	    for(j=i+1;j<n;j++)
	    {
	    	if(s[j]==0||s[i]==0)
	    	{
                                                break;
                                        }
			
	        if(s[i]==s[j])
	        {
	            count=count+1;
	            s[j]=0;
	        }
	        
	        if(j==n-1)
	        {
	            data[d]=s[i];
                                        d++;
		  repeat[k]=count; 
		  k++;	
		  count=1;
                            }
	    }
	}
	//sorting
	for (i = 0 ; i < k - 1; i++)
  	{
    	for (j = 0 ; j < k - i - 1; j++)
    	{
	      if (repeat[j] < repeat[j+1])
	      {
	        temp = repeat[j];
	        repeat[j] = repeat[j+1];
	        repeat[j+1] = temp;
	        
	        temp = data[j];
	        data[j] = data[j+1];
	        data[j+1] = temp;
	      }
	    }
  	}
  	for (i=0;i<10;i++)
  	{
                            out.print("\t"+data[i]);
	}
	//out.print("\n");
  	//for (i = 0 ; i < 10; i++)
  	//{
                    //        out.print("\t"+repeat[i]);
	//} 
            //end sorting
            int ii=0;
            int jj=1;    
               String sql4x="select * from moviesmetadata where id=? or id=? or id=? or id=? or id=? or id=? or id=? or id=? or id=? or id=? and id NOT IN (select movieId from ratings where userId=?)";
                PreparedStatement pst4x=conn.prepareStatement(sql4x);
                while(jj!=11){
                pst4x.setInt(jj,data[ii]);
                ii++;
                jj++;
                }
                pst4x.setInt(11,userId);
                ResultSet rs4x=pst4x.executeQuery();
                
                
           
        
%>                
  <section class="recommendations">
     <div style="width: 100%; display: block; height: 50px; margin-bottom: 30px;">
            <span class="view">Recommendations</span>
            
            <span class="show">Showing 10 of 10</span>
    </div>
<div class="row">
    <div class="col-lg-12">
        <div class="slider">
            <%
            while(rs4x.next()){
            %>
            <div>
                <div class="card">
                    <a href="details.jsp?original_title=<%=rs4x.getString("original_title")%>"><img width="250px" src="https://image.tmdb.org/t/p/w300<%=rs4x.getString("poster_path")%>" alt="" /></a>
                    <a href="details.jsp?original_title=<%=rs4x.getString("original_title")%>"><span class="card-title"><%=rs4x.getString("original_title")%></span></a>
                </div>
            </div>
            <%
            }
            
            }catch(Exception e){
            out.print(e);}
            %>  
                

</div>
    </div>
</div>                   
                </section>                
<!--recommendation cards end--> 
    </div>
</div>


              
<!--end div slider-->






  

<script src="http://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="js/slick.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
$('.slider').slick({
  slidesToShow: 5,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 3000,
  dots:false,
  arrows:true,

 
});
});


    </script>
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