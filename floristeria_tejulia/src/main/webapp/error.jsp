<%-- 
    Document   : error
    Created on : 4/09/2024, 3:55:54 p. m.
    Author     : tatia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body bgcolor="#CCCCCC">
            <font size=15 color="#000000">
            <marquee> FLORISTERIA EL JARDIN DE TEJULIA</marquee>
            </font>
       <h1>inicio de sesion</h1>
        <form action="procesar formulario" method="post" autocomplete="off" novalidate
              class=<%=request.getAttribute("errorExists")!= null ? "error-bg" : ""%>">
            <input type="text" name="usuario">
            <input type="password" name="clave">
            <input type="submit" value="ingresar " />

        </form>
        <% String error = (String)request.getAttribute("error");
        if (error != null){
                
                
        %>
        <p class=" error"><%=error%></p>
        <%
                }
        %>

    </body>
</html>

