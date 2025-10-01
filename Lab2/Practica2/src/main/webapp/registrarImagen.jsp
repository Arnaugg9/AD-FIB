<%-- 
    Document   : registrarImagen
    Created on : 17 sept 2025, 16:10:39
    Author     : alumne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Imagen</title>
    </head>
    <body>
        <h1>Registrar Imagen: </h1>
        <div>
            <form action = "registrarImagen" method = "POST">
                <table>
                    <tr>
                        <td>Titulo:</td>
                        <td><input type="text" name="title"></td>     
                    </tr>
                    <tr>
                        <td>Descripcion:</td>
                        <td><input type="text" name="description"></td>     
                    </tr>
                    <tr>
                        <td>Palabras clave:</td>
                        <td><input type="text" name="keywords"></td>     
                    </tr>
                    <tr>
                        <td>Autor: </td>
                        <td><input type="text" name="author"></td>     
                    </tr>
                    <tr>
                        <td>Fecha de captura: </td>
                        <td><input type="text" name="date"></td>     
                    </tr>
                    <tr>
                        <td>Imagen: </td>
                        <td><input type="image" name="image"></td>     
                    </tr>
                    <tr><td><br></td></tr>
                    <tr>
                        <td><input type="submit" value="Registrar"></td>
                    </tr>
                </table>
            </form>
        </div>
        
        <c:if test="${not empty errorMessage}">
            <div style="color:red;">${errorMessage}</div><br>
        </c:if>
    
        <div>
            <Button><a href="menu.jsp">Volver al menu</a></button>
        </div>
    </body>
</html>
