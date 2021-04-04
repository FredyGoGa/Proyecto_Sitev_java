<%-- 
    Document   : formCliente
    Created on : 18/03/2021, 09:02:04 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
         <script src="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css"/>
         <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"/>
         <script> $(document).ready( function () {
    $('prueba').DataTable({
        "pading": true,
        "butons": true,
        "lengthMenu": 
        "language": {"url": "https://cdn.datatables.net/plug-ins/1.10.19/il8n/Spanish.json"},        
        
        
             },
             "paginate": true
         }};
                     
       )};              
        
          </script>
          <style>color:white</style>
             <title>JSP Page</title>
    </head>
    <body style="background-color: teal">
    <center> 
        <h1>Registrate!</h1>
        
             
            <form:form commandName="cliente" method="post">
            <form:label path="nombre">Digite su nombre: </form:label>
            <form:input path="nombre"></form:input><br>
            <form:errors path="nombre"></form:errors><br><br>           
            <form:label path="direccion">Digite su direccion: </form:label>
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
              <a href="mostarCliente.htm">cliente</a>
              </center>
    </body>
</html>
