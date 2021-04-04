<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <title>SITEV</title>
    </head>
    <style>
        body {
            font-family: 'Muli', sans-serif;
            margin: 0px;
            background-image: url("");
            background-color: teal;
        }

        .header{
            background-color: teal ;
            width: 100%;
            height: 80px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header__img{
            width: 200px;
            margin-top: 10px;
            margin-left: 10px;
            background-color: teal;
        }

        .header__menu{
            margin-right: 30px;
        }

        .header__menu ul {
          display: none ;
          list-style: none;
          padding: 0px;
          position: absolute;
          width: 100px;
          text-align: right;
          margin: 0px 0px 0px -14px;
        }

        .header__menu:hover ul, ul:hover{
            display: block;
        }

        .header__menu li {
            margin:10px 0px;
        }

        .header__menu li a {
           color: white;
           text-decoration: none ;
        }

        .header__menu li a:hover {
            text-decoration: underline ;
        }


        .header__menu--profile {
            margin-right: 8px;
          align-items: center;
            display: flex;
            cursor:pointer;
            
        }

        .header__menu--profile img {
            
            width: 40px;

        }

        .header__menu--profile p {
            margin: 0px
            color white;
            
        }

        .main{
            height: 300px;
           

    
        }
        .main__title{
            color: white;
            font-size: 25px;
            font-family: 32px fantasy;
            font-size: 1.5em;
            display: block;
            margin-block-start: 0.83em;
            margin-block-end: 0.83em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            font-weight: bold;
    ;
        }
        .input {
            background-color: rgba(255, 255, 255, 0.1);
            border: 2px solid white ;
            border-radius: 25px;
            font-family: 'Muli', sans-serif;
            font-size: 16px;
            height: 50px;
            padding: 0px 20px;
            width: 70%;
        }
        ::placeholder{
            color: white;


        }
        .quienesSomos{
          border-radius: 2px solid white;
          margin: 50px;
          
        }
        .parrrafo{
            color: white;
            font-size: 25px;
            font-family: 32px fantasy;
            font-size: 1.5em;
            display: block;
            margin-block-start: 0.83em;
            margin-block-end: 0.83em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            font-weight: bold;
          
          
        }
        /*1-width 100% abarca toda la pantalla,
          2-overflow establece la propiedad de scrol
          3-padding de 30px para tener una margen de vista
          4-pos:relative porque queremos que los elementos que hereden se justencon base en est elemento*/
        .carrosel{
            width: 100%;
            overflow: scroll;
            padding: 30px;
            position: relative;
            text-align: center;
        }
        /*1-whitespace nowrap enlista todos los elementos en un solo renglon.
          2-establecemos un pequeño espaciado entre los elementos de la lista
          3-paddding de 10px para evitar que se corteel elemento cuando hagamos hover*/
        .carrosel__container{
            white-space: nowrap;
            margin: 70px 0px;
            padding-bottom:  10px;
        }
        /*color,altura,anchura,border radius para curvar los bordes,overflow:hidden para que tome los estilos,margin para separar elementos,inlineclock: pone un item al lado del otro*/
        .carrosel-item{
            background-color:#1d3557;
            width: 200px;
            height: 250px;
            border-radius: 20px;
            overflow: hidden;
            margin-right: 10px;
            display: inline-block;
            cursor: pointer;
            transition: 450ms all;
            transform-origin: center left;
            position: relative;

        }
        /*carrosel hover: desplaza los elementos hacia la derecha ,selecciona todos los elementos excepto el elemento que esta selecconado*/
        .carrosel-item:hover ~ .carrosel-item {
            transform: translate3d(100px, 0, 0);
        }
        /*opacidad*/
        .carrosel__container:hover.carrosel-item{
            opacity: 0.3;
        }
        .carrosel__container:hover.carrosel-item:hover{
            transform: scale(1.5);
            opacity: 1;
        }
        .carrosel-item__img{
            width: 200px;
            height: 250px;
            object-fit: cover;
        }
        .carrosel-item__details{
            background: linear-gradient(to top, rgba(0,0,0,0.9,) 0%,  rgba(0,0,0,0,) 100%
            );
            font-size: 10px;
            opacity: 1;
            transition: 450ms opacity;
            padding: 10px;
            position: absolute;
            top: 0 ;
            left: 0;
            right: 0;
            bottom: 0;
            display: flex;
            align-items: flex-end;
        }
        .carrosel-item__details:hover{
            opacity: 1;
        }
        .carrosel-item__details--icon{
            width: 25px;
            height: 25px;

        }
        .carrosel-item__details--title, .carrosel-item__details--subtitle{
            color: #ffffff;
            font-size:large;

        }
        .button{
            text-decoration: none;
        padding: 10px;
        font-weight: 600;
        font-size: 30px;
        color: #ffffff;
        background-color: #1883ba;
        border-radius: 6px;
        border: 2px solid #0016b0;
        }
        .button:hover{
            color: #1883ba;
        background-color: #ffffff; 
        }









    </style>
    
    

    <body>
       
           
       
         
              <header class="header">
       

            <div class="header__menu">

                <div class="header__menu--profile">
                    <img src="C:\Users\USUARIO\Documents\FreFre\Sena-ADSI\Inst.-Fernando-Rojas\platzi\CHRONOS\CarruselCHRONOS\icons8-user-pequeño-24.png" alt="user">
                        <p>perfil</p>  
     l                <li><a href="C:\Users\USUARIO\Documents\NetBeansProjects\JDBC2\dist\javadoc\index">ayuda</a></li>
                </ul>
            </div>    
    
        </header>

        <center>
            <section class="main">

                <h2 class="main__title">BIENVENIDO A SITEV</h2>
                
                <input class="input" type="text" placeholder="Buscar">

                <div class="quienesSomos">
                    <p class="parrrafo">Implementando con tecnologia de avanzada, SITEV es el mejor aliado para las empresas de transporte publico y de carga.Cuenta con los siguientes modulos</p>

                </div>

            </section>
        </center> 

        <section class="carrosel">
          

            <div class="carrosel-item">
                <img class="carrosel-item__img" src="GPS.jpg" alt="valor del tiempo" width="200px,  " height="160px">
                <div class="carrosel-item__details">
                    <div>
                       
                        <img src="https://raw.githubusercontent.com/teffcode/Platzi-Frontend-Dev/master/assets/plus-icon.png" alt="plus">
                         <a href="formCliente.htm">REGISTRATE</a>
                    </div> 
                    <p class="carrosel-item__details--title">SITEV</p>
                    <p class="carrosel-item__details--subtitle"></p>
                </div>
                        
                         
            </div>
  
            
                <div class="carrosel-item">
                        
                    <img class="carrosel-item__img" src="C:\Users\USUARIO\Documents\FreFre\Sena-ADSI\Inst.-Fernando-Rojas\platzi\CHRONOS\CarruselCHRONOS\tacometro.jpg" alt="valor del tiempo" width="200px,  " height="160px">
                    <div class="carrosel-item__details">
                    <div>
                   
                    <img src="https://raw.githubusercontent.com/teffcode/Platzi-Frontend-Dev/master/assets/plus-icon.png" alt="plus">
                    </div>
                    <p class="carrosel-item__details--title">GESTION DE CONDUCCION</p>
                    <p class="carrosel-item__details--subtitle"></p>
                    </div>
                </div>

                    <div class="carrosel-item">
                        <img class="carrosel-item__img" src="C:\Users\USUARIO\Documents\FreFre\Sena-ADSI\Inst.-Fernando-Rojas\platzi\CHRONOS\CarruselCHRONOS\pexels-reloj-conejo.jpg" alt=""  width="200px,  " height="160px">
                        <div class="carrosel-item__details">
                            <div>
                          
                            <img src="https://raw.githubusercontent.com/teffcode/Platzi-Frontend-Dev/master/assets/plus-icon.png" alt="plus">
                            </div>
                            <p class="carrosel-item__details--title">RUTA A TIEMPO</p>
                            <p class="carrosel-item__details--subtitle"></p>
                        </div>                            
                    </div>

                <div class="carrosel-item">
                    <img class="carrosel-item__img" src="C:\Users\USUARIO\Documents\FreFre\Sena-ADSI\Inst.-Fernando-Rojas\platzi\CHRONOS\CarruselCHRONOS\reporte.jpg" alt="RUTA A TIEMPO">

                    <div class="carrosel-item__details">
                    <div>
                 
                    <img src="https://raw.githubusercontent.com/teffcode/Platzi-Frontend-Dev/master/assets/plus-icon.png" alt="plus">
                    </div>
                    <p class="carrosel-item__details--title">REPORTES EN LINEA</p>
                    <p class="carrosel-item__details--subtitle"></p>
                    </div>
                            
                </div> 

                        <div class="carrosel-item">

                            <img class="carrosel-item" src="C:\Users\USUARIO\Documents\FreFre\Sena-ADSI\Inst.-Fernando-Rojas\platzi\CHRONOS\CarruselCHRONOS\manos.jpg" alt="">

                            <div class="carrosel-item__details">
                                <div>
                                  
                                    <img src="https://raw.githubusercontent.com/teffcode/Platzi-Frontend-Dev/master/assets/plus-icon.png" alt="plus">
                                </div>
                                <p class="carrosel-item__details--title">ALIADOS</p>
                                <p class="carrosel-item__details--subtitle"></p>
                            </div>

                            
                            
                        </div>

         


        </section>
    
    </body>
</html>
