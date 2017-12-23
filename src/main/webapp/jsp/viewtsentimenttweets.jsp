<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
    
    <link rel="stylesheet" href="<%=request.getContextPath() %>/pagenationcss.css" />
<script src="<%=request.getContextPath() %>/pagenation.js"></script>
</head>
<body>

<%
	


System.out.println("Its came inside jsp page>>>>>>>>>>>"); 


String id1=request.getParameter("pmark");
System.out.println("pmark :"+id1); 

String id2=request.getParameter("negmrk");
System.out.println("negmrk :"+id2); 

String id3=request.getParameter("neumark");
System.out.println("neumark :"+id3); 

String id4=request.getParameter("unmark");
System.out.println("unmark :"+id4); 

String id5=request.getParameter("totcount");
System.out.println("totcount :"+id5); 
	ResultSet rs = (ResultSet) request.getAttribute("rs");
	
	String topic = "", tweets = "";
	/* 
		while (rs.next()) {
			
			topic = rs.getString(2);
			tweets = rs.getString(3);
			

		} */
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
 <div class="gradientbuttons" id="message" style="position:absolute;top:30px;left:100px">
	<p><font color="White"><h2>Detected Positive ,Negative,Neutral and Undecidable Count for Dynamic Tweets</h2></font></p>
<center>
	<div>
	
					<table  style="width: 300px ; color: White; font-weight: bold;";>
						
						<tr><td>Total Count of Tweets   :</td>&nbsp;&nbsp;&nbsp;&nbsp;<td><%=id5 %></td></tr>
						<tr><td>Positive Count of Tweets   : </td>&nbsp;&nbsp;&nbsp;&nbsp;<td><%=id1 %></td></tr>
						<tr><td>Negative Count of Tweets   :</td>&nbsp;&nbsp;&nbsp;&nbsp;<td><%=id2 %></td></tr>
					<tr><td>Neutral Count of Tweets   :</td>&nbsp;&nbsp;&nbsp;&nbsp;<td><%=id3 %></td></tr>
					<tr><td>Undecidable Count of Tweets   :</td>&nbsp;&nbsp;&nbsp;&nbsp;<td><%=id4 %></td></tr>
						</table>
					</div></center>
	
</div>
  
                    
                   
	   <div class="CSSTableGenerator"  style="width:600px;height:150px; left:100px; position:absolute; top:300px">
      <table id="results" class="pretty-table" border="5" width="200%" cellpadding="5"  id="user" style="position:absolute;">
  <h2 style="color:#069"><font color="white">Tweet Details</font></h2>
  <th scope="col"><font color="blue">College</font></th>
    <th scope="col"><font color="blue">TweetText</font></th>
    <th scope="col"><font color="blue">Detected_Sentiment</font></th>
   
   <%
			
			while(rs.next())
			{
			%>
		  		<tr>
		  			
		  			<td align="center"><font color="white"><%=rs.getString(2) %></font></td>
		  			<td align="center"><font color="white"><%=rs.getString(3) %></font></td>
		  			<td align="center"><font color="white"><%=rs.getString(4) %></font></td>
		  			
		  		  
		  		</tr>
		  	<%} %>
	   		
	   		
	  
	   		
	   		</table>
	   		
	   		
	 
	   			
	 

		
	   
	  </div>
	   				 
                    
                    
                    
              
                    
                    
                    
                    
                    
                    
                    
                    
                    
 <div id="pageNavPosition"  style="position: absolute;top: 680px;left: 150px; height:150px;"></div>                         
    <div id="pageNavPosition"  style="position: absolute;top:710px;left: 150px; height:150px;" >            
   <a href="<%=request.getContextPath() %>/Goback2?action=get"  >GO BACK?</a> 
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
<script type="text/javascript"><!--  
        var pager = new Pager('results', 5); 
      <%--   var tempValue = '<%=pageno1%>'; --%>
        pager.init();   
        pager.showPageNav('pager', 'pageNavPosition');   
        pager.showPage(1);  
    //--></script>  
    
     


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
				
				
				alert("Password changed succssfully");</script>
			</div>
<%
		}	
		if(no==2)
		{
%>
			<div class="error" id="message" style="position:absolute;top:600px;left:50px">
				<script type="text/javascript">
				
				
				alert("Sentiment is detected for Tweets");</script>
			</div>
<%
		}
%>   
</body>

 
</html>
