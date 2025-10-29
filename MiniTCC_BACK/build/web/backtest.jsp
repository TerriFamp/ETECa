<%-- 
    Document   : backtest
    Created on : 16/10/2025, 11:42:46
    Author     : Alunos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="../UsuarioSERVLET" method="GET">
            <label> Seu Nome </label> <br>
            <input type="text" name="Nome"><br>
            <label> ID </label> <br>
            <input type="text" name="idUsuario"><br>
            <label> Seu Email </label><br>
            <input type="text" name="Email"><br>
            <label> Seu numero de telefone </label><br>
            <input type="text" name="Telefone"><br>
            <label> Seu tipo (Anonimo ou Publico) </label><br>
            <input type="text" name="Tipo"><br>
          
            <input type="submit" name ="submit" value="Cadastrar">
            
        </form>
    </body>
</html>
