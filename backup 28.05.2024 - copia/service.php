<!DOCTYPE html>
<html lang="en">

    <head>
       <?php include 'ConjuntoHead.php'; ?>
    </head>

    <body>
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner"></div>
        </div>
        <!-- Spinner End -->


        <?php include 'BarraSuperior.php'; ?>


        <!-- Navbar Start -->
        <div class="container-fluid position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0">
                <a href="index.html" class="navbar-brand p-0">
                    <h1 class="m-0">
                        <img src="img/LogoFinal.png" alt="Progreso Tec Logo" style="height: 50px; margin-right: 5px;">
                        Progreso Tec
                    </h1>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="index.php" class="nav-item nav-link">Inicio</a>
                        <a href="about.php" class="nav-item nav-link">Nosotros</a>
                        <a href="service.php" class="nav-item nav-link active">Servicios</a>
<!--                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Blog</a>
                            <div class="dropdown-menu m-0">
                                <a href="blog.php" class="dropdown-item">Blog en Cuadrícula</a>
                                <a href="detail.php" class="dropdown-item">Detalle del Blog</a>
                            </div>
                        </div>-->
                        <a href="contact.php" class="nav-item nav-link">Contacto</a>
                    </div>
                    <a href="#" class="btn btn-primary py-2 px-4 ms-3">Tec Market</a>
                </div>


            </nav>

            <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
                <div class="row py-5">
                    <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                        <h1 class="display-4 text-white animated zoomIn">Servicios</h1>
                        <a href="" class="h5 text-white">Inicio</a>
                        <i class="far fa-circle text-white px-2"></i>
                        <a href="" class="h5 text-white">Servicios</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar End -->





        <?php include 'NuestrosServiciosContenedor.php'; ?>



        <?php include 'TestimoniosContenedor.php'; ?>



        <?php include 'AnterioresClientes.php'; ?>



        <?php include 'Fooder.php'; ?>


        <?php include 'DerechosAutor.php'; ?>


        <?php include 'ContactoWhasap.php'; ?>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>