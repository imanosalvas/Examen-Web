<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agregar Evento</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>
<link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/dashboard/">
    
    <link href="${pageContext.request.contextPath}/resources/css/dashboard.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath}/resources/css/estilos.css" rel="stylesheet"/>
	<%-- <link href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" rel="stylesheet"> --%>
	
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>     	
	<%-- <script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script> --%>
	
	
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" /> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />	
		
	<!-- JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/js/alertify.min.js"></script>
	
	<!-- CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themes/default.min.css"/>
	<!-- <!-- Semantic UI theme
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
	Bootstrap theme 
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/> -->

	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</head>
<body>
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">ISMAC</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3" href="${pageContext.request.contextPath}/">Sign out</a>
    </div>
  </div>
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link " aria-current="page" href="${pageContext.request.contextPath}/dashborad">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home align-text-bottom" aria-hidden="true">
            <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
            <polyline points="9 22 9 12 15 12 15 22"></polyline>
            </svg>
             Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/usuarios/frmAdd">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file align-text-bottom" aria-hidden="true">
              <path d="M13 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V9z"></path>
              <polyline points="13 2 13 9 20 9"></polyline>
              </svg>
			  Registro
            </a>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/usuarios">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users align-text-bottom" aria-hidden="true">
              <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
              <circle cx="9" cy="7" r="4"></circle>
              <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
              <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
              </svg>
              Usuarios
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="${pageContext.request.contextPath}/eventos">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-airplay align-text-bottom" aria-hidden="true">
              <path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1"></path>
              <polygon points="12 15 17 21 7 21 12 15"></polygon>
              </svg>
              Eventos
            </a>
            </li>
             <li class="nav-item">
            <a class="nav-link active" href="${pageContext.request.contextPath}/eventos/agregar">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-airplay align-text-bottom" aria-hidden="true">
              <path d="M5 17H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2h-1"></path>
              <polygon points="12 15 17 21 7 21 12 15"></polygon>
              </svg>
              Agregar Eventos
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/mi-cuenta">
              <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  			  <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
			</svg>
              Mi Cuenta
            </a>
          </li>
        </ul>

        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted text-uppercase">
          <span>Reportes Guardados</span>
          <a class="link-secondary" href="#" aria-label="Add a new report">
            <span data-feather="plus-circle" class="align-text-bottom"></span>
          </a>
        </h6>
        <ul class="nav flex-column mb-2">
          <li class="nav-item">
            <a class="nav-link" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text align-text-bottom" aria-hidden="true">
              <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
              <polyline points="14 2 14 8 20 8"></polyline>
              <line x1="16" y1="13" x2="8" y2="13"></line>
              <line x1="16" y1="17" x2="8" y2="17"></line>
              <polyline points="10 9 9 9 8 9"></polyline>
              </svg>
              Reporte
            </a>
          </li>
        </ul>
      </div>
    </nav>


    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <h1>Agregar Eventos</h1>
      
      <form:form action="add" modelAttribute="eventos" method="POST">
          
          <form:hidden path="id"/> 
          
          <%--   Nombre
          <form:input path="nombre" type="text" id="nombre" name="nombre" maxLength="15" />
          <br> 
          Fecha de Inicio
          <form:input path="fechaInicio" type="date" id="fechaInicio" name="fechaInicio" />
          <br>
          Fecha de Final
          <form:input path="fechaFin" type="date" id="fechaFin" name="fechaFin" />
          <br>
          Asunto
          <form:input path="asunto" type="text" id="asunto" name="asunto" maxLength="15" />
          <br>
          Lugar
          <form:input path="lugar" type="text" id="lugar" name="lugar" maxLength="15" />
          <br>
          Imagen
          <form:input path="imagen" type="byte" id="imagen" name="imagen" maxLength="15" />
          <br>
          
            Imagen nombre
          <form:input path="imagenNombre" type="imagenNombre" id="imagenNombre" name="imagenNombre" maxLength="15" />
          <br>
          Promedio Calificacion
          <form:input path="promedioCalificacion" type="text" id="promedioCalificacion" name="promedioCalificacion" maxLength="15" />
          <br>
           ID Ciudad
          <form:input path="id_ciudad" type="text" id="id_ciudad"" name="id_ciudad"" maxLength="40" />
          <br> 
          
          <button type="submit" id="btnGuardar">Guardar </button>  --%>
          
          
          <div class="form-group" >
                        <label >Nombre<form:errors path="nombre" style="color:red"  /> </label> 
                        <!-- class="form-control is-invalid" -->                
                          <form:input path="nombre" type="text" id="nombre" name="nombre" formControlName="nombre" class="form-control" maxlength="20" required="required"/>                                                    
                      </div>                                
                      <div class="form-group">
                          <label>Fecha de Inicio <form:errors path="fechaInicio" style="color:red" /></label>                  
                          <form:input path="fechaInicio" type="date" id="fechaInicio" name="fechaInicio" formControlName="fechaInicio" class="form-control" required="required"/>
                      </div>
                      <div class="form-group">
                          <label>Fecha de Final <form:errors path="fechaFin" style="color:red" /></label>                  
                          <form:input path="fechaFin"  type="date" id="fechaFin" name="fechaFin" formControlName="fechaFin" class="form-control" required="required"/>
                      </div>
                      
                      <div class="form-group">
                          <label>Asunto <form:errors path="asunto" style="color:red"  /> </label>                  
                          <form:input path="asunto" type="text" id="asunto" name="asunto" formControlName="asunto" class="form-control" required="required"/>
                      </div>                                                            
                      <div class="form-group">
                          <label>Lugar<form:errors path="lugar" style="color:red"  /> </label>                  
                          <form:input path="lugar" type="text" id="lugar" name="lugar" formControlName="lugar" class="form-control" required="required"/>
                      </div>     
                        <div class="form-group">
                          <label>Imagen<form:errors path="imagen" style="color:red"  /> </label>                  
                          <form:input path="imagen" type="text" id="imagen" name="imagen" formControlName="imagen" class="form-control"/>
                      </div>  
                            
                        <div class="form-group">
                          <label>Imagen Nombre<form:errors path="imagenNombre" style="color:red"  /> </label>                  
                          <form:input path="imagenNombre" type="text" id="imagenNombre" name="imagenNombre" formControlName="imagenNombre" class="form-control"/>
                      </div> 
                     <%--   <div class="form-group">
                          <label>Promedio Calificaion<form:errors path="promedioCalificacion" style="color:red"  /> </label>                  
                          <form:input path="promedioCalificacion" type="text" id="promedioCalificacion" name="promedioCalificacion" formControlName="promedioCalificacion" class="form-control"/>
                      </div>   --%>              
      
      <!-- 
      
      <label>Ciudades</label>
            <select class="form-select" aria-label="Default select example">
              <option selected>Elije una opción</option>
              <option value="1">Quito</option>
              <option value="2">Colombia</option>
              <option value="3">Manabi</option>
            </select>
            <br>
            
            <label>Provincia</label>
             <select class="form-select" aria-label="Default select example">
              <option selected>Elije una opción</option>
              <option value="1">Pichincha</option>
              <option value="2">Tungurahua</option>
              <option value="3">Imbabura</option>
            </select>
            <br>
                                                                                                                                                                                                  
            <label>Region</label>
            <select class="form-select" aria-label="Default select example">
              <option selected>Elije una opción</option>
              <option value="1">Costa</option>
              <option value="2">Sierra</option>
              <option value="3">Oriente</option>
            </select>
            <br>
             -->
            <label>Region</label>
            <select class="form-select" aria-label="Default select example">
              <option selected>Elije una opción</option>
              <option value="1">Costa</option>
              <option value="2">Sierra</option>
              <option value="3">Oriente</option>
            </select>
             
      
                       <label>Provincia</label>
                      <select id="regiones" name="regiones" class="form-control">
                          <option value="0">Elija una provincia</option>
                      <option value="azuay.txt">Azuay</option>
                      <option value="bolivar.txt">Bolívar</option>
                      <option value="canar.txt">Cañar</option>
                      <option value="carchi.txt">Carchi</option>
                      <option value="chimborazo.txt">Chimborazo</option>
                      <option value="cotopaxi.txt">Cotopaxi</option>
                      <option value="eloro.txt">El Oro</option>
                      <option value="esmeraldas.txt">Esmeraldas</option>
                      <option value="galapagos.txt">Galápagos</option>
                      <option value="guayas.txt">Guayas</option>
                      <option value="imbabura.txt">Imbabura</option>
                      <option value="loja.txt">Loja</option>
                      <option value="losrios.txt">Los Ríos</option>
                      <option value="manabi.txt">Manabí</option>
                      <option value="morona_santiago.txt">Morona Santiago</option>
                      <option value="napo.txt">Napo</option>
                      <option value="orellana.txt">Orellana</option>
                      <option value="pastaza.txt">Pastaza</option>
                      <option value="pichincha.txt">Pichincha</option>
                      <option value="santa_elena.txt">Santa Elena</option>
                      <option value="santo_domingo.txt">Santo Domingo de los Tsáchilas</option>
                      <option value="sucumbios.txt">Sucumbíos</option>
                      <option value="tungurahua.txt">Tungurahua</option>
                      <option value="zamora_chinchipe.txt">Zamora Chinchipe</option>
                      </select>
                      
                      <label>Ciudad</label>
                      <select id="provincias" name="provincias" class="form-control">
                        <option>Elija una Ciudad</option>
                      </select>
                      <br>
      
      
      
            
                      <div class="d-grid gap-2" style="padding-top: 5px">
                <button class="btn btn-primary" type="submit" id="btnGuardar" >Guardar</button>
                 <div class="d-grid gap-2" style="padding-top: 5px">
                <button  class="btn btn-primary"  type="button" id="btnCancelar" onClick="window.location.href='/Examen-Web'; return false;">Cancelar</button>
      <!-- 		<button type="button" id="btnCancelar" onClick="window.location.href='/Examen-Web'; return false;">Cancelar </button>
       -->	</form:form>
        
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
      
      
      
      
      
       <script > 
      
        var regiones = document.querySelector('#regiones');
        var provincias = document.querySelector('#provincias');
        regiones.onchange = mandoRegiones;
        
        function reciboProvincias(respuesta) {
        
          limpiar(); 
          
          var lines = respuesta.split('\n');
          for (var line = 0; line < lines.length; line++) {
            var opt = document.createElement('option');
            opt.innerHTML = lines[line];
            opt.value = lines[line];
            provincias.appendChild(opt);
          }
        
        }
        
        function mandoRegiones() {
          var ajax = new XMLHttpRequest();
          ajax.open('GET','http://localhost:8080/Examen-Web/resources/'+ regiones.value);
          ajax.onreadystatechange = function() {
            console.log(ajax.status, ajax.readyState, ajax.responseText);
            if (ajax.status === 200 && ajax.readyState === 4) {
              reciboProvincias(ajax.responseText);
            }
            else
              limpiar();
          }
          ajax.send();
        }
        
        function limpiar(){
        while(provincias.options.length > 0){                
            provincias.remove(0);
          } 
        } 
        
        </script> 
      </body>
      </html>