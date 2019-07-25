<%-- 
    Document   : mySpace
    Created on : 18 Apr, 2019, 10:21:57 AM
    Author     : Somwanshi
--%>

<%@page import="java.sql.*"%>
<%@page import="Connection.Config"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>   
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <!-- jQuery library -->

<!--<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/easy-pie-chart/2.1.6/jquery.easypiechart.js"></script>-->
<!--
<link rel="stylesheet"type="text/css" href="/path/to/jquery.easy-pie-chart.css">-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <!-- Latest compiled JavaScript -->

        <link href='https://fonts.googleapis.com/css?family=Catamaran' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
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
                font-family: Catamaran, sans-serif;
            }
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
            .jumbo{
               padding-top: 70px;
    display: block;
    margin-top: 100px;
    margin-left: 50px;
    margin-right: 50px;
    position: relative;
            }
            .r{

                width: 100%;
            }
            .b{
                 font-family: FiraSansCondensed-Bold;
                text-align: center;
                width: 25%;
                display: inline-block;
                position: relative;
                padding-right: 22px;
            }
            .b4{text-align: center;
                font-family: FiraSansCondensed-Bold;
                width: 24%;
                display: inline-block;
                position: relative;
            }


            .bl{
                font-weight: 900;
                font-size: 55px;
                height: 200px;
                border-radius: 10px;
                color:white; 
            }
            .block-number{
                font-size: 111px;
            }
            .pie-text{border-top-left-radius: 25px;
                      border-top-right-radius: 25px;
                      background-color: white;
                      margin-top: 22px;
                      color:darkslategray;
                      
                      font-family: FiraSansCondensed-Bold;
                      font-size: 70px;
                      padding: 22px;
            }
            .welcome {
                margin-top: 22px;
                color:white;
               font-weight: 900;
                word-spacing: 2px;
                font-size: 30px;

            }
            .profile{
                font-weight: 900;
                text-align: center;
                font-size: 38px;
                
                height:750px;
                background-color: #FF3B30;
                border-radius: 25px;
                margin-top: 22px;
                margin-right: 22px;
                color: white;
            }
            
            .pie-pie{border-bottom-left-radius: 25px;
                     border-bottom-right-radius: 25px;
                     
                     height: 600px;
                     width: 100%;
                     overflow: hidden;
            }

            .top5{margin-top: 22px;
                  padding: 22px;
                   font-family: FiraSansCondensed-Bold;


                  background-color: white;


                  height: 300px;
                  border-top-left-radius: 20px;
                  border-top-right-radius: 20px;
            }
            .top5-title{
                font-family: FiraSansCondensed-Bold, sans-serif;
                color: darkslategray;
                font-size: 75px;
                letter-spacing: 1px;
                word-spacing: 2px;

            }
            .list{
                 font-family: FiraSansCondensed-Bold;
                color: #182130;
                font-size: 35px;
                letter-spacing: 1px;
                word-spacing: 2px;

            }
            .double{width: 1100px;
                    height:500px; 
            }

            .col-lg-4{
                padding-right: 0px !important;
                
            }
              .col-lg-8{
                padding-left: 0px !important;
                
            }
        </style>
    </head>
    <body>
        <% Connection conn = Config.Config();
        String email=session.getAttribute("email").toString();
     PreparedStatement pst1 = conn.prepareStatement("select * from share where shareTo=? and isRead=0");
     pst1.setString(1, email);
     ResultSet rst1 = pst1.executeQuery();
    int counter1=0;
     while(rst1.next()){
     counter1++;
     }
     %>
<%
    
   
    String sq = "select id from user where email=?";
    PreparedStatement p = conn.prepareStatement(sq);
    p.setString(1, email);
    ResultSet r = p.executeQuery();
    r.absolute(1);
    int userId = r.getInt("id");

    int ratings = 0;
    int rating5 = 0;
    int r2 = 0;
    int shared = 0;
    ResultSet r6 = null;
    String sq1 = "select * from ratings where userId=?";
    PreparedStatement p1 = conn.prepareStatement(sq1);
    p1.setInt(1, userId);
    ResultSet r1 = p1.executeQuery();
    while (r1.next()) {
        ratings++;
    }
   

    String sq2 = "select * from ratings where userId=? and ratings>3";
    PreparedStatement p2 = conn.prepareStatement(sq2);
    p2.setInt(1, userId);
    ResultSet rs2 = p2.executeQuery();
    while (rs2.next()) {
        rating5++;
    }
    String sq3 = "select * from ratings where userId=? and ratings<3";
    PreparedStatement p3 = conn.prepareStatement(sq3);
    p3.setInt(1, userId);
    ResultSet r3 = p3.executeQuery();
    while (r3.next()) {
        r2++;
    }
    String sq4 = "select * from share where shareFrom=?";
    PreparedStatement p4 = conn.prepareStatement(sq4);
    p4.setString(1, email);
    ResultSet r4 = p4.executeQuery();
    while (r4.next()) {
        shared++;
    }

    //pie chart
    String sq5 = "select movieId from ratings where userId=?";
    PreparedStatement p5 = conn.prepareStatement(sq5);
    p5.setInt(1, userId);
    ResultSet r5 = p5.executeQuery();

    int adv = 0;
    int comedy = 0;
    int action = 0;
    int horror = 0;
    int romance = 0;
    int animation = 0;

    while (r5.next()) {
        String sq7 = "select id from moviesmetadata where id=? and genres like ?";
        PreparedStatement p7 = conn.prepareStatement(sq7);
        p7.setInt(1, r5.getInt("movieId"));
        p7.setString(2, "%" + "Adventure" + "%");
        ResultSet r7 = p7.executeQuery();
        while (r7.next()) {
            adv++;
        }
    }
    r5.absolute(0);
    //iterate
    while (r5.next()) {
        String sq7 = "select id from moviesmetadata where id=? and genres like ?";
        PreparedStatement p7 = conn.prepareStatement(sq7);
        p7.setInt(1, r5.getInt("movieId"));
        p7.setString(2, "%" + "Comedy" + "%");
        ResultSet r7 = p7.executeQuery();
        while (r7.next()) {
            comedy++;
        }
    }
    r5.absolute(0);
    //iterate
    while (r5.next()) {
        String sq7 = "select id from moviesmetadata where id=? and genres like ?";
        PreparedStatement p7 = conn.prepareStatement(sq7);
        p7.setInt(1, r5.getInt("movieId"));
        p7.setString(2, "%" + "Horror" + "%");
        ResultSet r7 = p7.executeQuery();
        while (r7.next()) {
            horror++;
        }
    }
    r5.absolute(0);
    //iterate
    while (r5.next()) {
        String sq7 = "select id from moviesmetadata where id=? and genres like ?";
        PreparedStatement p7 = conn.prepareStatement(sq7);
        p7.setInt(1, r5.getInt("movieId"));
        p7.setString(2, "%" + "Romance" + "%");
        ResultSet r7 = p7.executeQuery();
        while (r7.next()) {
            romance++;
        }
    }
    r5.absolute(0);
    //iterate
    while (r5.next()) {
        String sq7 = "select id from moviesmetadata where id=? and genres like ?";
        PreparedStatement p7 = conn.prepareStatement(sq7);
        p7.setInt(1, r5.getInt("movieId"));
        p7.setString(2, "%" + "Animation" + "%");
        ResultSet r7 = p7.executeQuery();
        while (r7.next()) {
            animation++;
        }
    }
    r5.absolute(0);
    //iterate
    while (r5.next()) {
        String sq7 = "select id from moviesmetadata where id=? and genres like ?";
        PreparedStatement p7 = conn.prepareStatement(sq7);
        p7.setInt(1, r5.getInt("movieId"));
        p7.setString(2, "%" + "Action" + "%");
        ResultSet r7 = p7.executeQuery();
        while (r7.next()) {
            action++;
        }
    }
    
    //iterate

%>         
<div class="navig" style="margin-top: -40px;">
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
  <span class="badge"><%=counter1%></span>
</a></li>
<a href="aboutUs/contact.html"><li>Contact</li></a>
            <li><a href="logout.jsp" >Logout</a></li>
            
        </ul>
    </div>
</div>
        <div class="jumbo">
           
               <div class="welcome">
                <span>Welcome to MySpace. A place where you can analyze your all time favorites, Discover your own movie taste and much more!
                    We enable you to analyze your activities and provide precious insights.</span>
            </div>
            <div class="r">
                <div class="b">
                    <div class="bl" style="background-color: #03A9F4;">
                        <div class="bl-r" style="width: 100%;">

                            <div class="block-title" style="width: 60%; float: left; display: inline-block;"><span>Total Ratings</span></div>
                            <div class="block-number" style="width: 40%; display: inline-block; text-align: center;"><span><%=ratings%></span></div>
                        </div>
                    </div>
                </div>
                <div class="b">
                    <div class="bl" style="background-color: #29C0B1;" >
                        <div class="bl-r" style="width: 100%;"> 
                            <div class="block-title" style="font-size: 55px; width: 70%; float: left; display: inline-block;"><span>Excellent Remarks</span></div>
                            <div class="block-number" style="width: 30%; display: inline-block;"><span><%=rating5%></span></div>
                        </div>

                    </div>
                </div>
                <div class="b">
                    <div class="bl"  style="background-color: #EBB109;">
                        <div class="bl-r" style="width: 100%;"> 
                            <div class="block-title" style="width: 70%; float: left; display: inline-block;"><span>Aweful Remarks</span></div>
                            <div class="block-number" style="width: 30%; display: inline-block;"><span><%=r2%></span></div>
                        </div>
                    </div>
                </div>
                <div class="b4">
                    <div class="bl" style="background-color: #8BC34A;">
                        <div class="bl-r" style="width: 100%;"> 
                            <div class="block-title" style="width: 70%; float: left; display: inline-block;"><span>Total Shares</span></div>
                            <div class="block-number" style="width: 30%; display: inline-block;"><span><%=shared%></span></div>
                        </div>
                    </div>
                </div>
            </div>
         
            <section class="pie">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="profile">
                           
                            <img src="images/nathan-dumlao-537382-unsplash.jpg" alt="" width="100%" height=100%"/>
<!--                            <span style="display: block;">We keep track of all your activites for providing you with  the best recommendations. The friends in the community may share movies with you along with a note for you.  </span>
                            <button style="background-color: green; text-align: center; width: 80%; border-radius: 10px;" >Visit Inbox</button>
                            <button style="background-color: lightsalmon; text-align: center; width: 80%; border-radius: 10px;">Continue to the website</button>-->
                        </div>



<!--<script type="text/javascript">
$(function() {
    $('.chart').easyPieChart({
        //your configuration goes here
    });
});
</script>-->
                    </div>
                    <div class="col-lg-8">
                        <div class="pie-text">
                            <span>Analysis of your Favorite Genres</span>
                        </div>
                        <div class="pie-pie">
                            <div id="chartContainer" style="height: 600px; width: 100%; border-radius: 35px;"></div>
                            <script>
                                window.onload = function () {

                                    var a =<%out.print(adv);%>;
                                    var ac =<%out.print(action);%>;
                                    var an =<%out.print(animation);%>;
                                    var h =<%out.print(horror);%>;
                                    var r =<%out.print(romance);%>;
                                    var c =<%out.print(comedy);%>;

                                    CanvasJS.addColorSet("greenShades",
                                            [//colorSet Array

                                                "#124F7B",
                                                "#8CBE21",
                                                "#45BBC8",
                                                "#E54253",
                                                "#F9B226",
                                                "#91143C",
                                            ]);

                                    var chart = new CanvasJS.Chart("chartContainer", {
                                        colorSet: "greenShades",
                                        options: {
                                            maintainAspectRatio: false
                                        },
                                        animationEnabled: true,

                                        legend: {
                                            cursor: "pointer",
                                            itemclick: explodePie
                                        },

                                        data: [{
                                                type: "pie",
                                                showInLegend: true,

                                                toolTipContent: "{name}: <strong>{y}%</strong>",
                                                indexLabel: "{name} - {y}%",
                                                dataPoints: [
                                                    {y: a, name: "Adventure", exploded: true},
                                                    {y: an, name: "Animation"},
                                                    {y: h, name: "Horror"},
                                                    {y: r, name: "Romance"},
                                                    {y: ac, name: "Action"},
                                                    {y: c, name: "Comedy"},
                                                ]
                                            }]
                                    });
                                    chart.render();
                                }

                                function explodePie(e) {
                                    if (typeof (e.dataSeries.dataPoints[e.dataPointIndex].exploded) === "undefined" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {
                                        e.dataSeries.dataPoints[e.dataPointIndex].exploded = true;
                                    } else {
                                        e.dataSeries.dataPoints[e.dataPointIndex].exploded = false;
                                    }
                                    e.chart.render();

                                }
                            </script>
                        </div>
                    </div>
                </div>
            </section>
  <%
                String sql = "select * from ratings where userId=? and ratings>2";
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt(1, userId);
                int counter = 0;
                int wR0=0;
                int wR1=0;
                int wR2=0;
                int wR3=0;
                int wR4=0;
                int aM[] = new int[5];
                int aR[] = new int[5];
                double wR[] = new double[5];
                ResultSet rs = ps.executeQuery();
                while (rs.next() && (counter < 5 == true)) {
                    aR[counter] = rs.getInt("ratings");
                    aM[counter] = rs.getInt("movieId");
                    counter++;
                }
                
               // to get m
              
                
                   
                PreparedStatement psx = conn.prepareStatement("select original_title from moviesmetadata where id=?");
                psx.setInt(1, aM[0]);
                 ResultSet rsx=psx.executeQuery();
                 rsx.absolute(1);
                 
                    PreparedStatement psx1 = conn.prepareStatement("select original_title from moviesmetadata where id=?");
                psx1.setInt(1, aM[1]);
                 ResultSet rsx1=psx1.executeQuery();
                 rsx1.absolute(1);
                 
                    PreparedStatement psx2 = conn.prepareStatement("select original_title from moviesmetadata where id=?");
                psx2.setInt(1, aM[2]);
                 ResultSet rsx2=psx2.executeQuery();
                 rsx2.absolute(1);
                 
                    PreparedStatement psx3 = conn.prepareStatement("select original_title from moviesmetadata where id=?");
                psx3.setInt(1, aM[3]);
                 ResultSet rsx3=psx3.executeQuery();
                 rsx3.absolute(1);
                 
                    PreparedStatement psx4= conn.prepareStatement("select original_title from moviesmetadata where id=?");
                psx4.setInt(1, aM[4]);
                 ResultSet rsx4=psx4.executeQuery();
                 rsx4.absolute(1);
                
                
//for  comparison bar 
                
                PreparedStatement ps2 = conn.prepareStatement("select ratings from ratings where movieId=?");
                ps2.setInt(1, aM[0]);
                ResultSet rst2 = ps2.executeQuery();
                while (rst2.next()) {
                    wR[0]=wR[0]+rst2.getDouble("ratings");
                    wR0++;
                }
                wR[0]=wR[0]/wR0;
                //iterate
                 
                PreparedStatement ps3 = conn.prepareStatement("select ratings from ratings where movieId=?");
                ps3.setInt(1, aM[1]);
                ResultSet rst3 = ps3.executeQuery();
                while (rst3.next()) {
                    wR[1]=wR[1]+rst3.getDouble("ratings");
                    wR1++;
                }
                wR[1]=wR[1]/wR1;
                //iterate
                 
                PreparedStatement ps4 = conn.prepareStatement("select ratings from ratings where movieId=?");
                ps4.setInt(1, aM[2]);
                ResultSet rst4 = ps4.executeQuery();
                while (rst4.next()) {
                    wR[2]=wR[2]+rst4.getDouble("ratings");
                    wR2++;
                }
                wR[2]=wR[2]/wR2;
                //iterate
                 
                PreparedStatement ps5 = conn.prepareStatement("select ratings from ratings where movieId=?");
                ps5.setInt(1, aM[3]);
                ResultSet rst5 = ps5.executeQuery();
                while (rst5.next()) {
                    wR[3]=wR[3]+rst5.getDouble("ratings");
                    wR3++;
                }
                wR[3]=wR[3]/wR3;
                //iterate
                
                PreparedStatement ps6 = conn.prepareStatement("select ratings from ratings where movieId=?");
                ps6.setInt(1, aM[4]);
                ResultSet rst6 = ps6.executeQuery();
                while (rst6.next()) {
                    wR[4]=wR[4]+rst6.getDouble("ratings");
                    wR4++;
                }
                wR[4]=wR[4]/wR4;
                //iterate
                

            %>
            <section class="top">
                <div class="top5">
                    <div class="row">
                        <div class="col-lg-6 top5-title"><span style="text-transform: uppercase;">Aniket's Top 5 movies most recently:</span></div>
                        <div class="col-lg-6" top5-list>
              
                  <div class="list"><span>1. <%=rsx.getString("original_title")%></span>
                       <div class="list"><span>2. <%=rsx1.getString("original_title")%></span>
                            <div class="list"><span>3. <%=rsx2.getString("original_title")%></span>
                                 <div class="list"><span>4. <%=rsx3.getString("original_title")%></span>
                                      <div class="list"><span>5. <%=rsx4.getString("original_title")%></span>
                  
                    </div>
                </div>
            </section>
                                      <section class="double" style="background-color: white; text-align: center; width: 100%; " >
                                          <canvas id="bar-chart-grouped" style="background-color: white; width:70%; padding-left: 30px;" ></canvas>
                <script>new Chart(document.getElementById("bar-chart-grouped"), {
                        type: 'bar',
                        options: {
                            maintainAspectRatio: false
                        },
                        data: {
                            labels: ["<%=rsx.getString("original_title")%>", "<%=rsx1.getString("original_title")%>", "<%=rsx2.getString("original_title")%>", "<%=rsx3.getString("original_title")%>", "<%=rsx4.getString("original_title")%>"],
                            datasets: [
                                {
                                    label: "Aniket",
                                    backgroundColor: "#78AD27",
                                    data: [<%out.print(aR[0]);%>, <%out.print(aR[1]);%>, <%out.print(aR[2]);%>, <%out.print(aR[3]);%>, <%out.print(aR[4]);%>]
                                }, {
                                    label: "Global",
                                    backgroundColor: "#0DACC2",
                                    data: [<%out.print(wR[0]);%>, <%out.print(wR[1]);%>, <%out.print(wR[2]);%>, <%out.print(wR[3]);%>, <%out.print(wR[4]);%>]
                                }
                            ]
                        },
                        options: {
                            title: {
                                display: true,
                                text: 'Global Comparison of your ratings'
                            }
                        }
                    });
                </script>
            </section>         


        </div>
    </body>
</html>
