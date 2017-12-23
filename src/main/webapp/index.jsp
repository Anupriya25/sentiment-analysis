<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<%@ page import="com.sentiment.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>


    <meta charset="utf-8">

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="assets/plugins/isotope/isotope.css" rel="stylesheet" media="screen" />
    <link href="assets/plugins/fancybox/jquery.fancybox.css" rel="stylesheet" />
    <link href="assets/plugins/IconHoverEffects-master/css/component.css" rel="stylesheet" />
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/about-achivements.css" rel="stylesheet" />
    <link id="mainStyle" href="assets/css/style.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>


    <script>
      function validateEmail(emailField)
      {
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (reg.test(emailField.value) == false)
        {
          alert('Invalid Email Address');
          emailField.value = null;
          return false;
        }

        return true;

      }
    </script>

    <script type="text/javascript">


      function Validate()
      {
        var val = document.getElementById('ids').value;

        if (!val.match(/^[a-zA-Z]+$/))
        {
          alert('Company Name  shouldnot contain Integers');
          return false;
        }

        return true;
      }


    </script>

    <script>


      function ValidateAlpha(evt)
      {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
        {

          alert('Numbers not allowed');
          return false;
        }

        return true;
      }



    </script>
    <script type="text/javascript">


      function validatePassword(fld) {
        var error = "";
        var illegalChars = /[\W_]/; // allow only letters and numbers

        if (fld.value == "") {
          fld.style.background = 'white';
          error = "You didn't enter a password.\n";
          alert(error);
          return false;

        } else if ((fld.value.length < 7) || (fld.value.length > 15)) {
          error = "The password is the wrong length. \n";
          fld.style.background = 'white';
          alert(error);
          return false;

        } else if (illegalChars.test(fld.value)) {
          error = "The password contains illegal characters.\n";
          fld.style.background = 'white';
          alert(error);
          return false;

        } else if ( (fld.value.search(/[a-zA-Z]+/)==-1) || (fld.value.search(/[0-9]+/)==-1) ) {
          error = "The password must contain at least one numeral.\n";
          fld.style.background = 'white';
          alert(error);
          return false;

        } else {
          fld.style.background = 'White';
        }
        return true;
      }
    </script>
    <script type="text/javascript">




      function isNumberKey(evt)
      {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
          return false;

        return true;
      }



    </script>

    <script>
      function validatePhone(PhoneField)
      {

        var reg = /[7-9]{1}\d{9}/;

        if (reg.test(PhoneField.value) == false)
        {
          alert('Invalid Phone Number');
          PhoneField.value = null;
          return false;
        }

        return true;

      }
    </script>






    <script type="text/javascript">

      function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
          alert('Only Numbers should be filled out');
          return false;
        }






        return true;
      }
    </script>



</head>
<body>

<form class="register active" action="<%=request.getContextPath()%>/Register" method="post">
    <div class="navbar navbar-fixed-top" role="navigation">


        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="fa fa-bars mobile-bars" style=""></span>
                </button>
                <!-- <a class="navbar-brand" href="index.html" >
                    <img src="assets/img/logo.png" alt="" />
                </a> -->
            </div>
            <div class="navbar-collapse collapse" data-scrollreveal="enter from the right 50px">
                <ul class="nav navbar-nav">
                    <!-- <li class=""><a href="#Homepage">Home</a></li>menu links -->
                    <!-- <li><a href="#section-about">About</a></li>
                    <li><a href="#section-works">Our Works</a></li>-->
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="#section-contact">Registration</a></li>
                </ul>
            </div>

        </div>
    </div>
    <!-- END HEADER SECTION-->

    <!--PAGE CONTENT-->
    <!-- HOMEPAGE SECTION-->

    <section id="Homepage">
        <div class="container">
            <div class="row">
                <div data-scrollreveal="wait 0.5s and then ease-in-out 50px" class="col-md-6 col-md-offset-3">

                    <div class="align-center">
                        <h2 class="main-text">Sentiment Analysis of Top Colleges in India Using Twitter Data </h2>

                    </div>
                </div>
            </div>
            <div class="row">
                <div data-scrollreveal="enter from the left 500px" class="col-md-6 col-md-offset-3">

                    <div class="align-center">
                        <div class="col-md-12 align-center">
                            <div class="hi-icon-effect-9 hi-icon-effect-9a">
                                <!-- <a href="#Homepage" class="hi-icon  hi-icon-screen"></a>
                                <a href="#section-about" class="hi-icon  hi-icon-user"></a>
                                <a href="#section-works" class="hi-icon  hi-icon-images"></a>
                                <a href="#section-services" class="hi-icon hi-icon-cog"></a> -->
                                <!--  <a href="#section-contact" class="hi-icon hi-icon-location"></a> -->
                            </div>
                            <br />
                            <!--  <ul class="social-network social-circle">
                                 <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                                 <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                 <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                 <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                                 <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                             </ul> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--  <section id="section-about" class="section">
         <div class="container" data-scrollreveal='after 0.30s'>
             <div class="row">
                 <div class="col-md-offset-2 col-md-8">
                     <div>
                         <h2 class="heading">About Us</h2>
                         <p class="heading-text">
                             Sed accumsan venenatis blandit. Duis auctor hendrerit metus,
                                 a euismod lacus egestas vitae. Sed quis elit eu nisl tincidunt euismod at in risus.
                         </p>

                     </div>
                 </div>
             </div>
         </div>
     </section> -->
    <!--   <section  class="section bgcolor-whitesmoke">
          <div class="container" data-scrollreveal='wait 0.10s'>
              <div class="row ">
                  <div class="col-md-4">
                      <div class="team-member text-center">
                          <figure class="member-photo">
                              <img src="assets/img/team/team1.png" alt="" /></figure>
                          <div class="team-detail">
                              <h4>vehicula quis</h4>
                              <span class="text-bold">Sed accumsan</span>
                              <p>
                                  Sed accumsan venenatis blandit. Duis auctor hendrerit metus Sed accumsan venenatis blandit. Duis auctor hendrerit metus
                              </p>
                          </div>
                      </div>
                      <div class="team-member text-center">
                          <figure class="member-photo">
                              <img src="assets/img/team/team2.jpg" alt="" /></figure>
                          <div class="team-detail">
                              <h4>vehicula quis</h4>
                              <span class="text-bold">venenatis blandit</span>
                              <p>
                                  Sed accumsan venenatis blandit. Duis auctor hendrerit metus Sed accumsan venenatis blandit. Duis auctor hendrerit metus
                              </p>
                          </div>
                      </div>
                  </div>

                  <div class="col-md-offset-1 col-md-6">
                      <div data-scrollreveal="enter right">
                          <ul class="timeline">
                              <li class="time-label">
                                  <span class="bg-orange">Some Of Our Achivements
                                  </span>
                                  <br />
                                  <br />
                              </li>

                              <li class="time-label">
                                  <span class="bg-light-blue"> Year 2014
                                  </span>
                              </li>

                              <li>
                                  <i class="fa fa-envelope bg-blue"></i>
                                  <div class="timeline-item">
                                      <span class="time"><i class="fa fa-clock-o"></i>20 Feburary</span>
                                      <h3 class="timeline-header"><a href="#">Sed accumsan</a> hendrerit metus</h3>
                                      <div class="timeline-body">
                                          Sed accumsan venenatis blandit. Duis auctor hendrerit metus
                                      </div>
                                      <div class='timeline-footer'>
                                          <a class="btn btn-primary btn-xs">Share</a>
                                          <a class="btn btn-danger btn-xs">Read More</a>
                                      </div>
                                  </div>
                              </li>

                              <li>
                                  <i class="fa fa-user bg-aqua"></i>
                                  <div class="timeline-item">
                                      <span class="time"><i class="fa fa-clock-o"></i>02 January</span>
                                      <h3 class="timeline-header no-border"><a href="#">Venenatis blandit.</a>  Duis auctor hendrerit metus</h3>
                                  </div>
                              </li>

                              <li class="time-label">
                                  <span class="bg-green"> Year 2013
                                  </span>
                              </li>

                              <li>
                                  <i class="fa fa-camera bg-purple"></i>
                                  <div class="timeline-item">
                                      <span class="time"><i class="fa fa-clock-o"></i>20 December</span>
                                      <h3 class="timeline-header"><a href="#">Blandit</a> New Photo Show</h3>
                                      <div class="timeline-body">
                                          <img src="assets/img/about/imgTime.jpg" alt="" class='margin' />
                                          <img src="assets/img/about/imgTime.jpg" alt="" class='margin' />
                                      </div>
                                  </div>
                              </li>

                              <li>
                                  <i class="fa fa-video-camera bg-maroon"></i>
                                  <div class="timeline-item">
                                      <span class="time"><i class="fa fa-clock-o"></i>15 June</span>
                                      <h3 class="timeline-header"><a href="#">Venenatis blandit</a> New Event</h3>
                                      <div class="timeline-body">
                                          <iframe width="300" height="169" src="//www.youtube.com/embed/Ycv5fNd4AeM"></iframe>
                                      </div>
                                  </div>
                              </li>

                              <li>
                                  <i class="fa fa-clock-o"></i>
                              </li>
                          </ul>
                      </div>
                  </div>

              </div>

          </div>
      </section> -->
    <!-- END ABOUT SECTION-->
    <!-- WORKS SECTION-->
    <!--  <section id="section-works" class="section" >
         <div class="container" data-scrollreveal="enter top move 50px">
             <div class="row">
                 <div class="col-md-offset-2 col-md-8">
                     <div>
                         <h2 class="heading">Portfolio</h2>
                         <p class="heading-text">
                             Morbi ipsum orci, vehicula quis nisi nec, egestas vehicula nisi.
                                 Morbi ipsum orci, vehicula quis nisi nec, egestas vehicula nisi.
                         </p>
                     </div>
                 </div>
             </div>
         </div>
     </section> -->
    <!--  <section >
         <div class="container" data-scrollreveal="enter right and move 40px, over 0.8s">


             <div class="row">
                 <nav id="filter" class="col-md-12 text-center">
                     <ul>
                         <li><a href="#" class="current  btn btn-default" data-filter="*">All Items</a></li>
                         <li><a href="#" class="btn btn-default" data-filter=".webdesign">Web Design</a></li>
                         <li><a href="#" class="btn btn-default" data-filter=".photography">Photography</a></li>
                         <li><a href="#" class="btn btn-default" data-filter=".print">Print</a></li>
                     </ul>
                 </nav>
                 <div class="col-md-12">
                     <div class="row">
                         <div class="portfolio-items isotopeWrapper clearfix" id="3">

                             <article class="col-md-4 isotopeItem webdesign">
                                 <div class="portfolio-item">
                                     <img src="assets/img/portfolio/img1.jpg" alt="" />
                                     <div class="portfolio-desc align-center">
                                         <div class="folio-info">
                                             <h5><a href="#">Duis hendrerit</a></h5>
                                             <a href="assets/img/portfolio/img1.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                         </div>
                                     </div>
                                 </div>
                             </article>

                             <article class="col-md-4 isotopeItem photography">
                                 <div class="portfolio-item">
                                     <img src="assets/img/portfolio/img2.jpg" alt="" />
                                     <div class="portfolio-desc align-center">
                                         <div class="folio-info">
                                             <h5><a href="#">Duis hendrerit</a></h5>
                                             <a href="assets/img/portfolio/img2.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                         </div>
                                     </div>
                                 </div>
                             </article>


                             <article class="col-md-4 isotopeItem photography">
                                 <div class="portfolio-item">
                                     <img src="assets/img/portfolio/img3.jpg" alt="" />
                                     <div class="portfolio-desc align-center">
                                         <div class="folio-info">
                                             <h5><a href="#">Duis hendrerit</a></h5>
                                             <a href="assets/img/portfolio/img3.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                         </div>
                                     </div>
                                 </div>
                             </article>

                             <article class="col-md-4 isotopeItem print">
                                 <div class="portfolio-item">
                                     <img src="assets/img/portfolio/img4.jpg" alt="" />
                                     <div class="portfolio-desc align-center">
                                         <div class="folio-info">
                                             <h5><a href="#">Duis hendrerit</a></h5>
                                             <a href="assets/img/portfolio/img4.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                         </div>
                                     </div>
                                 </div>
                             </article>

                             <article class="col-md-4 isotopeItem photography">
                                 <div class="portfolio-item">
                                     <img src="assets/img/portfolio/img5.jpg" alt="" />
                                     <div class="portfolio-desc align-center">
                                         <div class="folio-info">
                                             <h5><a href="#">Duis hendrerit</a></h5>
                                             <a href="assets/img/portfolio/img5.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                         </div>
                                     </div>
                                 </div>
                             </article>

                             <article class="col-md-4 isotopeItem webdesign">
                                 <div class="portfolio-item">
                                     <img src="assets/img/portfolio/img6.jpg" alt="" />
                                     <div class="portfolio-desc align-center">
                                         <div class="folio-info">
                                             <h5><a href="#">Duis hendrerit</a></h5>
                                             <a href="assets/img/portfolio/img6.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                         </div>
                                     </div>
                                 </div>
                             </article>

                             <article class="col-md-4 isotopeItem print">
                                 <div class="portfolio-item">
                                     <img src="assets/img/portfolio/img7.jpg" alt="" />
                                     <div class="portfolio-desc align-center">
                                         <div class="folio-info">
                                             <h5><a href="#">Duis hendrerit</a></h5>
                                             <a href="assets/img/portfolio/img7.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                         </div>
                                     </div>
                                 </div>
                             </article>

                             <article class="col-md-4 isotopeItem photography">
                                 <div class="portfolio-item">
                                     <img src="assets/img/portfolio/img8.jpg" alt="" />
                                     <div class="portfolio-desc align-center">
                                         <div class="folio-info">
                                             <h5><a href="#">Duis hendrerit</a></h5>
                                             <a href="assets/img/portfolio/img8.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                         </div>
                                     </div>
                                 </div>
                             </article>

                             <article class="col-md-4 isotopeItem print">
                                 <div class="portfolio-item">
                                     <img src="assets/img/portfolio/img9.jpg" alt="" />
                                     <div class="portfolio-desc align-center">
                                         <div class="folio-info">
                                             <h5><a href="#">Duis hendrerit</a></h5>
                                             <a href="assets/img/portfolio/img9.jpg" class="fancybox"><i class="fa fa-search-plus fa-2x"></i></a>
                                         </div>
                                     </div>
                                 </div>
                             </article>
                         </div>

                     </div>


                 </div>
             </div>

         </div>
     </section> -->
    <!--END WORKS SECTION-->

    <!-- SERVICES SECTION-->
    <!-- <section id="section-services" class="section" >
        <div class="container" data-scrollreveal='after 0.30s'>
            <div class="row">
                <div class="col-md-offset-2 col-md-8">
                    <div>
                        <h2 class="heading">Services</h2>
                        <p class="heading-text">
                            Curabitur sit amet turpis dolor. Mauris feugiat libero at placerat elementum.
                                 Fusce ac nibh at nunc accumsan luctus. Nam a libero in est luctus consequat.
                                Nam eu nibh felis.
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!--  <section  class="section bgcolor-whitesmoke">
         <div class="container">

             <div class="row">
                 <div data-scrollreveal='over 0.8s' class="col-lg-3">
                     <div class="align-center">
                         <div class="hi-icon-effect-1 hi-icon-effect-1a">
                             <a href="#" class="hi-icon hi-icon-contract"></a>
                         </div>
                         <h4 class="txt30">Lorem ipsum</h4>
                         <p>
                             Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no.
                         Mei cu dicat voluptaria volumus.
                         </p>
                     </div>
                 </div>
                 <div class="col-lg-3 " >
                     <div data-scrollreveal="enter left and move 40px, over 0.8s" class="align-center margin-top50">
                         <div class="hi-icon-effect-1 hi-icon-effect-1a">
                             <a href="#" class="hi-icon hi-icon-earth"></a>
                         </div>
                         <h4 class="txt30" >Graeco volumus</h4>
                         <p>
                             Lorem ipsum dolor sit amet, mutat graeco volumus ad eam, singulis patrioque comprehensam nam no.
                         Mei cu dicat voluptaria volumus.
                         </p>
                     </div>
                 </div>



                 <div data-scrollreveal="enter right and move 40px, over 0.8s" class="col-lg-6">

                     <div data-scrollreveal="enter right">
                         <ul class="timeline">
                             <li class="time-label">
                                 <span class="bg-green">Things We Have For You
                                 </span>
                                 <br />
                                 <br />
                             </li>

                             <li>
                                 <i class="fa fa-comments bg-yellow"></i>
                                 <div class="timeline-item">

                                     <div class="timeline-body" style="background-color: whitesmoke;">
                                         Sed accumsan venenatis blandit. Duis auctor hendrerit metus sed accumsan.
                                     </div>
                                     <div class='timeline-footer'>
                                         <a class="btn btn-primary btn-xs">Request Quote</a>
                                         <a class="btn btn-danger btn-xs">Order Now</a>
                                     </div>
                                 </div>
                             </li>

                             <li>
                                 <i class="fa fa-user bg-aqua"></i>
                                 <div class="timeline-item">
                                     <span class="time">New Service</span>
                                     <h3 class="timeline-header no-border"><a href="#"> Sed accumsan</a> Duis auctor hendrerit metus</h3>
                                 </div>
                             </li>
                             <li class="time-label">

                                 <span class="bg-blue">Call US : +04-000-000-00
                                 </span>
                             </li>

                             <li>
                                 <i class="fa fa-clock-o"></i>
                             </li>
                         </ul>
                     </div>
                 </div>

             </div>

         </div>
     </section> -->
    <!-- END SERVICES SECTION-->
    <!-- CONTACT SECTION-->
    <!--  <section id="section-contact" class="section">
         <div class="container" data-scrollreveal="enter left and move 40px over 0.8s">
             <div class="row">
                 <div class="col-md-offset-2 col-md-8">
                     <div>
                         <h2 class="heading">Contact us</h2>
                         <p class="heading-text">
                             Donec felis nunc, sodales eget pharetra viverra, hendrerit nec nulla. Quisque vel porttitor metus, at convallis velit.
                         </p>

                     </div>
                 </div>
             </div>
         </div>
     </section> -->
    <section>
        <div class="container">
            <div class="row" data-scrollreveal="enter right and move 40px, over 0.8s">
                <div class="col-md-8">
                    <div  id="contact-form" >


                        <div class="col-md-6 form-group">
                            <label for="name">Your Name</label>
                            <input type="text" name="name" class="form-control" onKeyPress="return ValidateAlpha(event);" id="name" placeholder="Your Name"  />

                        </div>
                        <div class="col-md-6 form-group">
                            <label for="email">Your Email</label>
                            <input type="email" class="form-control" name="email" id="email" onblur="validateEmail(this);" placeholder="Your Email"  />

                        </div>


                        <div class="col-md-6 form-group">
                            <label for="name">Your Password</label>
                            <input type="password" name="pass" class="form-control" id="name" onblur="validatePassword(this);" placeholder="Your Password"  />

                        </div>
                        <!-- <div class="col-md-a6 form-group">
                            <label for="email">Your DOB</label>
                            <input type="text" class="form-control" name="dob" id="email" placeholder="Your DOB"  />

                        </div> -->

                        <div class="col-md-6 form-group">
                            <label for="name">Your DOB</label>
                            <input type="date" name="dob" class="form-control" id="name" placeholder="Your  DOB"  />

                        </div>
                        <div class="col-md-6 form-group">
                            <label for="email">Your MobileNo</label>
                            <input type="text" class="form-control" name="number" id="email" onblur="validatePhone(this);"  onkeypress="return isNumber(event);" maxlength="10" placeholder="Your MobileNo"  />

                        </div>


                        <div class="col-md-12 form-group">
                            <label for="subject">Gender:</label>
                            <select id="gender" name="gender" class="gender" required="yes">
                                <option value="">I am...</option>
                                <option value="FEMALE" >
                                    Female</option>
                                <option value="MALE" >
                                    Male</option>
                                <option value="OTHER" >
                                    Other</option>
                            </select>

                        </div>
                        <!--   <div class="col-md-12 form-group">
                              <label >Message</label>
                              <textarea class="form-control" name="message" rows="5" ></textarea>

                          </div> -->

                        <button type="submit" style="height: 40px; margin-bottom: 50px;" class="col-md-offset-4 col-md-4 btn btn-primary">Register</button>


                    </div>
                </div>
                <!--      <div class="col-md-4">
                   <div data-scrollreveal='over 0.8s'>
                       <div class="align-center" style="margin-top: 100px;">

                           <i class="fa fa-map-marker fa-5x"></i>
                           <h4 class="text-bold" style="font-size: 30px;">Our Location</h4>
                           <p>
                               124, New York Street, USA
                           </p>
                           <p>
                               Call: +044-678-098
                           </p>
                           <p>
                               Mail: Info@yourmail.com
                           </p>
                       </div>
                   </div>
               </div>
               ./span12 -->
            </div>

        </div>
    </section>
    <!-- END CONTACT SECTION-->
    <!--END PAGE CONTENT-->
    <!-- FOOTER SECTION-->
    <!-- <section id="footer" class="section footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <ul class="social-network social-circle">
                        <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-rss"></i></a></li>
                        <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" class="icoGoogle" title="Google +"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
                <div class="col-sm-6 align-center">
                    <div class="col-sm-12">
                        <p>Copyright &copy; yourcompanyname.com</p>
                        <p>2014 All Rights Reserved</p>
                    </div>
                </div>
            </div>


        </div>

    </section> -->

    <%--    <%
   int no=Integer.parseInt(getParameter("no"));

   System.out.print("no is >>>>>>>>>>>>>>>>>>"+no);


   %> --%>
</form>
<!-- END FOOTER SECTION-->
<!-- SCROLLUP LINK SECTION-->
<a href="#Homepage" class="scrollup"><i class="fa fa-chevron-up"></i></a>
<!--END SCROLLUP LINK SECTION-->
<!-- STYLE SWITCHER SECTION-->
<div  class="panel" style="color:white">
    <div id="styledemo"  style="left: 0px;">
        <span id="theme_blue" style="background-color:#37AFFF" ></span>
        <span id="theme_green" style="background-color:#469E66" ></span>
        <span id="theme_brown" style="background-color:#E69351" ></span>
        <span id="theme_red" style="background-color:#E7484E" ></span>
    </div>
</div>


<a class="trigger" href="#"></a>
<!-- END STYLE SWITCHER SECTION-->
<!-- MAIN SCRIPTS SECTION-->
<script src="assets/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script src="assets/js/jquery.js"></script>
<script src="assets/js/scrollReveal.js"></script>
<script>
  window.scrollReveal = new scrollReveal(); //please put this script here to show animation at the time of scroll
</script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
<script src="assets/plugins/isotope/jquery.isotope.min.js"></script>
<script src="assets/plugins/fancybox/jquery.fancybox.pack.js"></script>
<script src="assets/js/jquery.localscroll-1.2.7-min.js"></script>
<script src="assets/js/jquery.appear.js"></script>
<script src="assets/scripts/main.js"></script>

<!--END MAIN SCRIPTS SECTION-->


<%
    int no=Utility.parse(request.getParameter("no"));
    if(no==3)
    {
%>
<div class="error" id="message" style="position:absolute;top:600px;left:50px">
    <script type="text/javascript">


      alert("Username Already Exists Please Register witrh different username");</script>
</div>
<%
    }
    if(no==1)
    {
%>
<div class="error" id="message" style="position:absolute;top:600px;left:50px">
    <script type="text/javascript">


      alert("Registration Successfull");</script>
</div>
<%
    }

    if(no==2)
    {
%>
<div class="error" id="message" style="position:absolute;top:600px;left:50px">
    <script type="text/javascript">


      alert("opps something went wrong");</script>
</div>
<%
    }
%>

</body>


</html>

















