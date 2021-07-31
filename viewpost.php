
<?php 
ob_start();
session_start();

	include("connect.php");
	include("header.php");
	if(isset($_REQUEST['did']))
      {
        $nid=$_REQUEST['did'];
        $result=mysqli_query($con,"select *from post where id=$nid");
        $row=mysqli_fetch_assoc($result);
    }
	?>

	<section class="page-section about-heading">
            <div class="container">
                <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="admin/photos/<?php echo $row['image']?>" alt="..." />

                <div class="about-heading-content">
                    <div class="row">
                        <div class="col-xl-9 col-lg-10 mx-auto">
                            <div class="bg-faded rounded p-5 text-center">
                                <h2 class="section-heading mb-4">
                                    
                                    <span class="section-heading-lower"><b><?php echo $row['posttitle']?></b></span>
                                </h2>
                                <p><?php echo $row['Description']?></p>
                                
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


	<?php
	Ob_end_flush();

?>