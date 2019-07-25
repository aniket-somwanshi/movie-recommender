package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<!--        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">-->\n");
      out.write(" \n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("            <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <title>Sign Up </title>\n");
      out.write("\n");
      out.write("    <!-- Font Icon -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Main css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/signup.css\">\n");
      out.write(" \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <div class=\"main\">\n");
      out.write("\n");
      out.write("        <section class=\"signup\">\n");
      out.write("            <!-- <img src=\"images/signup-bg.jpg\" alt=\"\"> -->\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"signup-content\">\n");
      out.write("                    <form action=\"RegisterController\" method=\"POST\" id=\"signup-form\" class=\"signup-form\">\n");
      out.write("                        <h2 class=\"form-title\">Create account</h2>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-input\" name=\"username\" id=\"username\" placeholder=\"Enter Username\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"email\" class=\"form-input\" name=\"email\" id=\"email\" placeholder=\"Your Email\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-input\" name=\"country\" id=\"email\" placeholder=\"Country\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-input\" name=\"contact\" id=\"email\" placeholder=\"contact no\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"number\" class=\"form-input\" name=\"age\" id=\"email\" placeholder=\"Your age\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-input\" name=\"password\" id=\"password\" placeholder=\"Password\"/>\n");
      out.write("                            <span toggle=\"#password\" class=\"zmdi zmdi-eye field-icon toggle-password\"></span>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"password\" class=\"form-input\" name=\"re_password\" id=\"re_password\" placeholder=\"Repeat your password\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"checkbox\" name=\"agree-term\" id=\"agree-term\" class=\"agree-term\" />\n");
      out.write("                            <label for=\"agree-term\" class=\"label-agree-term\"><span><span></span></span>I agree all statements in  <a href=\"#\" class=\"term-service\">Terms of service</a></label>\n");
      out.write("                        </div>\n");
      out.write("                     \n");
      out.write("     \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"submit\" name=\"submit\" id=\"submit\" class=\"form-submit\" value=\"Sign up\"/>\n");
      out.write("                        </div>\n");
      out.write("                   \n");
      out.write("                    </form>\n");
      out.write("             \n");
      out.write("                    <p class=\"loginhere\">\n");
      out.write("                        Have already an account ? <a href=\"login.html\" class=\"loginhere-link\">Login here</a>\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- JS -->\n");
      out.write("    <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
