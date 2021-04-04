

<%@page contentType="tex" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumEUQouq2+l" crossorigin="anonymous">
        <title>JSP Page</title>
       
    </head>
    <body style="background-color: teal">
    <center> 
        <h1>Agregar Cliente !</h1>
          <form:form commandName="cliente" method="post">
            <form:label path="nombre">Digite su nombre: </form:label>
            <form:input path="nombre"></form:input><br>
            <form:errors path="nombre"></form:errors><br><br>           
            <form:label path="direccion">Digite su direccion</form:label>
            <form:input path="direccion"></form:input><br>
            <form:errors path="direccion"></form:errors><br><br>
            <form:label path="correo">Digite su correo: </form:label>
            <form:input path="correo"></form:input><br>
            <form:errors path="correo"></form:errors><br><br>  
            <form:label path="telefono">Digite su telefono: </form:label>
            <form:input path="telefono"></form:input><br>
            <form:errors path="telefono"></form:errors><br><br>   
            <form:button value="Enviar">Enviar...</form:button>
        </form:form>
            </center>
    </body>
</html>
