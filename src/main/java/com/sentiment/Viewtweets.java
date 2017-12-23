package com.sentiment;




import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;









public class Viewtweets extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		try {
		System.out.println("its came inside fetch tweets");
		
	
			int no=Integer.parseInt(request.getParameter("no"));
			
			System.out.println("action is >>>>>>>>>>>>>"+no);
			
			if(no==1)
			{
				
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/viewtweets.jsp");
				
					rd.forward(request, response);
				
				
			}
			
			if(no==2)
			{
				
				
				
					 
							
					
				
				String keyword=request.getParameter("select");
				System.out.println("keyword is >>>>>>>>>>>>>>>>>>>>>>>>"+keyword);
				
				ResultSet rs=LoginDao.gettweets(keyword);
				request.setAttribute("rs",rs);
                RequestDispatcher rd=request.getRequestDispatcher("/jsp/viewtweets1.jsp");
				
				rd.forward(request, response);
			
				
		/*		
		String		filePath = getServletContext().getRealPath("/config.properties");
		
		
			
			if(flag)
			{
				
				
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/fetchtweets.jsp?no=2");
				
				rd.forward(request, response);
			
				
				
			}*/
			
			
			
			
						}
		
		}
			catch (Exception e) {
			// TODO: handle exception
		}
			
		
		
			
}
}