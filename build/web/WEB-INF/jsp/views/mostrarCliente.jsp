<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-3.5.1.js"></script>
      
        <script src="http://cdn.datatables.net/1.10.23/js/jquery.datatables.min.js"></script> 
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
          
        <title>Crud</title>
    </head>

    <body style="background-color: teal">
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-light" href="agregarCliente.htm">Agregar Cliente</a>
<!--                    <a class="btn btn-light" href="Agregar.htm">Agregar Cliente</a>-->
                        <h1>Registros de la base de datos<h1>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRES</th>
                                <th>DIRECCION</th>
                                <th>CORREO</th>
                                <th>TELEFONO</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${cliente}" var="dato" >
                                <tr>
                                    <td><c:out value="${dato.id}"></c:out></td>
                                    <td><c:out value="${dato.nombre}"></c:out></td>
                                    <td><c:out value="${dato.direccion}"></c:out></td>
                                    <td><c:out value="${dato.correo}"></c:out></td> 
                                    <td><c:out value="${dato.telefono}"></c:out></td> 
                                    
                                          <td>
                                        
                                          <a href="actCliente.htm?id=${dato.id}" class="btn btn-warning">Editar</a>
                                          <a href="borrarCliente.htm?id=${dato.id}" class="btn btn-danger">Delete</a>  
                                          </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>            
            </div>
            
        </div>    
    </body>
</html>
