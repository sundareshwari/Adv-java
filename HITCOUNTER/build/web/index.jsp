<%-- 
    Document   : index
    Created on : Oct 12, 2018, 3:36:42 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <% 
        int i=1;
        int j=1;
        try{
          i = Integer.parseInt( request.getSession().getAttribute("count").toString());
          i++;
        }catch(Exception e){}
                 request.getSession().setAttribute("count", i);
        
                    
          try{
              j = Integer.parseInt( request.getServletContext().getAttribute("counter").toString() );
              j++;
          }catch(Exception e)    {}
                request.getServletContext().setAttribute("counter", j);



        %>
        
        You are visitor no (sesssionwise) : <%=request.getSession().getAttribute("count")%>
                
        
        <br/>Globel visitor no :  <%=request.getServletContext().getAttribute("counter")%>
                
    </body>
</html>
