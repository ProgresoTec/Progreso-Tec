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
                        <a href="service.php" class="nav-item nav-link">Servicios</a>
<!--                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown">Blog</a>
                            <div class="dropdown-menu m-0">
                                <a href="blog.php" class="dropdown-item">Blog en Cuadrícula</a>
                                <a href="detail.php" class="dropdown-item">Detalle Blog</a>
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
                        <h1 class="display-4 text-white animated zoomIn">Detalle Blog</h1>
                        <a href="" class="h5 text-white">Inicio</a>
                        <i class="far fa-circle text-white px-2"></i>
                        <a href="" class="h5 text-white">Detalle Blog</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar End -->


        <?php include 'Diseño.php'; ?>
        <!-- Full Screen Search End -->


        <!-- Blog Start -->
        <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-8">
                        <!-- Blog Detail Start -->
                        <div class="mb-5">
                            <img class="img-fluid w-100 rounded mb-5" src="https://via.placeholder.com/500x350" alt="">
                            <h1 class="mb-4">Diam dolor est labore duo ipsum clita sed et lorem tempor duo</h1>
                            <p>Sadipscing labore amet rebum est et justo gubergren. Et eirmod ipsum sit diam ut
                                magna lorem. Nonumy vero labore lorem sanctus rebum et lorem magna kasd, stet
                                amet magna accusam consetetur eirmod. Kasd accusam sit ipsum sadipscing et at at
                                sanctus et. Ipsum sit gubergren dolores et, consetetur justo invidunt at et
                                aliquyam ut et vero clita. Diam sea sea no sed dolores diam nonumy, gubergren
                                sit stet no diam kasd vero.</p>
                            <p>Voluptua est takimata stet invidunt sed rebum nonumy stet, clita aliquyam dolores
                                vero stet consetetur elitr takimata rebum sanctus. Sit sed accusam stet sit
                                nonumy kasd diam dolores, sanctus lorem kasd duo dolor dolor vero sit et. Labore
                                ipsum duo sanctus amet eos et. Consetetur no sed et aliquyam ipsum justo et,
                                clita lorem sit vero amet amet est dolor elitr, stet et no diam sit. Dolor erat
                                justo dolore sit invidunt.</p>
                            <p>Diam dolor est labore duo invidunt ipsum clita et, sed et lorem voluptua tempor
                                invidunt at est sanctus sanctus. Clita dolores sit kasd diam takimata justo diam
                                lorem sed. Magna amet sed rebum eos. Clita no magna no dolor erat diam tempor
                                rebum consetetur, sanctus labore sed nonumy diam lorem amet eirmod. No at tempor
                                sea diam kasd, takimata ea nonumy elitr sadipscing gubergren erat. Gubergren at
                                lorem invidunt sadipscing rebum sit amet ut ut, voluptua diam dolores at
                                sadipscing stet. Clita dolor amet dolor ipsum vero ea ea eos.</p>
                            <p>Voluptua est takimata stet invidunt sed rebum nonumy stet, clita aliquyam dolores
                                vero stet consetetur elitr takimata rebum sanctus. Sit sed accusam stet sit
                                nonumy kasd diam dolores, sanctus lorem kasd duo dolor dolor vero sit et. Labore
                                ipsum duo sanctus amet eos et. Consetetur no sed et aliquyam ipsum justo et,
                                clita lorem sit vero amet amet est dolor elitr, stet et no diam sit. Dolor erat
                                justo dolore sit invidunt.</p>
                        </div>
                        <!-- Blog Detail End -->




                    </div>

                    <!-- Sidebar Start -->
                    <div class="col-lg-4">
                        

                        <!-- Category Start -->
                        <div class="mb-5 wow slideInUp" data-wow-delay="0.1s">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="mb-0">Categories</h3>
                            </div>
                            <div class="link-animated d-flex flex-column justify-content-start">
                                <a class="h5 fw-semi-bold bg-light rounded py-2 px-3 mb-2" href="#"><i class="bi bi-arrow-right me-2"></i>Web Design</a>
                                <a class="h5 fw-semi-bold bg-light rounded py-2 px-3 mb-2" href="#"><i class="bi bi-arrow-right me-2"></i>Web Development</a>
                                <a class="h5 fw-semi-bold bg-light rounded py-2 px-3 mb-2" href="#"><i class="bi bi-arrow-right me-2"></i>Web Development</a>
                            </div>
                        </div>
                        <!-- Category End -->

                        <!-- Recent Post Start -->
                        <div class="mb-5 wow slideInUp" data-wow-delay="0.1s">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="mb-0">Recent Post</h3>
                            </div>
                            <div class="d-flex rounded overflow-hidden mb-3">
                                <img class="img-fluid" src="https://via.placeholder.com/500x350" style="width: 100px; height: 100px; object-fit: cover;" alt="">
                                <a href="" class="h5 fw-semi-bold d-flex align-items-center bg-light px-3 mb-0">Lorem ipsum dolor sit amet adipis elit
                                </a>
                            </div>
                            <div class="d-flex rounded overflow-hidden mb-3">
                                <img class="img-fluid" src="https://via.placeholder.com/500x350" style="width: 100px; height: 100px; object-fit: cover;" alt="">
                                <a href="" class="h5 fw-semi-bold d-flex align-items-center bg-light px-3 mb-0">Lorem ipsum dolor sit amet adipis elit
                                </a>
                            </div>
                            <div class="d-flex rounded overflow-hidden mb-3">
                                <img class="img-fluid" src="https://via.placeholder.com/500x350" style="width: 100px; height: 100px; object-fit: cover;" alt="">
                                <a href="" class="h5 fw-semi-bold d-flex align-items-center bg-light px-3 mb-0">Lorem ipsum dolor sit amet adipis elit
                                </a>
                            </div>
                            <div class="d-flex rounded overflow-hidden mb-3">
                                <img class="img-fluid" src="https://via.placeholder.com/500x350" style="width: 100px; height: 100px; object-fit: cover;" alt="">
                                <a href="" class="h5 fw-semi-bold d-flex align-items-center bg-light px-3 mb-0">Lorem ipsum dolor sit amet adipis elit
                                </a>
                            </div>
                        </div>
                        <!-- Recent Post End -->

                        <!-- Image Start -->
                        <div class="mb-5 wow slideInUp" data-wow-delay="0.1s">
                            <img src="https://via.placeholder.com/500x350" alt="" class="img-fluid rounded">
                        </div>
                        <!-- Image End -->

                        <!-- Tags Start -->
                        <div class="mb-5 wow slideInUp" data-wow-delay="0.1s">
                            <div class="section-title section-title-sm position-relative pb-3 mb-4">
                                <h3 class="mb-0">Tag Cloud</h3>
                            </div>
                            <div class="d-flex flex-wrap m-n1">
                                <a href="" class="btn btn-light m-1">Design</a>
                                <a href="" class="btn btn-light m-1">Development</a>
                                <a href="" class="btn btn-light m-1">Marketing</a>
                                <a href="" class="btn btn-light m-1">SEO</a>
                                <a href="" class="btn btn-light m-1">Writing</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog End -->


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