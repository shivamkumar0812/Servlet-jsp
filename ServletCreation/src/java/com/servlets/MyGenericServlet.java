//Creating this servlet program by extending Generic Servlet
//which have 4 method's bodies.
package com.servlets;

import jakarta.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class MyGenericServlet extends GenericServlet{
   

    @Override
    public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
        System.out.println("Servicing using generic servlet...");
        resp.setContentType("text/html");
        PrintWriter pw = resp.getWriter();
        pw.println("<h1>This servlet is created using Generic Servlet</h1>");
    }
    
}
