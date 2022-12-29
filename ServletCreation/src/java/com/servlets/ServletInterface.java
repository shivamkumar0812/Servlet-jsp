//Creating this servlet program by implementing servlet library
//and then overriding all the 5 methods.
package com.servlets;


import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import java.util.Date;

public class ServletInterface implements Servlet{
    //Life Cycle Methods
    ServletConfig conf;
    public void init(ServletConfig conf){
       this.conf = conf;
        System.out.println("Creating servlet object");
    }
    public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException{
        System.out.println("Servicing....");
        //Creating Response type
        resp.setContentType("text/html");
        PrintWriter pw = resp.getWriter();
        
        pw.println("<h1>Hey, this is response of servlet...</h1>"
                + "<h1>Today's date and time is: " + new Date().toString()+"</h1>");
        
    }
    public void destroy(){
        System.out.println("Destroying Servlet Object");
    }
    
    //Non-Life Cycle Methods
    public ServletConfig getServletConfig(){
        return this.conf;
    }
    public String getServletInfo(){
        return "This Servlet is created by Shivam Kumar";
    }
}
