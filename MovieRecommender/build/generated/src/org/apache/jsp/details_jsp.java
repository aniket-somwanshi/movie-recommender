package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Connection.Config;
import java.sql.*;

public final class details_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

out.print(session.getAttribute("email"));
if(session.getAttribute("email")!=null){

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
 

        
        try{
            
    out.print(session.getAttribute("email"));
String originalTitle1 =request.getParameter("original_title");
out.print("originalTitle is "+originalTitle1);
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
        out.print("movieIdis"+movieId);
        
       out.print("movieIdagain"+movieId);

 

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Catamaran' rel='stylesheet'>\n");
      out.write("<link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>\n");
      out.write("<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>\n");
      out.write("<link href='fonts/ars-maquette-regular.ttf' rel='stylesheet'>\n");
      out.write("    <script src=\"https://canvasjs.com/assets/script/canvasjs.min.js\"></script>   \n");
      out.write("<!--// hover-->\n");
      out.write("<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"css/hover-min.css\" rel=\"stylesheet\" media=\"all\">\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Details</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("    \n");
      out.write("        body{\n");
      out.write("            font-family: Poppins;\n");
      out.write("            background-color: black;\n");
      out.write("        }\n");
      out.write("        .poster img{\n");
      out.write("            \n");
      out.write("            border-radius: 20px;\n");
      out.write("            filter: brightness(140%);\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .r1{\n");
      out.write("            \n");
      out.write("            height: 460px;\n");
      out.write("            margin-top: 100px;\n");
      out.write("        }\n");
      out.write("        .poster{\n");
      out.write("            float: left;\n");
      out.write("            width: 27%;\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        .details{\n");
      out.write("            width: 73%;\n");
      out.write("            display: inline-block;\n");
      out.write("            height: 100%;\n");
      out.write("            position: relative;\n");
      out.write("        }\n");
      out.write("         .subtitle{\n");
      out.write("            font-size: 20px;\n");
      out.write("            color: #999;\n");
      out.write("        }\n");
      out.write("        .title span{\n");
      out.write("            text-transform: uppercase;\n");
      out.write("                 \n");
      out.write("         font-size: 80px;\n");
      out.write("        font-weight: 900;\n");
      out.write("    color:white;\n");
      out.write("    display: block;\n");
      out.write("           \n");
      out.write("        }\n");
      out.write("       \n");
      out.write("        .information{\n");
      out.write("            \n");
      out.write("            margin-top: 20px;\n");
      out.write("                 font-family: Poppins;\n");
      out.write("         font-size: 20px;\n");
      out.write("        font-weight: 600;\n");
      out.write("        height: 100%;\n");
      out.write("    color:black;\n");
      out.write("    display: block;\n");
      out.write("        }\n");
      out.write("        .padding{\n");
      out.write("             padding-top: 5px;\n");
      out.write("            padding-left: 15px;\n");
      out.write("            padding-right: 15px;\n");
      out.write("        }\n");
      out.write("        .info{\n");
      out.write("            \n");
      out.write("            background-color: white;\n");
      out.write("            height: 340px;\n");
      out.write("            width: 50%;\n");
      out.write("            float: left;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        .shareButton,.shareEmail{\n");
      out.write("                    font-family: Poppins;\n");
      out.write("         font-size: 20px;\n");
      out.write("        font-weight: 600;\n");
      out.write("        color:black;\n");
      out.write("        }\n");
      out.write("                .overview {\n");
      out.write("                  font-family: Poppins;  \n");
      out.write("               font-size: 20px;\n");
      out.write("        font-weight: 600;\n");
      out.write("        color: black;\n");
      out.write("        }\n");
      out.write("        .overviewSpan{\n");
      out.write("            font-size: 20px;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        .performance{\n");
      out.write("            \n");
      out.write("            margin-left: 10px;\n");
      out.write("            background-color: white;\n");
      out.write("            height: 340px;\n");
      out.write("            width: 47%;\n");
      out.write("            display: inline-block;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("      \n");
      out.write("            .trailer{\n");
      out.write("            height: 500px;\n");
      out.write("        }\n");
      out.write("        /*rating*/\n");
      out.write("        @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);\n");
      out.write("fieldset, label { margin: 0; padding: 0; }\n");
      out.write("h1 { font-size: 1.5em; margin: 10px; }\n");
      out.write("\n");
      out.write("/****** Style Star Rating Widget *****/\n");
      out.write("\n");
      out.write(".rating { \n");
      out.write("  border: none;\n");
      out.write("  float: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".rating > input { display: none; } \n");
      out.write(".rating > label:before { \n");
      out.write("  margin: 5px;\n");
      out.write("  font-size: 1.25em;\n");
      out.write("  font-family: FontAwesome;\n");
      out.write("  display: inline-block;\n");
      out.write("  content: \"\\f005\";\n");
      out.write("}\n");
      out.write("\n");
      out.write(".rating > .half:before { \n");
      out.write("  content: \"\\f089\";\n");
      out.write("  position: absolute;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".rating > label { \n");
      out.write("  color: #ddd; \n");
      out.write(" float: right; \n");
      out.write("}\n");
      out.write("\n");
      out.write("/***** CSS Magic to Highlight Stars on Hover *****/\n");
      out.write("\n");
      out.write(".rating > input:checked ~ label, /* show gold star when clicked */\n");
      out.write(".rating:not(:checked) > label:hover, /* hover current star */\n");
      out.write(".rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */\n");
      out.write("\n");
      out.write(".rating > input:checked + label:hover, /* hover current star when changing rating */\n");
      out.write(".rating > input:checked ~ label:hover,\n");
      out.write(".rating > label:hover ~ input:checked ~ label, /* lighten current selection */\n");
      out.write(".rating > input:checked ~ label:hover ~ label { color: #FFED85;  } \n");
      out.write("   /*// navbar css*/\n");
      out.write(".navig{\n");
      out.write("    width: 100%;\n");
      out.write("    position: absolute;\n");
      out.write("    z-index: 9999;\n");
      out.write("    background-color: transparent;\n");
      out.write("    margin-top: 20px;\n");
      out.write("}\n");
      out.write(".navig{\n");
      out.write("    background-color: transparent !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".actualnav ul{\n");
      out.write("    margin-right: 30px;\n");
      out.write("    float: right;\n");
      out.write("    display:inline;\n");
      out.write("    height: 50px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".actualnav li{color:white !important;\n");
      out.write("   font-weight: 600;\n");
      out.write("   font-size: 23px;\n");
      out.write("    margin-left: 30px;\n");
      out.write("    display: inline-block;\n");
      out.write("    position: relative;   \n");
      out.write("    \n");
      out.write("    \n");
      out.write("}\n");
      out.write(".notification {\n");
      out.write("    color: white;\n");
      out.write("  text-decoration: none;\n");
      out.write("  padding: 11px 20px;\n");
      out.write("  position: relative;\n");
      out.write("  display: inline-block;\n");
      out.write("  border-radius: 2px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".notification:hover {\n");
      out.write("  background: white;\n");
      out.write("  color:black;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".notification .badge {\n");
      out.write("  position: absolute;\n");
      out.write("  top: -10px;\n");
      out.write("  right: -10px;\n");
      out.write("  padding: 5px 10px;\n");
      out.write("  border-radius: 50%;\n");
      out.write("  background: red;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(".slick-prev:after {\n");
      out.write("  content: \"<\";\n");
      out.write("  color: red;\n");
      out.write("  font-size: 30px;\n");
      out.write("  margin-left: -5px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".slick-next:before {\n");
      out.write("  content: \">\";\n");
      out.write("  color: white;\n");
      out.write("  font-size: 30px;\n");
      out.write("}\n");
      out.write("        </style> \n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"navig\">\n");
      out.write("    <div class=\"logo\">\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("    <div class=\"actualnav\" style=\"float: right;\">\n");
      out.write("        <ul>\n");
      out.write("            <li>Home</li>\n");
      out.write("            <li>About</li>\n");
      out.write("            <li><a href=\"sharedMovies.jsp\" class=\"notification\">\n");
      out.write("  <span>Inbox</span>\n");
      out.write("  <span class=\"badge\">");
      out.print(counter);
      out.write("</span>\n");
      out.write("</a></li>\n");
      out.write("            <li>Contact</li>\n");
      out.write("            <li>Logout</li>\n");
      out.write("            \n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("        <div class=\"jumbotron1\" style=\"width: 100%;\">\n");
      out.write("            <div class=\"r1\" style=\"margin-right: 100px; margin-left: 100px\">\n");
      out.write("          <div class=\"poster\">");
rst.absolute(1);
      out.write("\n");
      out.write("              <a href=\"#\" class=\"hvr-bob\"><img height=\"460px\" src=\"https://image.tmdb.org/t/p/w400");
      out.print(rst.getString("poster_path"));
      out.write("\"></a>\n");
      out.write("            </div>           \n");
      out.write("            <div class=\"details\">\n");
      out.write("                <div class=\"title\">\n");
      out.write("                    <span class=\"hvr-underline-from-left\">");
      out.print(rst.getString("original_title"));
      out.write("</span>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                    <span class=\"subtitle\">90min . ");
      out.print(rst.getString("original_language"));
      out.write("</span>\n");
      out.write("               \n");
      out.write("                <div class=\"information\">\n");
      out.write("                    <div class=\"info\">\n");
      out.write("                        <div style=\"text-align: center; background-color: orange; display: block;\"><span style=\"text-transform: uppercase; font-size: 25px;\">Details</span></div>\n");
      out.write("                        <div class=\"release padding\"><span>Release Date:</span><span style=\"float: right;\">");
      out.print(rst.getString("release_date"));
      out.write("</span></div>\n");
      out.write("                    <div class=\"popularity padding\"><span>Popularity:</span><span style=\"float: right;\">");
      out.print(rst.getString("popularity"));
      out.write("</span></div>\n");
      out.write("                    <div class=\"status padding\"><span>Status:</span><span style=\"float: right;\">");
      out.print(rst.getString("status"));
      out.write("</span></div>\n");
      out.write("                    <span class=\"padding\">Share the movie with a Friend</span>\n");
      out.write("                    \n");
      out.write("                    <form action=\"share.jsp\" method=\"post\">\n");
      out.write("                    <input type=\"hidden\" name=\"original_title\" value=\"");
      out.print(originalTitle);
      out.write("\">\n");
      out.write("                    <input class=\"shareEmail padding\" type=\"email\" placeholder=\"Enter email\" name=\"shareTo\">\n");
      out.write("                    <input class=\"shareEmail padding\" type=\"text\" placeholder=\"Quick Message\" name=\"quickMessage\">\n");
      out.write("                    <input class=\"shareButton\" type=\"submit\" value=\"share\">\n");
      out.write("                    </form>\n");
      out.write("                    </div>\n");
      out.write("                    <!--performance-->\n");
      out.write("                    ");

                    float voteAverage=Float.parseFloat(rst.getString("vote_average"));
                    float voteAverageWidth=voteAverage*10;
                    
                   float vCnt=Float.parseFloat(rst.getString("vote_count"));
                   float vCntW=(vCnt/14075)*100;
                   int vCount=Math.round(vCntW);
                    
      out.write("\n");
      out.write("                    <div class=\"performance\">\n");
      out.write("                        \n");
      out.write("                        <div style=\"text-align: center; background-color: orange; display: block;\"><span style=\"text-transform: uppercase; font-size: 25px;\">Performance</span></div>\n");
      out.write("                        <div class=\"performance-cnt padding\">\n");
      out.write("                            \n");
      out.write("                         <div class=\"progress\" style=\"width:80%; float: left;\">\n");
      out.write("                        <div class=\"progress-bar progress-bar-striped active\" style=\"width:");
      out.print(voteAverageWidth);
      out.write("%\">");
      out.print(voteAverageWidth);
      out.write("%</div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                     <div class=\"progress\" style=\"width:80%; float: left;\">\n");
      out.write("                        <div class=\"progress-bar progress-bar-striped active\" style=\"width:");
      out.print(vCount);
      out.write("%\">\n");
      out.write("                            ");
      out.print(vCount);
      out.write("%</div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"progress\" style=\"width:80%; float: left;\">\n");
      out.write("                        <div class=\"progress-bar progress-bar-striped active\" style=\"width:");
      out.print(vCount);
      out.write("%\">\n");
      out.write("                            ");
      out.print(vCount);
      out.write("%</div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"progress\" style=\"width:80%; float: left;\">\n");
      out.write("                        <div class=\"progress-bar progress-bar-striped active\" style=\"width:");
      out.print(vCount);
      out.write("%\">\n");
      out.write("                            ");
      out.print(vCount);
      out.write("%</div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("           </div>\n");
      out.write("                     \n");
      out.write("                   <div class=\"r2\" style=\"margin-right: 100px; margin-left: 100px\">\n");
      out.write("                         \n");
      out.write("                       <div class=\"overview\" style=\"margin-top: 30px; background-color: white;\">\n");
      out.write("                             <div style=\"font-weight: 600; text-align: center; background-color: orange; display: block;\"><span style=\"text-transform: uppercase; font-size: 25px;\" >OVERVIEW</span></div>\n");
      out.write("                           <p class=\"overviewSpan\">");
      out.print(rst.getString("overview"));
      out.write("</p>\n");
      out.write("                    </div>\n");
      out.write("                   </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <div class=\"r3\" style=\"margin-right: 100px; margin-left: 100px\">\n");
      out.write("                         <div class=\"ratings\">\n");
      out.write("                    <form action=\"insertRatings.jsp\" method=\"post\">\n");
      out.write("                    <fieldset class=\"rating\">\n");
      out.write("    <input type=\"radio\" id=\"star5\" name=\"rating\" value=\"5\" /><label class = \"full\" for=\"star5\" title=\"Awesome - 5 stars\"></label>\n");
      out.write("    <input type=\"radio\" id=\"star4half\" name=\"rating\" value=\"5\" /><label class=\"half\" for=\"star4half\" title=\"Pretty good - 4.5 stars\"></label>\n");
      out.write("    <input type=\"radio\" id=\"star4\" name=\"rating\" value=\"4\" /><label class = \"full\" for=\"star4\" title=\"Pretty good - 4 stars\"></label>\n");
      out.write("    <input type=\"radio\" id=\"star3half\" name=\"rating\" value=\"4\" /><label class=\"half\" for=\"star3half\" title=\"Meh - 3.5 stars\"></label>\n");
      out.write("    <input type=\"radio\" id=\"star3\" name=\"rating\" value=\"3\" /><label class = \"full\" for=\"star3\" title=\"Meh - 3 stars\"></label>\n");
      out.write("    <input type=\"radio\" id=\"star2half\" name=\"rating\" value=\"3\" /><label class=\"half\" for=\"star2half\" title=\"Kinda bad - 2.5 stars\"></label>\n");
      out.write("    <input type=\"radio\" id=\"star2\" name=\"rating\" value=\"2\" /><label class = \"full\" for=\"star2\" title=\"Kinda bad - 2 stars\"></label>\n");
      out.write("    <input type=\"radio\" id=\"star1half\" name=\"rating\" value=\"2\" /><label class=\"half\" for=\"star1half\" title=\"Meh - 1.5 stars\"></label>\n");
      out.write("    <input type=\"radio\" id=\"star1\" name=\"rating\" value=\"1\" /><label class = \"full\" for=\"star1\" title=\"Sucks big time - 1 star\"></label>\n");
      out.write("    <input type=\"radio\" id=\"starhalf\" name=\"rating\" value=\"1\" /><label class=\"half\" for=\"starhalf\" title=\"Sucks big time - 0.5 stars\"></label>\n");
      out.write("    \n");
      out.write("</fieldset>\n");
      out.write("                        <input type=\"hidden\" value=");
      out.print(movieId);
      out.write(" name=\"movieId\">\n");
      out.write("                        <input type=\"hidden\" value=");
      out.print(originalTitle);
      out.write(" name=\"original_title\">\n");
      out.write("    <input type=\"submit\" value=\"Rate\">\n");
      out.write("                    </form>\n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("                   </div>\n");
      out.write("    \n");
      out.write("    ");

    
    
    
       try{
        
       PreparedStatement pst2 = conn.prepareStatement("select * from youtube where title like ?");
        
        pst2.setString(1, "%"+originalTitle +"%");
        ResultSet rst2 = pst2.executeQuery();
      rst2.absolute(1);
      
      out.print(rst2.getString("youtubeId"));

      String play=rst2.getString("youtubeId");
 

      out.write("\n");
      out.write("    <div class=\"watchTrailer\">\n");
      out.write("        <iframe  style=\"margin-left: 200px;\"width=\"1120\" height=\"515\" src=\"https://www.youtube.com/embed/");
      out.print(play);
      out.write("?start=7&autoplay=1&showinfo=0&iv_load_policy=3&rel=0\"\n");
      out.write("                frameborder=\"0\"\n");
      out.write("                allowfullscreen\"></iframe>\n");
      out.write("    </div>\n");

  }
    catch(Exception r){
            out.print(r);
            }

      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div style=\"height: 200px;\">\n");
      out.write("            <canvas id=\"doughnut-chart\" width=\"800\" height=\"450\"></canvas>\n");
      out.write("            <script>\n");
      out.write("new Chart(document.getElementById(\"doughnut-chart\"), {\n");
      out.write("    type: 'doughnut',\n");
      out.write("    data: {\n");
      out.write("      labels: [\"Africa\", \"Asia\", \"Europe\", \"Latin America\", \"North America\"],\n");
      out.write("      datasets: [\n");
      out.write("        {\n");
      out.write("          label: \"Population (millions)\",\n");
      out.write("          backgroundColor: [\"#3e95cd\", \"#8e5ea2\",\"#3cba9f\",\"#e8c3b9\",\"#c45850\"],\n");
      out.write("          data: [2478,5267,734,784,433]\n");
      out.write("        }\n");
      out.write("      ]\n");
      out.write("    },\n");
      out.write("    options: {\n");
      out.write("      title: {\n");
      out.write("        display: true,\n");
      out.write("        text: 'Predicted world population (millions) in 2050'\n");
      out.write("      }\n");
      out.write("    }\n");
      out.write("    });</script>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"height: 400px; margin-right: 200px; margin-left: 200px;\">\n");
      out.write("              <div id=\"chartContainer\" style=\"height: 370px; width: 100%;\"></div>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("        <script>\n");
      out.write("window.onload = function () {\n");
      out.write("\n");
      out.write("var chart = new CanvasJS.Chart(\"chartContainer\", {\n");
      out.write("\t\n");
      out.write("\tanimationEnabled: true,\n");
      out.write("\ttitle:{\n");
      out.write("\t\ttext: \"State Operating Funds\"\n");
      out.write("\t},\n");
      out.write("\tlegend:{\n");
      out.write("\t\tcursor: \"pointer\",\n");
      out.write("\t\titemclick: explodePie\n");
      out.write("\t},\n");
      out.write("\tdata: [{\n");
      out.write("\t\ttype: \"pie\",\n");
      out.write("\t\tshowInLegend: true,\n");
      out.write("                \n");
      out.write("\t\ttoolTipContent: \"{name}: <strong>{y}%</strong>\",\n");
      out.write("\t\tindexLabel: \"{name} - {y}%\",\n");
      out.write("\t\tdataPoints: [\n");
      out.write("\t\t\t{ y: 26, name: \"School Aid\", exploded: true },\n");
      out.write("\t\t\t{ y: 20, name: \"Medical Aid\" },\n");
      out.write("\t\t\t{ y: 5, name: \"Debt/Capital\" },\n");
      out.write("\t\t\t{ y: 3, name: \"Elected Officials\" },\n");
      out.write("\t\t\t{ y: 7, name: \"University\" },\n");
      out.write("\t\t\t{ y: 17, name: \"Executive\" },\n");
      out.write("\t\t\t{ y: 22, name: \"Other Local Assistance\"}\n");
      out.write("\t\t]\n");
      out.write("\t}]\n");
      out.write("});\n");
      out.write("chart.render();\n");
      out.write("}\n");
      out.write("\n");
      out.write("function explodePie (e) {\n");
      out.write("\tif(typeof (e.dataSeries.dataPoints[e.dataPointIndex].exploded) === \"undefined\" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {\n");
      out.write("\t\te.dataSeries.dataPoints[e.dataPointIndex].exploded = true;\n");
      out.write("\t} else {\n");
      out.write("\t\te.dataSeries.dataPoints[e.dataPointIndex].exploded = false;\n");
      out.write("\t}\n");
      out.write("\te.chart.render();\n");
      out.write("\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("        <!--//core-->\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");

}
else{

      out.write("\n");
      out.write("<script>window.location='login/index.html';</script>\n");

}

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
