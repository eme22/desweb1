<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/index.css">
<%--        <script src="js/index.js"></script>--%>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <title>RedBus - La red de buses mas grande del Perú</title>
        <link  rel="icon"   href="imagenes/favicon.png" type="image/png" />
    </head>
    <body>
    <div id="home"></div>
    <!-- NAVIGATION -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark p-md-1 bg-primary">
        <div class="d-flex flex-grow-1">
        <span class="w-100 d-lg-none d-block">
            <!-- hidden spacer to center brand on mobile --></span>
            <a class="navbar-brand d-none d-lg-inline-block mx-auto ms-2" href="index.jsp">
                <h2 class="d-lg-inline-block mx-auto text-light">redBus</h2>
                <img src="imagenes/favicon.png" alt="logo"> </a>
            <a class="navbar-brand-two mx-auto d-lg-none d-inline-block" href="index.jsp">
                <img src="imagenes/favicon.png" alt="logo">
            </a>
            <div class="w-100 text-right">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNavbar">
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
                    <a href="Login.jsp" class="nav-link m-2 menu-item text-light">Conectate
                        <img src="imagenes/usuario.png" alt="logo" style="height: 3ex!important;">
                    </a>
                </li>
            </ul>
        </div>
    </nav>

    <section>
        <div class="banner-image img-fluid w-100 vh-100 d-flex justify-content-center align-items-center">
            <div class="content text-center">
                <div class="text-white">
                    <h1 class="mb-3 text-dark">redBus</h1>
                    <h4 class="mb-3 text-dark">La red de buses mas grande del Perú</h4>
                    <a class="btn btn-outline-primary btn-lg text-dark" href="Register.jsp" role="button">Registrate para Viajar</a>
                </div>
            </div>
        </div>
    </section>


    <%--
    <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

        <!--Controls-->
        <div class="controls-top">
            <a class="btn-floating" href="#multi-item-example" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
            <a class="btn-floating" href="#multi-item-example" data-slide="next"><i class="fa fa-chevron-right"></i></a>
        </div>
        <!--/.Controls-->

        <!--Indicators-->
        <ol class="carousel-indicators">
            <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
            <li data-target="#multi-item-example" data-slide-to="1"></li>
            <li data-target="#multi-item-example" data-slide-to="2"></li>
        </ol>
        <!--/.Indicators-->

        <!--Slides-->
        <div class="carousel-inner" role="listbox">

            <!--First slide-->
            <div class="carousel-item active">

                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-2">
                            <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(34).jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p>
                                <a class="btn btn-primary">Button</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 clearfix d-none d-md-block">
                        <div class="card mb-2">
                            <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(18).jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p>
                                <a class="btn btn-primary">Button</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 clearfix d-none d-md-block">
                        <div class="card mb-2">
                            <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(35).jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p>
                                <a class="btn btn-primary">Button</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!--/.First slide-->

            <!--Second slide-->
            <div class="carousel-item">

                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-2">
                            <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p>
                                <a class="btn btn-primary">Button</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 clearfix d-none d-md-block">
                        <div class="card mb-2">
                            <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(47).jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p>
                                <a class="btn btn-primary">Button</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 clearfix d-none d-md-block">
                        <div class="card mb-2">
                            <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(48).jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p>
                                <a class="btn btn-primary">Button</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!--/.Second slide-->

            <!--Third slide-->
            <div class="carousel-item">

                <div class="row">
                    <div class="col-md-4">
                        <div class="card mb-2">
                            <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/4-col/img%20(53).jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p>
                                <a class="btn btn-primary">Button</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 clearfix d-none d-md-block">
                        <div class="card mb-2">
                            <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/4-col/img%20(45).jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p>
                                <a class="btn btn-primary">Button</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 clearfix d-none d-md-block">
                        <div class="card mb-2">
                            <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/4-col/img%20(51).jpg"
                                 alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                    card's content.</p>
                                <a class="btn btn-primary">Button</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!--/.Third slide-->

        </div>
        <!--/.Slides-->

    </div>
--%>
    <br>
    <section>
        <h2><img src="imagenes/precio.png" style="height: 3ex!important;" >Nuestras Promociones</h2>
        <div id="headerCarousel" class="carousel slide carousel-fade mx-auto my-auto" data-bs-ride="carousel" data-bs-keyboard="true">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card mb-2">
                                <img class="card-img-top img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(34).jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">Card title</h4>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                        card's content.</p>
                                    <a class="btn btn-primary">Button</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 clearfix d-none d-md-block">
                            <div class="card mb-2">
                                <img class="card-img-top img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(18).jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">Card title</h4>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                        card's content.</p>
                                    <a class="btn btn-primary">Button</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 clearfix d-none d-md-block">
                            <div class="card mb-2">
                                <img class="card-img-top img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Nature/4-col/img%20(35).jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">Card title</h4>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                        card's content.</p>
                                    <a class="btn btn-primary">Button</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card mb-2">
                                <img class="card-img-top img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(60).jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">Card title</h4>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                        card's content.</p>
                                    <a class="btn btn-primary">Button</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 clearfix d-none d-md-block">
                            <div class="card mb-2">
                                <img class="card-img-top img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(47).jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">Card title</h4>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                        card's content.</p>
                                    <a class="btn btn-primary">Button</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 clearfix d-none d-md-block">
                            <div class="card mb-2">
                                <img class="card-img-top img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/City/4-col/img%20(48).jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">Card title</h4>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                        card's content.</p>
                                    <a class="btn btn-primary">Button</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card mb-2">
                                <img class="card-img-top img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/4-col/img%20(53).jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">Card title</h4>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                        card's content.</p>
                                    <a class="btn btn-primary">Button</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 clearfix d-none d-md-block">
                            <div class="card mb-2">
                                <img class="card-img-top img-fluid" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/4-col/img%20(45).jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">Card title</h4>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                        card's content.</p>
                                    <a class="btn btn-primary">Button</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 clearfix d-none d-md-block">
                            <div class="card mb-2">
                                <img class="card-img-top" src="https://mdbootstrap.com/img/Photos/Horizontal/Food/4-col/img%20(51).jpg"
                                     alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title">Card title</h4>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                                        card's content.</p>
                                    <a class="btn btn-primary">Button</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Carousel Buttons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#headerCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#headerCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

<br>

    <section>
        <h2><img src="imagenes/info.png" style="height: 3ex!important;" > Anuncios</h2>
        <div class="container my-2 d-grid gap-2 align-items-center">
            <div class="p-5 border">
                <h3>Aumento de flota de lineas de buses</h3>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Necessitatibus veniam ipsa earum quibusdam, atque ipsum error maiores
                    natus iusto fugit id saepe neque rerum magni laudantium accusantium
                    dolorem numquam quasi.
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Necessitatibus veniam ipsa earum quibusdam, atque ipsum error maiores
                    natus iusto fugit id saepe neque rerum magni laudantium accusantium
                    dolorem numquam quasi.
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Necessitatibus veniam ipsa earum quibusdam, atque ipsum error maiores
                    natus iusto fugit id saepe neque rerum magni laudantium accusantium
                    dolorem numquam quasi.
                    <br>
                    <img src="imagenes/background.png" class="img-fluid">
                </p>
            </div>
        </div>
    </section>

    <footer class="text-center text-lg-start bg-primary text-muted">
        <!-- Section: Social media -->
        <section
                class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom"
        >
            <!-- Left -->
            <div class="me-5 d-none d-lg-block">
                <span>Conectate con nosotros:</span>
            </div>
            <!-- Left -->

            <!-- Right -->
            <div>
                <a href="" class="me-4 text-dark">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="" class="me-4 text-dark">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="" class="me-4 text-dark">
                    <i class="fab fa-google"></i>
                </a>
                <a href="" class="me-4 text-dark">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="" class="me-4 text-dark">
                    <i class="fab fa-linkedin"></i>
                </a>
                <a href="" class="me-4 text-dark">
                    <i class="fab fa-github"></i>
                </a>
            </div>
            <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section class="">
            <div class="container text-center text-md-start mt-5">
                <!-- Grid row -->
                <div class="row mt-3">
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            <i class="fas fa-gem me-3"></i>Company name
                        </h6>
                        <p>
                            Here you can use rows and columns to organize your footer content. Lorem ipsum
                            dolor sit amet, consectetur adipisicing elit.
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            Products
                        </h6>
                        <p>
                            <a href="#!" class="text-dark">Angular</a>
                        </p>
                        <p>
                            <a href="#!" class="text-dark">React</a>
                        </p>
                        <p>
                            <a href="#!" class="text-dark">Vue</a>
                        </p>
                        <p>
                            <a href="#!" class="text-dark">Laravel</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            Useful links
                        </h6>
                        <p>
                            <a href="#!" class="text-dark">Pricing</a>
                        </p>
                        <p>
                            <a href="#!" class="text-dark">Settings</a>
                        </p>
                        <p>
                            <a href="#!" class="text-dark">Orders</a>
                        </p>
                        <p>
                            <a href="#!" class="text-dark">Help</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold mb-4">
                            Contact
                        </h6>
                        <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
                        <p>
                            <i class="fas fa-envelope me-3"></i>
                            info@example.com
                        </p>
                        <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                        <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
            © 2021 Copyright:
            <a class="text-dark fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
        </div>
        <!-- Copyright -->
    </footer>

    </body>
</html>