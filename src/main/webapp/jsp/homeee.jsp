
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.sentiment.*" %>

<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Responsive CSS Image Slider</title>
    
    
 
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Responsive App Selling Page - Appzy </title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets1/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT-AWESOME CORE STYLE  -->
    <link href="assets1/css/font-awesome.css" rel="stylesheet" />
    <!-- CORE CUSTOM STYLE  -->
    <link href="assets1/css/custom.css" rel="stylesheet" />
     <!-- THEME COLOUR STYLE (BY DEFAULT GREEN COLOR,  YOU CAN REPLACE green.css to red.css , orange.css, blue.css ,grey-bk.css or black-bk.css)  -->
    <link id="mainCSS" href="assets1/css/themes/green.css" rel="stylesheet" />
    <!-- GOOGLE FONTS -->
    <link href='http://fonts.googleapis.com/css?family=Yellowtail' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Signika&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
     <!-- STYLE SWITCHER STYLE -->
    <link href="assets1/css/style-switcher.css" rel="stylesheet" />
    
    
        <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @keyframes slidy {
0% { left: 0%; }
20% { left: 0%; }
25% { left: -100%; }
45% { left: -100%; }
50% { left: -200%; }
70% { left: -200%; }
75% { left: -300%; }
95% { left: -300%; }
100% { left: -400%; }
}

body { margin: 0; } 
div#slider { overflow: hidden; }
div#slider figure img { width: 20%; float: left; }
div#slider figure { 
  position: relative;
  width: 500%;
  margin: 0;
  left: 0;
  text-align: left;
  font-size: 0;
  animation: 30s slidy infinite; 
}

    </style>

    
        <script src="js/prefixfree.min.js"></script>

    
  </head>

  <body>

   
<div id="slider">
<figure>
<img src="1.JPG" alt>

<img src="3.jpg" alt>
<img src="4.jpg" alt>
<img src="5.jpg" alt>
<img src="6.jpg" alt>
</figure>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#home-sec"><font color="maroon" face="cursive" size="6">Sentiment Analysis of Top Colleges in India Using Twitter Data</font> </a>
            </div>
            <div class="navbar-collapse collapse move-me">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<%=request.getContextPath()%>/Fetchtweets?no=1">Fetch Tweets</a></li>
                    <li><a href="<%=request.getContextPath()%>/Exceldata?no=1">Import Excel_Tweets</a></li>
                    <li><a href="<%=request.getContextPath()%>/Viewtweets?no=1">View Tweets</a></li>
                     <li><a href="<%=request.getContextPath()%>/Sentimentprocess?no=1">Sentiment Analysis</a></li>
                     <li><a href="<%=request.getContextPath()%>/Cleardatabase?no=1">Clear Database</a></li>                      
                    <li><a href="<%=request.getContextPath()%>/Changepass?no=1">Change Password</a></li>
                     <li><a href="<%=request.getContextPath()%>/Barchart?no=1"  target="myframe">Graph</a></li>
                     <li><a href="<%=request.getContextPath()%>/Logout?action=get">Logout</a></li>
                </ul>
            </div>
           
        </div>
    </div>
  <iframe style="position: absolute;top: 150px;width: 700px;height: 550px;left: 700px;border-color: #556B2F;" frameborder="0"  name="myframe" >
                
               
                </iframe> 
    <div class="move-me toup-div">
        <a href="#home-sec">
            <i class="fa fa-arrow-up "></i>
        </a>

    </div>
    <!-- /SCROLL TO UP SECTION END  -->
    <!-- JQUERY SCRIPTS FUCTIONS  -->
    <script src="assets1/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS FUCTIONS  -->
    <script src="assets1/js/bootstrap.js"></script>
    <!-- SROLLING SCRIPTS   -->
    <script src="assets1/js/jquery.easing.min.js"></script>
    <!-- STYLE SWITCHER SCRIPTS   -->
    <script src="assets1/js/style-switcher.js"></script>
     <!-- ON SCROLL SCRIPTS   -->
    <script src="assets1/js/scrollReveal.js"></script>
    <!-- CUSTOM SCRIPTS   -->
    <script src="assets1/js/custom.js"></script>
    
  <%
		int no=Utility.parse(request.getParameter("no"));
		if(no==1)
		{
%>
			<div class="error" id="message" style="position:absolute;top:600px;left:50px">
				<script type="text/javascript">
				
				
				alert("Your current password is wrong please give correctly");</script>
			</div>
<%
		}
		if(no==3)
		{
%>
			<div class="error" id="message" style="position:absolute;top:600px;left:50px">
				<script type="text/javascript">
				
				
				alert("opps something went wrong");</script>
			</div>
<%
		}
		if(no==4)
		{
%>
			<div class="error" id="message" style="position:absolute;top:600px;left:50px">
				<script type="text/javascript">
				
				
				alert("Password changed succssfully");</script>
			</div>
<%
		}	
		if(no==2)
		{
%>
			<div class="error" id="message" style="position:absolute;top:600px;left:50px">
				<script type="text/javascript">
				
				
				alert("new password and confirmed password is not matching");</script>
			</div>
<%
		}
%>     
    
  </body>
</html>
