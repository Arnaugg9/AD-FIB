<%-- 
    Document   : login
    Created on : 17 sept 2025, 15:54:04
    Author     : alumne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Página de login</h1>
        <form action="login" method="POST">
            <label>Usuario:</label>
            <input type="text" name="username" required><br><br>
            
            <label>Contraseña:</label>
            <input type="text" name="password" required><br><br>
            <input type="submit" value="Login">
        </form>
    </body>
</html>
