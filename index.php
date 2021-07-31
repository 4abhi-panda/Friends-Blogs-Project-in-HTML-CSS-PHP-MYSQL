<?php

    include("header.php");
?>
<?php
include("connect.php");
$result=mysqli_query($con,"select *from post");
$row=mysqli_fetch_assoc($result);

?>
        <section class="page-section clearfix">
            <div class="container">
                <div class="intro">
                    <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="assets/img/intro.jpg" alt="..." />
                    <div class="intro-text left-0 text-center bg-faded p-5 rounded">
                        <h2 class="section-heading mb-4">
                            <span class="section-heading-upper">Fresh Blog</span>
                            <span class="section-heading-lower">Genuine & Worthy Site</span>
                        </h2>
                        <p class="mb-3">Every Blog of our Website is the best & we manage the quality of the blog with locally sourced. Once you try it Or visit us, our blog will be a amaze you and  addition to your everyday routine - we guarantee it!</p>
                        <div class="intro-button mx-auto"><a class="btn btn-primary btn-xl" href="#!">See More Blog!</a></div>
                    </div>
                </div>
            </div>
        </section>
        <section class="page-section cta">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <div class="cta-inner text-center rounded">
                            <h2 class="section-heading mb-4">
                                <span class="section-heading-upper">Our Best </span>
                                <span class="section-heading-lower">BLOG</span>
                            </h2>
                            <div class="row">
                                <div class="col-md-12">
                                    <img src="admin/photos/<?php echo $row['image']?>" height="50%" width="80%">
                                    <h2 class="site-heading-upper text-primary mb-3"><?php echo $row['posttitle']?></h2>

                                     <h5><?php echo $row['Description']?></h5>

                                     <div class="intro-button mx-auto"> <a class="btn btn-primary btn-lg" href="viewpost.php?did=<?php echo $row['id']?>">See More</a></div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="footer text-faded text-center py-5">
            <div class="container"><p class="m-0 small">Copyright © Bloggers.com 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
