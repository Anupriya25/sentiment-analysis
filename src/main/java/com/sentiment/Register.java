 package com.sentiment;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet 
{
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	
	boolean flag=false;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException 
	{
		
		
		System.out.println("its came into register page ");
		
		
		String m_name=req.getParameter("name");
		System.out.println("+++++++++++"+m_name);
		
		String email=req.getParameter("email");
		System.out.println("+++++++++++"+email);
		
		String m_pass=req.getParameter("pass");
		System.out.println("+++++++++++"+m_pass);
		
		String dob=req.getParameter("dob");
		System.out.println("+++++++++++"+dob);
		
		String number=req.getParameter("number");
		System.out.println("+++++++++++"+number);
		
		
		
		String m_gender=req.getParameter("gender");
		System.out.println("+++++++++++"+m_gender);
		
		
		
		
		
		
		if(LoginDao.ChkUser(m_name))
		{
		 
			
			flag=LoginDao.register(m_name, email, m_pass, dob,number, m_gender);
			
			if(flag)
			{
				
				RequestDispatcher rd=req.getRequestDispatcher("login.jsp?no=4");
				rd.forward(req, resp); 
			 
				
			}else
			{
				
				RequestDispatcher rd=req.getRequestDispatcher("index.jsp?no=2");
				rd.forward(req, resp); 
			 
				
			}
			
			
			
		 
		
			 
		
	}
		
		 else
		 {
			 
			 RequestDispatcher rd=req.getRequestDispatcher("index.jsp?no=3");
				rd.forward(req, resp); 
			 
		 }
	}
}
