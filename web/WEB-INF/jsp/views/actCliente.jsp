<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body style="background-color: teal">
    <center> 
        <div class="content">
            <div class="card border-info">
                <div class="card header bg-info">
                    <h1>Mdificar cliente!</h1>
                </div>
                <div class="card-body">
                    <form action="" method="post">
                        
                        <label class="input-group-addon">Digite Nombre: </label>
                        <input type="text" name="nombre" class="form-control"
                               value='<c:out value="${cli[0].nombre}"></c:out>'/>
                        
                        <label class="input-group-addon">Digite Direccion: </label>
                        <input type="text" name="direccion" class="form-control"
                               value='<c:out value="${cli[0].direccion}"></c:out>'/>
                        
                        <label class="input-group-addon">Digite Correo: </label>
                        <input type="text" name="correo" class="form-control"
                               value='<c:out value="${cli[0].correo}"></c:out>'/>
                        
                        <label class="input-group-addon">Digite Telefono: </label>
                        <input type="text" name="telefono" class="form-control"
                               value='<c:out value="${cli[0].telefono}"></c:out>'/>
                        <input type="button" name="Enviar">
                    </form>
                    
                </div>
            </div>
        </div>
        </center>  
                        
                        
        
        
     
          
    </body>
</html>
