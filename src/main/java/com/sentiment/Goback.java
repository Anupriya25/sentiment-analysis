package com.sentiment;



import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Goback extends HttpServlet
{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		
		
		String action = req.getParameter("action");
		
		
		if (action.equals("get"))
		{
			
			RequestDispatcher rd = req.getRequestDispatcher("/jsp/homeee.jsp");
			rd.forward(req, resp);

		} 
		
	}

}
