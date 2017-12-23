package com.sentiment;




import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Fetchtweets extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		try {
		System.out.println("its came inside fetch tweets");
		
	
			int no=Integer.parseInt(request.getParameter("no"));
			
			System.out.println("action is >>>>>>>>>>>>>"+no);
			
			if(no==1)
			{
				
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/fetchtweets.jsp");
				
					rd.forward(request, response);
				
				
			}
			
			if(no==2)
			{
				
				
				
					   HttpSession session = request.getSession(false);  
					   boolean	flag1=false;
						System.out.println("its came inside preprocessing>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
						ArrayList<String> data=new ArrayList<String>();
						
						if ( session.getAttribute( "waitPage" ) == null )
					    	   
				       	 {  
				    	   session.setAttribute( "waitPage", Boolean.TRUE );  
				    	   PrintWriter out1 = response.getWriter();  
				    	   out1.println( "<html><head>" );  
				    	   out1.println( "<title>Please Wait...</title>" );  
				       	   out1.println( "<meta http-equiv=\"Refresh\" content=\"0\">" );  
				    	   out1.println( "</head><body bgcolor='#2E8B57'>" );  
				    	   out1.println( "<br><br><br>" );
				    	   out1.print( "<center><img src='animated.gif' width='400' height='400'></img><br><br>");
				    	   out1.println("<font color='#fedcba' size='5'>");
				    	   out1.println( "Please Do not press Back or Refresh button.......<br>  " );
				    	   out1.println("<font color='#fedcba' size='5'>");
				    	   out1.println( "Fetching data from Twitter API is going on " );
				    	   out1.println("<font color='#fedcba' size='5'>");
				    	   out1.println( "Please wait....</h1></center");  
				    	   out1.close();  
				       } 
				
				
				
						else
						{
							
					session.removeAttribute( "waitPage" );  
				
				String keyword=request.getParameter("keyword");
				System.out.println("keyword is >>>>>>>>>>>>>>>>>>>>>>>>"+keyword);
				
		String filePath = getServletContext().getRealPath("/config.properties");
		
		System.out.println("filepath is >>>>>>>>>>>>>>>>>>>>>>"+filePath);
			//	String filePath = "E:\\Hadoop_workspace\\vnu\\config.properties";
			TwitterRestCall	twitterRestCall = new TwitterRestCall(filePath);
			boolean flag=	twitterRestCall.getTweetSearch(filePath, keyword);
			
			System.out.println("flag is >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+flag);
			
			if(flag)
			{
				
				
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/fetchtweets.jsp?no=2");
				
				rd.forward(request, response);
			
				
				
			}
			
			
			
			
						}
			
		}
		}
			catch (Exception e) {
			
		}
			
		
		
			
}
}