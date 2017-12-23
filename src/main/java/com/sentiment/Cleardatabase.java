package com.sentiment;




import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;









public class Cleardatabase extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		try {
		System.out.println("its came inside fetch tweets");
		
	
			int no=Integer.parseInt(request.getParameter("no"));
			
			System.out.println("action is >>>>>>>>>>>>>"+no);
			
			if(no==1)
			{
				
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/cleardatabase.jsp");
				
					rd.forward(request, response);
				
				
			}
			
			if(no==2)
			{
				
				
				
					 
							
					
				
				String tablename=request.getParameter("select");
				System.out.println("tablename is >>>>>>>>>>>>>>>>>>>>>>>>"+tablename);
				
				boolean rs=LoginDao.truncatetable(tablename);
				
				if(rs)
				{
                RequestDispatcher rd=request.getRequestDispatcher("/jsp/cleardatabase.jsp?no=4");
				
				rd.forward(request, response);
			
				}
				else
				{
					
					
					
					 RequestDispatcher rd=request.getRequestDispatcher("/jsp/cleardatabase.jsp?no=3");
						
						rd.forward(request, response);
					
					
					
				}
				
				
				
			
			
						}
		
		}
			catch (Exception e) {
			// TODO: handle exception
		}
			
		
		
			
}
}