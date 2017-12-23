package com.dataa;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.jdbc.JDBCCategoryDataset;





public class Barchart extends HttpServlet
{	
	private static final long serialVersionUID = 1L;
	private Connection dbConnection = null;

	public Barchart()
	{
        dbConnection = Bardao.getConnection();
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
		
		int no=Integer.parseInt(request.getParameter("no"));
		
		System.out.println("action is >>>>>>>>>>>>>"+no);
		

		if(no==1)
		{
			System.out.println("===================================");
			RequestDispatcher rd=request.getRequestDispatcher("/jsp/graph.jsp");
			rd.forward(request, response);
			
		}
		
		
		if(no==2)
		
		{
		
		
			System.out.println("===================================");
			JDBCCategoryDataset dataset = new JDBCCategoryDataset(dbConnection);
	    
			try 
		    {
		    	dataset.executeQuery("select college,positive_count,negative_count,neutral_count,undecidable_count,totalcount from m_sentiment");
		    	
		    	System.out.println("select college,positive_count,negative_count,neutral_count,undecidable_count,totalcount from m_sentiment");
		    
		    	JFreeChart chart = ChartFactory.createBarChart3D("Tweet Efficiency", "College", "Tweets",
		           dataset, PlotOrientation.VERTICAL, false, true, false);           
		           chart.setBorderVisible(true);
		    
			    if (chart != null) 
			    {
			            int width = 600;
			            int height = 600;
			            response.setContentType("image/jpeg");
			            OutputStream out = response.getOutputStream();
			            ChartUtilities.writeChartAsJPEG(out, chart, width, height);
			     }
		    }
		    catch (SQLException e) 
		    {
		            System.err.println(e.getMessage());
		    }
	
		    
		  /*  RequestDispatcher rd=request.getRequestDispatcher("/jsp/graph2.jsp?no=7");
			rd.forward(request, response);*/
		    
		    
		
  }
}}
