<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WELCOME</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/creative.css" rel="stylesheet">
	<script src="jquery-3.1.1.min.js"></script>



</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top" id="webdomain">Etap.ac.nz</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#aboutus">About-US</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="restaurants.html">All restaurants</a>
                    </li>
                    <li>
                    <%
if(session.getAttribute("logstatus") !=null && session.getAttribute("logstatus").equals("true")){
    %>
<div class="dropdown">
 <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Hello
  <span class="caret"></span></button>
<ul class="dropdown-menu">
    <li><a href="#">profile</a></li>
    <li><a href="Logout.jsp">Logout</a></li>
  </ul>
</div>
    <%
        }else{%>
        
<a class="page-scroll" href="login.jsp">Login</a>
<%}%>
</li>    


                    <li>
                        <a class="page-scroll" href="#">Language</a>
                    </li>
                    <li>
                        <a class="fa hotline-icon fa-phone">800-300300</a>
                    </li>
                    <li>
                       <a class="fa fa-shopping-cart cart-header"></a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
         <div class="header-content">
            <div class="header-content-inner">
                <h2 id="homeHeading">Place Your Home Delivery Order in Auckland</h2>
				<h4 id="inst-heading">Enter your area and the type of food</h4>
					<form class="form-inline">
						<div class="form-group">
							<label for="select your area">Area:</label>
							 <select name="area" type="text" class="form-control"id="area"> 
								<option>Hobson st</option>
								<option>Queen st</option>
								<option>Albert St</option>
							 </select>
                        </div>
							 <label for="select type of food">Type of Cuisine:</label>
							 <select type="text" class="form-control" id="cuisine">
								<option>Fast-food</option>
								<option>Indian</option>
							 </select>
					</form>
					<a href="restaurants.html" class="btn btn-warning">Search</a>
			</div>		
        </div>
    </header>
<div class="container" style="margin-top: 30px;">
		<section>
                
                <div class="carousel slide" id="screenshot-carousel" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#screenshot-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#screenshot-carousel" data-slide-to="1"></li>
                        <li data-target="#screenshot-carousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        
                       <div class="item active">
                            <img src="img/slide1.jpg" alt="">
								<div class="carousel-caption">
									<h2 style="font-family:indie flower,cursive;">Buy 1 and get the other 50% off</h2>
								</div>
                       </div>
                        <div class="item">
                            <img src="img/slide2.jpg" alt="">
								<div class="carousel-caption">
									<h2 style="font-family:Indie Flower, cursive;">New Student offer</h2>
								</div>							
                        </div>
                        <div class="item">
                            <img src="img/slide3.jpg" alt="">
								<div class="carousel-caption">
									<h2 style="font-family:indie flower,cursive;">McDonald Presents the new yummy chicken wrap</h2>
								</div>							
                        </div>
                    </div>

                    <a href="#screenshot-carousel" class="left carousel-control" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>

                    <a href="#screenshot-carousel" class="right carousel-control" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div> 
        </section>
	</div>		   

    <section id="aboutus">

        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-4 text-center">
					<div class= "About-us">
						<div class="fa fa-4x  fa-home text-primary sr-icons">
							<h3>About Etap</h3>
							<p class="text-muted">Etap.ac.nz is an online platform and home to all famous restaurants which offers delivery services. 
								We make it convenient for our customer to choose and order any type of food in any part of the Auckland. 
								So no more seperate apps for your favourite restaurant. Make your party smart and easy with Etap.co.nz</p>
						</div>
					</div>
                </div>
                <div class="col-md-6 col-md-4 text-center">
					<div class= "About-us">
						<div class="fa fa-4x  fa-shopping-cart text-primary sr-icons">
							<h3>What we do</h3>
							<p class="text-muted">We at Etap keep our services operating 24/7 in the city of Auckland. 
								We make sure to provide a smooth service and make your order placement an easiest task.
								Our customers can place an order through web & mobile app. Select your area, select the type of food
								and choose from the dilicious menus of a restaurant of your choice and get the hot food at your doorsteps i no time</p>
						</div>
					</div>
                </div>
				    <div class="col-md-6 col-md-4 text-center">
					<div class= "About-us">
						<div class="fa fa-4x  fa-smile-o text-primary sr-icons">
							<h3>Are you Hungry!!</h3>
							<p class="text-muted">The selection of cuisines and restaurants is endless; no matter where you are, 
							with Etap.ac.nz you'll always have your food supply right at your finger tips.
							Choose your area, select your cuisine and pay securely online using debit or credit card. 
							And if you prefer it the good old way, we also offer cash on delivery. 
							Enjoy your delicious, mouth-watering meal on time, every-time!</p>
						</div>
					</div>
                </div>
            </div>
        </div>
    </section>
    <section class="no-padding" id="portfolio">
        <div class="container-fluid">
            <div class="row no-gutter popup-gallery">
                <div class="col-lg-4 col-sm-6">
                    <a href="img/img1.jpg" class="portfolio-box">
                        <img src="img/img1.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-name">
                                    Burger King
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/img2.jpg" class="portfolio-box">
                        <img src="img/img2.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-name">
                                    Pizza Hut
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="img/img3.jpg" class="portfolio-box">
                        <img src="img/img3.jpg" class="img-responsive" alt="">
                        <div class="portfolio-box-caption">
                            <div class="portfolio-box-caption-content">
                                <div class="project-name">
                                    McDonald
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                <h2>Our Popular restarants of the month</h2>
                <div class="col-md-12 col-md-12 text-center">
                    <section class="popularlinks">
                        <a href="https://mcdonalds.co.nz/">McDonald</a>
                        <span>|</span>
                        <a href="http://www.kfc.co.nz/?gclid=CO2vnpjdr9ACFQQAvAodXxQF3Q">KFC</a>
                        <span>|</span>
                        <a href ="http://www.burgerking.co.nz/">Burger King</a>
                        <span>|</span>
                        <a href="https://www.pizzahut.co.nz/">Pizza Hut</a>
                </div>
            </div>

          </section>      
    </aside>

    <section id="contact">
        <div class="container">
        </div>
    </section>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/creative.min.js"></script>

</body>

</html>
