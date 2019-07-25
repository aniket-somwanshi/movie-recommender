package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import Connection.Config;

public final class mySpace_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");

    String email = session.getAttribute("email").toString();
    Connection conn = Config.Config();
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


      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://canvasjs.com/assets/script/canvasjs.min.js\"></script>   \n");
      out.write("        <!-- jQuery library -->\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Latest compiled JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- jQuery library -->\n");
      out.write("\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js\"></script>\n");
      out.write("        <!-- Latest compiled JavaScript -->\n");
      out.write("\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Catamaran' rel='stylesheet'>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.1/css/all.css\" integrity=\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\" crossorigin=\"anonymous\">\n");
      out.write("        <style>\n");
      out.write("            @font-face {\n");
      out.write("                font-family:\"Staatliches\";\n");
      out.write("                src: url(\"fonts/Staatliches-Regular.ttf\") format(\"truetype\");\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-color: #182130;\n");
      out.write("                font-family: Staatliches;\n");
      out.write("            }\n");
      out.write("            .jumbo{\n");
      out.write("                margin-left: 50px;\n");
      out.write("                margin-right: 50px;\n");
      out.write("            }\n");
      out.write("            .r{\n");
      out.write("\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("            .b{\n");
      out.write("                text-align: center;\n");
      out.write("                width: 25%;\n");
      out.write("                display: inline-block;\n");
      out.write("                position: relative;\n");
      out.write("                padding-right: 22px;\n");
      out.write("            }\n");
      out.write("            .b4{text-align: center;\n");
      out.write("                width: 24.4%;\n");
      out.write("                display: inline-block;\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .bl{\n");
      out.write("                height: 100px;\n");
      out.write("                border-radius: 10px;\n");
      out.write("                color:white; \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .pie-text{border-top-left-radius: 25px;\n");
      out.write("                      border-top-right-radius: 25px;\n");
      out.write("                      background-color: white;\n");
      out.write("                      margin-top: 22px;\n");
      out.write("                      color:darkslategray;\n");
      out.write("                      letter-spacing: 1px;\n");
      out.write("                      word-spacing: 2px;\n");
      out.write("                      font-size: 70px;\n");
      out.write("                      padding: 22px;\n");
      out.write("            }\n");
      out.write("            .welcome {\n");
      out.write("                margin-top: 22px;\n");
      out.write("                color:white;\n");
      out.write("                letter-spacing: 1px;\n");
      out.write("                word-spacing: 2px;\n");
      out.write("                font-size: 30px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .profile{\n");
      out.write("                height: 400px;\n");
      out.write("                background-color: white;\n");
      out.write("                border-radius: 25px;\n");
      out.write("                margin-top: 22px;\n");
      out.write("                margin-right: 22px;\n");
      out.write("            }\n");
      out.write("            .pie-pie{border-bottom-left-radius: 25px;\n");
      out.write("                     border-bottom-right-radius: 25px;\n");
      out.write("                     height: 600px;\n");
      out.write("                     width: 100%;\n");
      out.write("                     overflow: hidden;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .top5{margin-top: 22px;\n");
      out.write("                  padding: 22px;\n");
      out.write("                  font-family: \"Staatliches\",sans-serif;\n");
      out.write("\n");
      out.write("\n");
      out.write("                  background-color: white;\n");
      out.write("\n");
      out.write("\n");
      out.write("                  height: 300px;\n");
      out.write("                  border-radius: 20px;\n");
      out.write("            }\n");
      out.write("            .top5-title{\n");
      out.write("                font-family: \"Staatliches\",sans-serif;\n");
      out.write("                color: #darkslategray;\n");
      out.write("                font-size: 75px;\n");
      out.write("                letter-spacing: 1px;\n");
      out.write("                word-spacing: 2px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .list{\n");
      out.write("                font-family: \"Staatliches\",sans-serif;\n");
      out.write("                color: #182130;\n");
      out.write("                font-size: 35px;\n");
      out.write("                letter-spacing: 1px;\n");
      out.write("                word-spacing: 2px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .double{width: 1100px;\n");
      out.write("                    height:500px; \n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .col-lg-4,.col-lg-6,.col-lg-8{\n");
      out.write("                padding: 0 !important;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"jumbo\">\n");
      out.write("            <div class=\"r\">\n");
      out.write("                <div class=\"b\">\n");
      out.write("                    <div class=\"bl\" style=\"background-color: #6201ED;\">\n");
      out.write("                        <div class=\"bl-r\" style=\"width: 100%;\">\n");
      out.write("\n");
      out.write("                            <div class=\"block-title\" style=\"width: 60%; float: left; display: inline-block;\"><h1>Total Ratings</h1></div>\n");
      out.write("                            <div class=\"block-number\" style=\"width: 40%; display: inline-block;\"><h1>");
      out.print(ratings);
      out.write("</h1></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"b\">\n");
      out.write("                    <div class=\"bl\" style=\"background-color: #29C0B1;\" >\n");
      out.write("                        <div class=\"bl-r\" style=\"width: 100%;\"> \n");
      out.write("                            <div class=\"block-title\" style=\"width: 60%; float: left; display: inline-block;\"><h1>Excellent Remarks</h1></div>\n");
      out.write("                            <div class=\"block-number\" style=\"width: 40%; display: inline-block;\"><h1>");
      out.print(rating5);
      out.write("</h1></div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"b\">\n");
      out.write("                    <div class=\"bl\"  style=\"background-color: #EBB109;\">\n");
      out.write("                        <div class=\"bl-r\" style=\"width: 100%;\"> \n");
      out.write("                            <div class=\"block-title\" style=\"width: 60%; float: left; display: inline-block;\"><h1>Aweful Remarks</h1></div>\n");
      out.write("                            <div class=\"block-number\" style=\"width: 40%; display: inline-block;\"><h1>");
      out.print(r2);
      out.write("</h1></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"b4\">\n");
      out.write("                    <div class=\"bl\" style=\"background-color: #8BC34A;\">\n");
      out.write("                        <div class=\"bl-r\" style=\"width: 100%;\"> \n");
      out.write("                            <div class=\"block-title\" style=\"width: 60%; float: left; display: inline-block;\"><h1>Total Shares</h1></div>\n");
      out.write("                            <div class=\"block-number\" style=\"width: 40%; display: inline-block;\"><h1>");
      out.print(shared);
      out.write("</h1></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"welcome\">\n");
      out.write("                <span>Welcome to MySpace. A place where you can analyze your all time favorites, Discover your own movie taste and much more!\n");
      out.write("                    We enable you to analyze your activities and provide precious insights.</span>\n");
      out.write("            </div>\n");
      out.write("            <section class=\"pie\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-4\">\n");
      out.write("                        <div class=\"profile\">\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-8\">\n");
      out.write("                        <div class=\"pie-text\">\n");
      out.write("                            <span>This is the Analysis of your most Favorite Genres</span>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"pie-pie\">\n");
      out.write("                            <div id=\"chartContainer\" style=\"height: 600px; width: 100%; border-radius: 35px;\"></div>\n");
      out.write("                            <script>\n");
      out.write("                                window.onload = function () {\n");
      out.write("\n");
      out.write("                                    var a =");
out.print(adv);
      out.write(";\n");
      out.write("                                    var ac =");
out.print(action);
      out.write(";\n");
      out.write("                                    var an =");
out.print(animation);
      out.write(";\n");
      out.write("                                    var h =");
out.print(horror);
      out.write(";\n");
      out.write("                                    var r =");
out.print(romance);
      out.write(";\n");
      out.write("                                    var c =");
out.print(comedy);
      out.write(";\n");
      out.write("\n");
      out.write("                                    CanvasJS.addColorSet(\"greenShades\",\n");
      out.write("                                            [//colorSet Array\n");
      out.write("\n");
      out.write("                                                \"#124F7B\",\n");
      out.write("                                                \"#8CBE21\",\n");
      out.write("                                                \"#45BBC8\",\n");
      out.write("                                                \"#E54253\",\n");
      out.write("                                                \"#F9B226\",\n");
      out.write("                                                \"#91143C\",\n");
      out.write("                                            ]);\n");
      out.write("\n");
      out.write("                                    var chart = new CanvasJS.Chart(\"chartContainer\", {\n");
      out.write("                                        colorSet: \"greenShades\",\n");
      out.write("                                        options: {\n");
      out.write("                                            maintainAspectRatio: false\n");
      out.write("                                        },\n");
      out.write("                                        animationEnabled: true,\n");
      out.write("\n");
      out.write("                                        legend: {\n");
      out.write("                                            cursor: \"pointer\",\n");
      out.write("                                            itemclick: explodePie\n");
      out.write("                                        },\n");
      out.write("\n");
      out.write("                                        data: [{\n");
      out.write("                                                type: \"pie\",\n");
      out.write("                                                showInLegend: true,\n");
      out.write("\n");
      out.write("                                                toolTipContent: \"{name}: <strong>{y}%</strong>\",\n");
      out.write("                                                indexLabel: \"{name} - {y}%\",\n");
      out.write("                                                dataPoints: [\n");
      out.write("                                                    {y: a, name: \"Adventure\", exploded: true},\n");
      out.write("                                                    {y: an, name: \"Animation\"},\n");
      out.write("                                                    {y: h, name: \"Horror\"},\n");
      out.write("                                                    {y: r, name: \"Romance\"},\n");
      out.write("                                                    {y: ac, name: \"Action\"},\n");
      out.write("                                                    {y: c, name: \"Comedy\"},\n");
      out.write("                                                ]\n");
      out.write("                                            }]\n");
      out.write("                                    });\n");
      out.write("                                    chart.render();\n");
      out.write("                                }\n");
      out.write("\n");
      out.write("                                function explodePie(e) {\n");
      out.write("                                    if (typeof (e.dataSeries.dataPoints[e.dataPointIndex].exploded) === \"undefined\" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {\n");
      out.write("                                        e.dataSeries.dataPoints[e.dataPointIndex].exploded = true;\n");
      out.write("                                    } else {\n");
      out.write("                                        e.dataSeries.dataPoints[e.dataPointIndex].exploded = false;\n");
      out.write("                                    }\n");
      out.write("                                    e.chart.render();\n");
      out.write("\n");
      out.write("                                }\n");
      out.write("                            </script>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("  ");

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
               // to get movie names
                int mLimit=0;
                ResultSet rsx=null;
                while(mLimit<5)
                {
                    String sqlx = "select original_title from moviesmetadata where id=?";
                PreparedStatement psx = conn.prepareStatement(sqlx);
                psx.setInt(1, aM[mLimit]);
                 rsx=psx.executeQuery();
                 mLimit++;
                }
//                
//                    
//                
//                
//                
//                
//                String sql2 = "select ratings from ratings where movieId=?";
//                PreparedStatement ps2 = conn.prepareStatement(sql2);
//                ps2.setInt(1, aM[0]);
//                ResultSet rst2 = ps2.executeQuery();
//                while (rst2.next()) {
//                    wR[0]=wR[0]+rst2.getDouble("ratings");
//                    wR0++;
//                }
//                wR[0]=wR[0]/wR0;
//                //iterate
//                    String sql3 = "select ratings from ratings where movieId=?";
//                PreparedStatement ps3 = conn.prepareStatement(sql3);
//                ps3.setInt(1, aM[1]);
//                ResultSet rst3 = ps3.executeQuery();
//                while (rst3.next()) {
//                    wR[1]=wR[1]+rst3.getDouble("ratings");
//                    wR1++;
//                }
//                wR[1]=wR[1]/wR1;
//                //iterate
//                    String sql4 = "select ratings from ratings where movieId=?";
//                PreparedStatement ps4 = conn.prepareStatement(sql4);
//                ps4.setInt(1, aM[2]);
//                ResultSet rst4 = ps4.executeQuery();
//                while (rst4.next()) {
//                    wR[2]=wR[2]+rst4.getDouble("ratings");
//                    wR2++;
//                }
//                wR[2]=wR[2]/wR2;
//                //iterate
//                    String sql5 = "select ratings from ratings where movieId=?";
//                PreparedStatement ps5 = conn.prepareStatement(sql5);
//                ps5.setInt(1, aM[3]);
//                ResultSet rst5 = ps5.executeQuery();
//                while (rst5.next()) {
//                    wR[3]=wR[3]+rst5.getDouble("ratings");
//                    wR3++;
//                }
//                wR[3]=wR[3]/wR3;
//                //iterate
//                    String sql6 = "select ratings from ratings where movieId=?";
//                PreparedStatement ps6 = conn.prepareStatement(sql6);
//                ps6.setInt(1, aM[4]);
//                ResultSet rst6 = ps6.executeQuery();
//                while (rst6.next()) {
//                    wR[4]=wR[4]+rst6.getDouble("ratings");
//                    wR4++;
//                }
//                wR[4]=wR[4]/wR4;
//                //iterate
//                

            
      out.write("\n");
      out.write("            <section class=\"top\">\n");
      out.write("                <div class=\"top5\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-6 top5-title\"><span>Aniket's Top 5 movies most recently:</span></div>\n");
      out.write("                        <div class=\"col-lg-6\" top5-list>\n");
      out.write("                 ");

                  while(rsx.next()){            
      out.write("  \n");
      out.write("                  <div class=\"list\"><span>");
      out.print(rsx.getString("original_title"));
      out.write("</span>\n");
      out.write("                      ");
}
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <section class=\"double\">\n");
      out.write("                <canvas id=\"bar-chart-grouped\" style=\"background-color: white;\"></canvas>\n");
      out.write("                <script>new Chart(document.getElementById(\"bar-chart-grouped\"), {\n");
      out.write("                        type: 'bar',\n");
      out.write("                        options: {\n");
      out.write("                            maintainAspectRatio: false\n");
      out.write("                        },\n");
      out.write("                        data: {\n");
      out.write("                            labels: [\"1900\", \"1950\", \"1999\", \"2050\", \"3212\"],\n");
      out.write("                            datasets: [\n");
      out.write("                                {\n");
      out.write("                                    label: \"Aniket\",\n");
      out.write("                                    backgroundColor: \"#78AD27\",\n");
      out.write("                                    data: [");
out.print(aR[0]);
      out.write(',');
      out.write(' ');
out.print(aR[1]);
      out.write(',');
      out.write(' ');
out.print(aR[2]);
      out.write(',');
      out.write(' ');
out.print(aR[3]);
      out.write(',');
      out.write(' ');
out.print(aR[4]);
      out.write("]\n");
      out.write("                                }, {\n");
      out.write("                                    label: \"Global\",\n");
      out.write("                                    backgroundColor: \"#0DACC2\",\n");
      out.write("                                    data: [");
out.print(wR[0]);
      out.write(',');
      out.write(' ');
out.print(wR[1]);
      out.write(',');
      out.write(' ');
out.print(wR[2]);
      out.write(',');
      out.write(' ');
out.print(wR[3]);
      out.write(',');
      out.write(' ');
out.print(wR[4]);
      out.write("]\n");
      out.write("                                }\n");
      out.write("                            ]\n");
      out.write("                        },\n");
      out.write("                        options: {\n");
      out.write("                            title: {\n");
      out.write("                                display: true,\n");
      out.write("                                text: 'Global Comparison of your ratings'\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    });\n");
      out.write("                </script>\n");
      out.write("            </section>         \n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
