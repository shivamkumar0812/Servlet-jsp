
package com.practice;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class MyHttpServlet extends HttpServlet{
    public void doGet(ServletRequest request, ServletResponse response) throws ServletException, IOException 
    {
        
        System.out.println("This is get method of http.......");
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();
        pw.println("<h1>This is heading of the Get method...<h1>");
    }
}
