<%--
  Created by IntelliJ IDEA.
  User: MSB19
  Date: 26/09/2021
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <title>RedBus - Registrate Para Viajar con Nosotros </title>
</head>
<body>

<nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-1" style="background-color: #D74E55!important;">
    <div class="d-flex flex-grow-1">
        <span class="w-100 d-lg-none d-block">
            <!-- hidden spacer to center brand on mobile --></span>
        <a class="navbar-brand d-none d-lg-inline-block mx-auto ms-2" href="#">
            <h2 class="d-lg-inline-block mx-auto text-light">redBus</h2>
            <img src="imagenes/favicon.png" alt="logo"> </a>
        <a class="navbar-brand-two mx-auto d-lg-none d-inline-block" href="#">
            <img src="imagenes/favicon.png" alt="logo">
        </a>
        <div class="w-100 text-right">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNavbar" onclick="document.body.classList.toggle('double');">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
    <div class="collapse navbar-collapse flex-grow-1 text-right me-2" id="myNavbar">
        <ul class="navbar-nav ms-auto flex-nowrap">
            <li class="nav-item">
                <a href="#" class="nav-link m-2 menu-item nav-active text-light">Sobre Nosotros
                    <img src="imagenes/nosotros.png" alt="logo" style="height: 3ex!important;">
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link m-2 menu-item text-light">Horarios
                    <img src="imagenes/calendario.png" alt="logo" style="height: 3ex!important;">
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link m-2 menu-item text-light">Contactanos
                    <img src="imagenes/contactanos.png" alt="logo" style="height: 3ex!important;">
                </a>
            </li>
            <li class="nav-item">
                <a href="register.jsp" class="nav-link m-2 menu-item text-light disabled">Registrate/Conectate
                    <img src="imagenes/usuario.png" alt="logo" style="height: 3ex!important;">
                </a>
            </li>
        </ul>
    </div>
</nav>

<div class="d-flex align-top light-blue-gradient" style="height: 100vh;">
    <div class="container" >
        <div class="d-flex justify-content-center">
            <div class="col-md-6">
                <div class="card rounded-0 shadow">
                    <div class="card-body">
                        <h3 class="justify-content-center">Registrarse</h3>
                        <form>
                            <div class="form-group">
                                <label for="dni">DNI: </label>
                                <input type="number" class="form-control" id="dni" aria-describedby="emailHelp" placeholder="Ingrese DNI">
                            </div>
                            <div class="form-group">
                                <label for="apellidos">Apellidos: </label>
                                <input type="text" class="form-control" id="apellidos" aria-describedby="emailHelp" placeholder="Ingrese Apellidos">
                            </div>
                            <div class="form-group">
                                <label for="nombres">Nombres: </label>
                                <input type="text" class="form-control" id="nombres" aria-describedby="emailHelp" placeholder="Ingrese Nombres">
                            </div>
                            <div class="form-group">
                                <label for="nacimiento">Fecha de Nacimiento: </label>
                                <input type="date" class="form-control" id="nacimiento" aria-describedby="emailHelp">
                            </div>
                            <div class="form-group">
                                <label for="correo">Correo:</label>
                                <input type="email" class="form-control" id="correo" aria-describedby="emailHelp" placeholder="Escriba su Email">
                                <small id="correoAyuda" class="form-text text-muted">No compartiremos su correo con fines de publicidad.</small>
                            </div>
                            <div class="form-group">
                                <label for="direccion">Direccion: </label>
                                <input type="text" class="form-control" id="direccion" aria-describedby="emailHelp" placeholder="Ingrese su direccion">
                            </div>
                            <div class="form-group">
                                <label for="telefono">Telefono: </label>
                                <input type="number" class="form-control" id="telefono" aria-describedby="emailHelp" placeholder="Ingrese su telefono">
                            </div>
                            <div class="form-group">
                                <label for="contrasenia">Contraseña: </label>
                                <input type="password" class="form-control" id="contrasenia" placeholder="Ingrese su contraseña">
                            </div>
                            <div class="form-group">
                                <label for="contrasenia1">Confirme Su Contraseña:</label>
                                <input type="password" class="form-control" id="contrasenia1" placeholder="Ingrese su contraseña">
                            </div>
                            <button type="submit" class="btn btn-danger">Registrarse</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </div>
</body>
</html>
