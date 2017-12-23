<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@ page import="com.sentiment.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8" />
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
</head>
<body>

<%

ArrayList<String> data=new ArrayList<String>();
 data=LoginDao.keywords();
 System.out.print("arraylist data is >>>>>>>>>>>>"+data);
 String data1="";
 



%>
 
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#home-sec">Sentiment Analysis App</a>
            </div>
           
           
        </div>
    </div>
    
<marquee behavior="scroll" direction="down"><img src="twitter.jpg" width="100" height="200" alt="Natural" /></marquee>
 
    <div id="contact-sec">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <h1 data-scroll-reveal="enter from the bottom after 0.1s"><strong>DO You Want TO Truncate Your Table</strong></h1>
                    <p data-scroll-reveal="enter from the bottom after 0.2s"   style=" font-style:bold;   color:#2E8B57; font-size: 20px;">
                     Clear Database
                    </p>
                    <form data-scroll-reveal="enter from the bottom after 0.3s" action="<%=request.getContextPath() %>/Cleardatabase" method="get">
                    <input type="hidden" name="no" value="2"></input>
                  
                        <div class="form-group">
                        <label><font style="color: maroon;font-weight: bold;">Select Your Table</font></label>
                        
                        
                         
                            
                            <select name="select" id="slectboxid">
                         
                  <option value="m_tweets">m_tweets</option>
                    <option value="m_tweet_keywords">m_tweet_keywords</option>
                    <option value="m_sentiment">m_sentiment</option>
                       <option value="m_expand_keywords">m_expand_keywords</option>
                    
                             </select>
                        </div>
                        
                        <div class="form-group">
                          
                            
                            <input type="submit" class="form-control"  value="Clear_Database" style="background-color:#2E8B57" required="required" placeholder="Your Name" />
                           <a href="<%=request.getContextPath() %>/Goback?action=get"  >GO BACK?</a> 
                           
                        </div>

                    </form>
                </div>
                
            </div>
        </div>
    </div>
  
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
				
				
				alert("Table contents Truncated Successfully");</script>
			</div>
<%
		}	
		
%>   
</body>




</html>
