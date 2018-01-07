package com.sentiment;






import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dataa.Sentimentprocessexicution;

import java.util.HashMap;
import java.util.Map;
public class Sentimentprocess extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{	String college="";
		ArrayList<String> data=new ArrayList<String>();
		String sensitivetype="";
		boolean flag77=false;
		boolean ff=false;
		 int positivecount11=0;
		 int negativecount11=0;
		 int undecidablecount11=0;
		 int neutralcount11=0;
		 
		 int totalcount =0;
		 boolean finalcount=false;
		try {
		System.out.println("its came Sentimentprocess fetch tweets");
		
	
			int no=Integer.parseInt(request.getParameter("no"));
			
			System.out.println("action is >>>>>>>>>>>>>"+no);
			
			if(no==1)
			{
				
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/sentiment.jsp");
				
					rd.forward(request, response);
				
				
			}
			
			if(no==2)
			{
				  HttpSession session = request.getSession(false); 

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
			    	   out1.println( "Sentiment Detection  is going on " );
			    	   out1.println("<font color='#fedcba' size='5'>");
			    	   out1.println( "Please wait....</h1></center");  
			    	   out1.close();  
			       } 
					else
					{
						
				session.removeAttribute( "waitPage" );  
		        college=request.getParameter("select");
				System.out.println("college is >>>>>>>>>>>>>>>>>>>>>>>>"+college);
				
			
			
				HashMap<Integer, ArrayList<String>> map_tclaim=new HashMap<Integer, ArrayList<String>>();
		     	map_tclaim=AdminDAO.getm_tweets(college);
		     	
		     	map_tclaim.size();
		     	System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>size"+map_tclaim.size());
		     	 System.out.println("entry set is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+map_tclaim.entrySet());
	     	
	     	if(map_tclaim.size()>0)
	       	{
	        	  
	           for(Map.Entry m4:map_tclaim.entrySet())  
	           {
	        	  // System.out.println("entry set is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+map_tclaim.entrySet());
		         	  m4.getKey();
		         	  String values = m4.getValue().toString();
		         	  String first=values.replace("[", "").replace("]", "");
		         	  String a[]=first.split("~~");         	 
		         	  String part1=a[0];
	       
			         System.out.println("Column 1 is>>>>>>>>>>>>>>>>>>>>"+part1);
			         String part2=a[1];
			         System.out.println("Column 2 is>>>>>>>>>>>>>>>>>>>>"+part2);
			         	         
			       /*   part5= Temp.removehttplink(part5);*/
			          
			         part2= Temp.removeUrl(part2);
			         System.out.println("String part2 is>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+part2);		         
			         data=Preprocessing1.filter(part2);
			         StringBuffer buf = null;
			         String str=""+data;
			         data.add(str);
						for(int ii=0;ii<data.size();ii++)
						{
							buf=new StringBuffer();
							buf.append(data.get(ii));
						}					
						String s=buf.toString();
						s=s.replace("[", "");
						s=s.replace("]", "");
					 	ff= AdminDAO.storefiltereddata(part1, college,s);
				
					
			           
				
	           }
			
			
	      boolean dd=     Sentimentprocessexicution.senti(college); 
	      
	      System.out.println("ddddddddd"+dd);
	     	
	     	if(dd)  
	
	     	{
	     	String poss="positive";
			String negg="negative";
			String neuu="neutral";
			
			String undecidable="undecidable";
		 positivecount11 = PoolingDAO.getpositivecount(college,poss);
			System.out.println("positivecount is >>>>>>>>>>>>>>>>>>>>"+positivecount11);
			
			 negativecount11 = PoolingDAO.getnegativecount(college,negg);
				System.out.println("negativecount is >>>>>>>>>>>>>>>>>>>>"+negativecount11);
			
				 neutralcount11 = PoolingDAO.getneuralcount(college,neuu);
					System.out.println("nuetralcount is >>>>>>>>>>>>>>>>>>>>"+neutralcount11);   
     	
     	
					 undecidablecount11 = PoolingDAO.getundecidablecount(college,undecidable);
						System.out.println("undecidablecount is >>>>>>>>>>>>>>>>>>>>"+undecidablecount11); 
						
					 totalcount = PoolingDAO.gettotalcount(college);
						System.out.println("totalcount is >>>>>>>>>>>>>>>>>>>>"+totalcount); 
						
						
						
					finalcount= AdminDAO.insertfinalcount(college,positivecount11,negativecount11,neutralcount11,undecidablecount11,totalcount);	
						
	     	//----------------------------------------------------------------------------------------------------------------------------------------------------
			
	     	}	
			
			
		}}}
			
			if(finalcount)
			{
				ResultSet rs=LoginDao.gettweets(college);
				request.setAttribute("rs",rs);
				
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/viewtsentimenttweets.jsp?no=2&pmark="+positivecount11+"&negmrk="+negativecount11+"&neumark="+neutralcount11+"&unmark="+undecidablecount11+"&totcount="+totalcount+"");
				
				rd.forward(request, response);
			
				
				
			}
		
		
		
		
		
		
		
		
		
		}
	
	
			catch (Exception e) {
			// TODO: handle exception
				e.printStackTrace();
		}
			
		
	}
			

}
