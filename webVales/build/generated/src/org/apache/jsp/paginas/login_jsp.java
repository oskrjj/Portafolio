package org.apache.jsp.paginas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("   \n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap-theme.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/bootstrap.css\"/>\n");
      out.write("       \n");
      out.write("        <style>\n");
      out.write("            body {background-color: #000\\9 ;}\n");
      out.write("            h1   {color: buttonface;}\n");
      out.write("           \n");
      out.write("        </style>\n");
      out.write("        <title>JSP Inicio</title>\n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("        <div style=\"text-align:center;\" id=\"contenido\" class=\"container\">\n");
      out.write("            \n");
      out.write("              <h1><strong>Bienvenido</strong></h1>\n");
      out.write("            <div id=\"idTransparente\" class=\"index1 container\"></div>\n");
      out.write("            <div id=\"idLogin\" class=\"index2 container\">                 \n");
      out.write("                <form action=\"../ServLogin\" method=\"POST\">\n");
      out.write("                    <div class=\"form-group container-fluid\">\n");
      out.write("                        <label>Usuario</label>\n");
      out.write("                        <input class=\"form-control\" type=\"text\" name=\"txtRutUsuario\"/>\n");
      out.write("                        <label>Contraseña</label>\n");
      out.write("                        <input class=\"form-control\" type=\"password\" name=\"txtPassword\"/>\n");
      out.write("                        <br/>\n");
      out.write("                        <input class=\"btn btn-primary\" type=\"submit\" value=\"Entrar\"/>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <a id=\"link\" href=\"\">¿Recuperar contraseña?</a>\n");
      out.write("                <div id=\"errorLogin\">\n");
      out.write("                 ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sesionErrorLogin}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("   \n");
      out.write("                </div>                \n");
      out.write("            </div> \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("     ");
 String mensaje
                    = (String) request.getAttribute("problema");
            if (mensaje != null) {
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"");
      out.print( mensaje);
      out.write("\");\n");
      out.write("        </script>\n");
      out.write("        ");
 }
      out.write("\n");
      out.write("        ");
 String mensaje2
                    = (String) request.getAttribute("error");
            if (mensaje2 != null) {
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"");
      out.print( mensaje2);
      out.write("\");\n");
      out.write("        </script>\n");
      out.write("        ");
 }
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("    <script sr c=\"../js/bootstrap.min.js\"></script>\n");
      out.write(" \n");
      out.write("    \n");
      out.write("    \n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
