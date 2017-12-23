package com.sentiment;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;







public class Changepass extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		PrintWriter out=response.getWriter();
		try
		{
			
			int no=Integer.parseInt(request.getParameter("no"));
			
			System.out.println("action is >>>>>>>>>>>>>"+no);
			
			if(no==1)
			{
				
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/changepassword.jsp");
				rd.forward(request, response);
				
			}
			
			if(no==2)
			{
			
				String pass=request.getParameter("cpass");
				System.out.println(""+pass);
				String npass=request.getParameter("newpass");
				System.out.println(""+npass);
				String cpass=request.getParameter("crpass");
				System.out.println(""+cpass);
				HttpSession session=request.getSession(false);  
		        String n=(String)session.getAttribute("admin");  
		        System.out.println(""+n);
				boolean result=LoginDao.checkadminexistance(n, pass);
				if(result)
				{
					if(npass.equals(cpass))
					{
						result=LoginDao.chnagePass(npass, n);
						if(result)
						{
							
							
							RequestDispatcher rd=request.getRequestDispatcher("/jsp/homeee.jsp?no=4");
							rd.forward(request, response);
						}
						else
						{
							RequestDispatcher rd=request.getRequestDispatcher("/jsp/changepassword.jsp?no=3");
							rd.forward(request, response);
						}
					}
					else
					{
						
						
						RequestDispatcher rd=request.getRequestDispatcher("/jsp/changepassword.jsp?no=2");
						rd.forward(request, response);
					}
				}
				else
				{
					
					
					
					RequestDispatcher rd=request.getRequestDispatcher("/jsp/changepassword.jsp?no=5");
					rd.forward(request, response);
				}
			
		}
			
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in user ChangePass Servlet......"+e);
			out.println("Opps's Error is in Admin ChangePass Servlet......"+e);
		}
	}
}
