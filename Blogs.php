<?php
    include("header.php");
     include("connect.php");

      $result=mysqli_query($con,"select *from post");
      if(mysqli_num_rows($result)>0)
            {
               while($row=mysqli_fetch_assoc($result))
                {
      ?>
        <section class="page-section">
            <div class="container">
                <div class="product-item">
                    <div class="product-item-title d-flex">
                        <div class="bg-faded p-5 d-flex mr-auto rounded">
                            <h3 class="section-heading mb-0">
                                <span class="section-heading-upper"></span>
                                <span class=""><b><?php echo $row['posttitle']?></b></span>
                            </h3>
                        </div>
                    </div>
                    <img class="product-item-img mx-auto d-flex rounded img-fluid mb-3 mb-lg-0" src="admin/photos/<?php echo $row['image']?>" alt="..." />
                    <div class="product-item-description d-flex ml-auto">
                        <div class="bg-faded p-5 rounded"><p class="mb-0">
                            <?php echo $row['Description']?></p></div>

                    </div>
                     <center><div class="intro-button mx-auto"> <a class="btn btn-primary btn-lg" href="viewpost.php?did=<?php echo $row['id']?>">See More</a></div>
                     </center>

                </div>
            </div>
        </section>
       <?php
   }

}
       ?>
        <footer class="footer text-faded text-center py-5">
            <div class="container"><p class="m-0 small">Copyright © Bloggers.com  2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
