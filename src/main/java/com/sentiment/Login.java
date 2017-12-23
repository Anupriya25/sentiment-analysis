
package com.sentiment;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@SuppressWarnings("serial")
public class Login extends HttpServlet 
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		PrintWriter out = response.getWriter();
		try
		{
			String name=request.getParameter("name");
			System.out.println("username is>>>>>>>>>>>>>"+name);
			String pass=request.getParameter("pass");
			System.out.println("pass is>>>>>>>>>>>>>"+pass);
			
			boolean result=LoginDao.login(name, pass);
	
			if(result)
			{
				HttpSession session=request.getSession(true);
				
				
				
				request.setAttribute("admin", name);
				session.setAttribute("admin", name);
				
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/homeee.jsp");
				rd.forward(request, response);
			}
			else
				
				response.sendRedirect("login.jsp?no=1");
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in AdminLogin Servlet......"+e);
			out.println("Opps's Error is in AdminLogin Servlet......"+e);
		}
	}
}
